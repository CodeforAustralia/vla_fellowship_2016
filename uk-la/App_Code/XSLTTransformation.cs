using System;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Xsl;
using System.Collections;
using System.IO;
using System.Text;

using Saxon.Api;

namespace XsltTransformation {

  public class XsltTransform {

      /// <summary>
      /// A generic XSL Transformation [v2.0] Class for use in ASP.NET pages
      /// </summary>

      public static string TransformXml2(string xmlPath, string xsltPath, Hashtable xsltParams, string output)
      {

          StringBuilder sb = new StringBuilder();
          StringWriter sw = new StringWriter(sb);

          try
          {
              // Create a Processor instance.
              Processor processor = new Processor();

              // Load the source document.
              XdmNode input = processor.NewDocumentBuilder().Build(new Uri(xmlPath));

              // Create a transformer for the stylesheet.
              XsltTransformer transformer = processor.NewXsltCompiler().Compile(new Uri(xsltPath)).Load();

              // Set the root node of the source document to be the initial context node.
              transformer.InitialContextNode = input;

              // BaseOutputUri is only necessary for xsl:result-document (might be able to use xsl:result-document for alternative file output)
              transformer.BaseOutputUri = new Uri(xsltPath);

              //Fill XsltArgumentList if necessary - taken from key/value pairs in the hashtable
              if (xsltParams != null)
              {
                  IDictionaryEnumerator pEnumerator = xsltParams.GetEnumerator();
                  while (pEnumerator.MoveNext())
                  {
                      transformer.SetParameter(new QName("", "", pEnumerator.Key.ToString()), new XdmAtomicValue(pEnumerator.Value.ToString()));
                  }
              }

              // Create a serializer and run it over the result of the transform.
              Serializer serializer = new Serializer();
              serializer.SetOutputWriter(sw);
              transformer.Run(serializer);

              // Output method (though keep in mind this can't be written to a file if using ASP.net controls because it is not yet processed)
              if (output == "file")
              {
                  TextWriter w = new StreamWriter(@"c:\inetpub\wwwroot\output.html");
                  w.Write(sb.ToString());
                  w.Close();
              }

              return sb.ToString();
          }

          catch (Exception exp)
          {
              return exp.ToString();
          }
          finally {
              sw.Close();
          }
      }




      /// <summary>
      /// A generic XSL Transformation [v1.0] Class for use in ASP.NET pages
      /// </summary>

      public static string TransformXml(string xmlPath, string xsltPath, Hashtable xsltParams, Hashtable xsltObjects, string output)
      {

      StringBuilder sb = new StringBuilder();
      StringWriter sw = new StringWriter(sb);

          try
          {
                XPathDocument doc = new XPathDocument(xmlPath);
                XsltArgumentList args = new XsltArgumentList();

                // Create the XsltSettings object with script enabled.
                XsltSettings settings = new XsltSettings(false, true);
                settings.EnableDocumentFunction = true;

                XslCompiledTransform xslDoc = new XslCompiledTransform();
                xslDoc.Load(xsltPath, settings, new XmlUrlResolver());

                //Fill XsltArgumentList if necessary - taken from key/value pairs in the hashtable
                if (xsltParams != null) {
                  IDictionaryEnumerator pEnumerator = xsltParams.GetEnumerator();
                  while (pEnumerator.MoveNext()) {
                      args.AddParam(pEnumerator.Key.ToString(),"", pEnumerator.Value);
                  }
                }

                //Fill XSL objects - not used this so pass through null
                if (xsltObjects != null) {
                  IDictionaryEnumerator pEnumerator = xsltObjects.GetEnumerator();
                  while (pEnumerator.MoveNext()) {
                      args.AddExtensionObject(pEnumerator.Key.ToString(), pEnumerator.Value);
                  }
                }

               xslDoc.Transform(doc,args,sw);

                if (output == "file")
                {
                   TextWriter w = new StreamWriter(@"c:\output.html");
                    w.Write(sb.ToString());
                    w.Close();
                }

                return sb.ToString();
          } 
          catch (Exception exp)
          {
            return exp.ToString();
          } 
          finally
          {
            sw.Close();
          }
    }






  } //XsltTransform
} // XsltTransformation namespace