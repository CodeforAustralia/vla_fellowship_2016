using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml;
using System.Xml.Linq;
using System.Xml.XPath;
using System.Xml.Xsl;
using XsltTransformation;

public partial class cla : System.Web.UI.Page
{

    protected void Page_Init(object sender, EventArgs e) {

        string xmlPath = Server.MapPath("housing.xml");  
        string xslPath = Server.MapPath("cla.xsl");
        Hashtable xsltParams = new Hashtable();

	// the following functions build each section in turn
		
	    build(Server.MapPath("housing.xml"), xslPath, "housing");  
        build(Server.MapPath("debt.xml"), xslPath, "debt");
	    build(Server.MapPath("discrimination.xml"), xslPath, "discrimination");
        build(Server.MapPath("consumer.xml"), xslPath, "consumer");
        build(Server.MapPath("education.xml"), xslPath, "education");
        build(Server.MapPath("employment.xml"), xslPath, "employment");  
        build(Server.MapPath("family.xml"), xslPath, "family");          
        build(Server.MapPath("immigration.xml"), xslPath, "immigration");
        build(Server.MapPath("welfare.xml"), xslPath, "welfare");
          
        if (Context.Request.QueryString["id"] != null) {
            xsltParams.Add("id", Context.Request.QueryString["id"]);
        } else {
            xsltParams.Add("id", "index"); //will render pre-start page
        }

        if (Context.Request.QueryString["id1"] != null) {
            xsltParams.Add("id1", Context.Request.QueryString["id1"]);
        }
        if (Context.Request.QueryString["a1"] != null){
            xsltParams.Add("a1", Context.Request.QueryString["a1"]);
        }
        if (Context.Request.QueryString["id2"] != null) {
            xsltParams.Add("id2", Context.Request.QueryString["id2"]);
        }
        if (Context.Request.QueryString["a2"] != null){
            xsltParams.Add("a2", Context.Request.QueryString["a2"]);    
        }
        if (Context.Request.QueryString["id3"] != null) {
            xsltParams.Add("id3", Context.Request.QueryString["id3"]);
        }
        if (Context.Request.QueryString["a3"] != null){
            xsltParams.Add("a3", Context.Request.QueryString["a3"]);
        }
        if (Context.Request.QueryString["id4"] != null) {
            xsltParams.Add("id4", Context.Request.QueryString["id4"]);
        }
        if (Context.Request.QueryString["a4"] != null){
            xsltParams.Add("a4", Context.Request.QueryString["a4"]);
        }
        if (Context.Request.QueryString["id5"] != null) {
            xsltParams.Add("id5", Context.Request.QueryString["id5"]);
        }
        if (Context.Request.QueryString["a5"] != null){
            xsltParams.Add("a5", Context.Request.QueryString["a5"]);
        }
        if (Context.Request.QueryString["id6"] != null) {
            xsltParams.Add("id6", Context.Request.QueryString["id6"]);
        }
        if (Context.Request.QueryString["a6"] != null){
            xsltParams.Add("a6", Context.Request.QueryString["a6"]);
        }
        if (Context.Request.QueryString["id7"] != null) {
            xsltParams.Add("id7", Context.Request.QueryString["id7"]);
        }
        if (Context.Request.QueryString["a7"] != null){
            xsltParams.Add("a7", Context.Request.QueryString["a7"]);
        }
        if (Context.Request.QueryString["id8"] != null) {
            xsltParams.Add("id8", Context.Request.QueryString["id8"]);
        }
        if (Context.Request.QueryString["a8"] != null){
            xsltParams.Add("a8", Context.Request.QueryString["a8"]);
        }
        if (Context.Request.QueryString["id9"] != null) {
            xsltParams.Add("id9", Context.Request.QueryString["id9"]);
        }
        if (Context.Request.QueryString["a9"] != null){
            xsltParams.Add("a9", Context.Request.QueryString["a9"]);
        }
        if (Context.Request.QueryString["id10"] != null) {
            xsltParams.Add("id10", Context.Request.QueryString["id10"]);
        }
        if (Context.Request.QueryString["a10"] != null){
            xsltParams.Add("a10", Context.Request.QueryString["a10"]);
        }
        if (Context.Request.QueryString["id11"] != null) {
            xsltParams.Add("id11", Context.Request.QueryString["id11"]);
        }
        if (Context.Request.QueryString["a11"] != null){
            xsltParams.Add("a11", Context.Request.QueryString["a11"]);
        }
        if (Context.Request.QueryString["id12"] != null) {
            xsltParams.Add("id12", Context.Request.QueryString["id12"]);
        }
        if (Context.Request.QueryString["a12"] != null){
            xsltParams.Add("a12", Context.Request.QueryString["a12"]);
        }
        if (Context.Request.QueryString["id13"] != null) {
            xsltParams.Add("id13", Context.Request.QueryString["id13"]);
        }
        if (Context.Request.QueryString["a13"] != null){
            xsltParams.Add("a13", Context.Request.QueryString["a13"]);
        }
        if (Context.Request.QueryString["id14"] != null) {
            xsltParams.Add("id14", Context.Request.QueryString["id14"]);
        }
        if (Context.Request.QueryString["a14"] != null){
            xsltParams.Add("a14", Context.Request.QueryString["a14"]);
        }
        if (Context.Request.QueryString["id15"] != null) {
            xsltParams.Add("id15", Context.Request.QueryString["id15"]);
        }
        if (Context.Request.QueryString["a15"] != null){
            xsltParams.Add("a15", Context.Request.QueryString["a15"]);
        }

        //DO XSLT 2.0 TRANSFORM
        string result1 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");

        Response.Write(result1);
    }

    protected void build(string xmlPath, string xslPath, string filePathString) {

        string filePath = filePathString;

        Hashtable xsltParams = new Hashtable();
        xsltParams.Add("id", filePathString);
        xsltParams.Add("id1", "q1");

        string firstContent = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
        makeFile(filePath + "/index.html", firstContent);

        XmlDocument doc = new XmlDocument();
        doc.Load(xmlPath);
        XmlElement root = doc.DocumentElement;

        XmlNode Question1 = root.SelectSingleNode("//*[@id = 'q1']");
        XmlNodeList targets = Question1.SelectNodes("options/option");

        foreach (XmlNode node in targets)
        {
            xsltParams.Clear();
            filePath = "/" + filePathString + "/" + node.Attributes["value"].Value + "/";
            string id1 = "q1";
            string a1 = node.Attributes["value"].Value;
            string id2 = node.Attributes["target"].Value;
            xsltParams.Add("id", filePathString);
            xsltParams.Add("id1", id1);
            xsltParams.Add("a1", a1);
            xsltParams.Add("id2", id2);
            string content = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
            makeFile(filePath + "index.html", content);

            XmlNode Question2 = root.SelectSingleNode("//*[@id = '" + node.Attributes["target"].Value + "']");
            XmlNodeList targets2 = Question2.SelectNodes("options/option");
            foreach (XmlNode node2 in targets2)
            {
                xsltParams.Clear();
                string filePath2 = filePath + node2.Attributes["value"].Value + "/";
                string a2 = node2.Attributes["value"].Value;
                string id3 = node2.Attributes["target"].Value;
                xsltParams.Add("id", filePathString);
                xsltParams.Add("id1", id1);
                xsltParams.Add("a1", a1);
                xsltParams.Add("id2", id2);
                xsltParams.Add("a2", a2);
                xsltParams.Add("id3", id3);
                string content2 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                makeFile(filePath2 + "index.html", content2);

                XmlNode Question3 = root.SelectSingleNode("//*[@id = '" + node2.Attributes["target"].Value + "']");
                XmlNodeList targets3 = Question3.SelectNodes("options/option");
                foreach (XmlNode node3 in targets3)
                {
                    xsltParams.Clear();
                    string filePath3 = filePath2 + node3.Attributes["value"].Value + "/";
                    string a3 = node3.Attributes["value"].Value;
                    string id4 = node3.Attributes["target"].Value;
                    xsltParams.Add("id", filePathString);
                    xsltParams.Add("id1", id1);
                    xsltParams.Add("a1", a1);
                    xsltParams.Add("id2", id2);
                    xsltParams.Add("a2", a2);
                    xsltParams.Add("id3", id3);
                    xsltParams.Add("a3", a3);
                    xsltParams.Add("id4", id4);
                    string content3 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                    makeFile(filePath3 + "index.html", content3);

                    XmlNode Question4 = root.SelectSingleNode("//*[@id = '" + node3.Attributes["target"].Value + "']");
                    XmlNodeList targets4 = Question4.SelectNodes("options/option");
                    foreach (XmlNode node4 in targets4)
                    {
                        xsltParams.Clear();
                        string filePath4 = filePath3 + node4.Attributes["value"].Value + "/";
                        string a4 = node4.Attributes["value"].Value;
                        string id5 = node4.Attributes["target"].Value;
                        xsltParams.Add("id", filePathString);
                        xsltParams.Add("id1", id1);
                        xsltParams.Add("a1", a1);
                        xsltParams.Add("id2", id2);
                        xsltParams.Add("a2", a2);
                        xsltParams.Add("id3", id3);
                        xsltParams.Add("a3", a3);
                        xsltParams.Add("id4", id4);
                        xsltParams.Add("a4", a4);
                        xsltParams.Add("id5", id5);
                        string content4 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                        makeFile(filePath4 + "index.html", content4);

                        XmlNode Question5 = root.SelectSingleNode("//*[@id = '" + node4.Attributes["target"].Value + "']");
                        XmlNodeList targets5 = Question5.SelectNodes("options/option");
                        foreach (XmlNode node5 in targets5)
                        {
                            xsltParams.Clear();
                            string filePath5 = filePath4 + node5.Attributes["value"].Value + "/";
                            string a5 = node5.Attributes["value"].Value;
                            string id6 = node5.Attributes["target"].Value;
                            xsltParams.Add("id", filePathString);
                            xsltParams.Add("id1", id1);
                            xsltParams.Add("a1", a1);
                            xsltParams.Add("id2", id2);
                            xsltParams.Add("a2", a2);
                            xsltParams.Add("id3", id3);
                            xsltParams.Add("a3", a3);
                            xsltParams.Add("id4", id4);
                            xsltParams.Add("a4", a4);
                            xsltParams.Add("id5", id5);
                            xsltParams.Add("a5", a5);
                            xsltParams.Add("id6", id6);
                            string content5 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                            makeFile(filePath5 + "index.html", content5);

                            XmlNode Question6 = root.SelectSingleNode("//*[@id = '" + node5.Attributes["target"].Value + "']");
                            XmlNodeList targets6 = Question6.SelectNodes("options/option");
                            foreach (XmlNode node6 in targets6)
                            {
                                xsltParams.Clear();
                                string filePath6 = filePath5 + node6.Attributes["value"].Value + "/";
                                string a6 = node6.Attributes["value"].Value;
                                string id7 = node6.Attributes["target"].Value;
                                xsltParams.Add("id", filePathString);
                                xsltParams.Add("id1", id1);
                                xsltParams.Add("a1", a1);
                                xsltParams.Add("id2", id2);
                                xsltParams.Add("a2", a2);
                                xsltParams.Add("id3", id3);
                                xsltParams.Add("a3", a3);
                                xsltParams.Add("id4", id4);
                                xsltParams.Add("a4", a4);
                                xsltParams.Add("id5", id5);
                                xsltParams.Add("a5", a5);
                                xsltParams.Add("id6", id6);
                                xsltParams.Add("a6", a6);
                                xsltParams.Add("id7", id7);
                                string content6 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                makeFile(filePath6 + "index.html", content6);

                                XmlNode Question7 = root.SelectSingleNode("//*[@id = '" + node6.Attributes["target"].Value + "']");
                                XmlNodeList targets7 = Question7.SelectNodes("options/option");
                                foreach (XmlNode node7 in targets7)
                                {
                                    xsltParams.Clear();
                                    string filePath7 = filePath6 + node7.Attributes["value"].Value + "/";
                                    string a7 = node7.Attributes["value"].Value;
                                    string id8 = node7.Attributes["target"].Value;
                                    xsltParams.Add("id", filePathString);
                                    xsltParams.Add("id1", id1);
                                    xsltParams.Add("a1", a1);
                                    xsltParams.Add("id2", id2);
                                    xsltParams.Add("a2", a2);
                                    xsltParams.Add("id3", id3);
                                    xsltParams.Add("a3", a3);
                                    xsltParams.Add("id4", id4);
                                    xsltParams.Add("a4", a4);
                                    xsltParams.Add("id5", id5);
                                    xsltParams.Add("a5", a5);
                                    xsltParams.Add("id6", id6);
                                    xsltParams.Add("a6", a6);
                                    xsltParams.Add("id7", id7);
                                    xsltParams.Add("a7", a7);
                                    xsltParams.Add("id8", id8);
                                    string content7 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                    makeFile(filePath7 + "index.html", content7);

                                    XmlNode Question8 = root.SelectSingleNode("//*[@id = '" + node7.Attributes["target"].Value + "']");
                                    XmlNodeList targets8 = Question8.SelectNodes("options/option");
                                    foreach (XmlNode node8 in targets8)
                                    {
                                        xsltParams.Clear();
                                        string filePath8 = filePath7 + node8.Attributes["value"].Value + "/";
                                        string a8 = node8.Attributes["value"].Value;
                                        string id9 = node8.Attributes["target"].Value;
                                        xsltParams.Add("id", filePathString);
                                        xsltParams.Add("id1", id1);
                                        xsltParams.Add("a1", a1);
                                        xsltParams.Add("id2", id2);
                                        xsltParams.Add("a2", a2);
                                        xsltParams.Add("id3", id3);
                                        xsltParams.Add("a3", a3);
                                        xsltParams.Add("id4", id4);
                                        xsltParams.Add("a4", a4);
                                        xsltParams.Add("id5", id5);
                                        xsltParams.Add("a5", a5);
                                        xsltParams.Add("id6", id6);
                                        xsltParams.Add("a6", a6);
                                        xsltParams.Add("id7", id7);
                                        xsltParams.Add("a7", a7);
                                        xsltParams.Add("id8", id8);
                                        xsltParams.Add("a8", a8);
                                        xsltParams.Add("id9", id9);
                                        string content8 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                        makeFile(filePath8 + "index.html", content8);

                                        XmlNode Question9 = root.SelectSingleNode("//*[@id = '" + node8.Attributes["target"].Value + "']");
                                        XmlNodeList targets9 = Question9.SelectNodes("options/option");
                                        foreach (XmlNode node9 in targets9)
                                        {
                                            xsltParams.Clear();
                                            string filePath9 = filePath8 + node9.Attributes["value"].Value + "/";
                                            string a9 = node9.Attributes["value"].Value;
                                            string id10 = node9.Attributes["target"].Value;
                                            xsltParams.Add("id", filePathString);
                                            xsltParams.Add("id1", id1);
                                            xsltParams.Add("a1", a1);
                                            xsltParams.Add("id2", id2);
                                            xsltParams.Add("a2", a2);
                                            xsltParams.Add("id3", id3);
                                            xsltParams.Add("a3", a3);
                                            xsltParams.Add("id4", id4);
                                            xsltParams.Add("a4", a4);
                                            xsltParams.Add("id5", id5);
                                            xsltParams.Add("a5", a5);
                                            xsltParams.Add("id6", id6);
                                            xsltParams.Add("a6", a6);
                                            xsltParams.Add("id7", id7);
                                            xsltParams.Add("a7", a7);
                                            xsltParams.Add("id8", id8);
                                            xsltParams.Add("a8", a8);
                                            xsltParams.Add("id9", id9);
                                            xsltParams.Add("a9", a9);
                                            xsltParams.Add("id10", id10);
                                            string content9 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                            makeFile(filePath9 + "index.html", content9);

                                            XmlNode Question10 = root.SelectSingleNode("//*[@id = '" + node9.Attributes["target"].Value + "']");
                                            XmlNodeList targets10 = Question10.SelectNodes("options/option");
                                            foreach (XmlNode node10 in targets10)
                                            {
                                                xsltParams.Clear();
                                                string filePath10 = filePath9 + node10.Attributes["value"].Value + "/";
                                                string a10 = node10.Attributes["value"].Value;
                                                string id11 = node10.Attributes["target"].Value;
                                                xsltParams.Add("id", filePathString);
                                                xsltParams.Add("id1", id1);
                                                xsltParams.Add("a1", a1);
                                                xsltParams.Add("id2", id2);
                                                xsltParams.Add("a2", a2);
                                                xsltParams.Add("id3", id3);
                                                xsltParams.Add("a3", a3);
                                                xsltParams.Add("id4", id4);
                                                xsltParams.Add("a4", a4);
                                                xsltParams.Add("id5", id5);
                                                xsltParams.Add("a5", a5);
                                                xsltParams.Add("id6", id6);
                                                xsltParams.Add("a6", a6);
                                                xsltParams.Add("id7", id7);
                                                xsltParams.Add("a7", a7);
                                                xsltParams.Add("id8", id8);
                                                xsltParams.Add("a8", a8);
                                                xsltParams.Add("id9", id9);
                                                xsltParams.Add("a9", a9);
                                                xsltParams.Add("id10", id10);
                                                xsltParams.Add("a10", a10);
                                                xsltParams.Add("id11", id11);
                                                string content10 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                                makeFile(filePath10 + "index.html", content10);

                                                XmlNode Question11 = root.SelectSingleNode("//*[@id = '" + node10.Attributes["target"].Value + "']");
                                                XmlNodeList targets11 = Question11.SelectNodes("options/option");
                                                foreach (XmlNode node11 in targets11)
                                                {
                                                    xsltParams.Clear();
                                                    string filePath11 = filePath10 + node11.Attributes["value"].Value + "/";
                                                    string a11 = node11.Attributes["value"].Value;
                                                    string id12 = node11.Attributes["target"].Value;
                                                    xsltParams.Add("id", filePathString);
                                                    xsltParams.Add("id1", id1);
                                                    xsltParams.Add("a1", a1);
                                                    xsltParams.Add("id2", id2);
                                                    xsltParams.Add("a2", a2);
                                                    xsltParams.Add("id3", id3);
                                                    xsltParams.Add("a3", a3);
                                                    xsltParams.Add("id4", id4);
                                                    xsltParams.Add("a4", a4);
                                                    xsltParams.Add("id5", id5);
                                                    xsltParams.Add("a5", a5);
                                                    xsltParams.Add("id6", id6);
                                                    xsltParams.Add("a6", a6);
                                                    xsltParams.Add("id7", id7);
                                                    xsltParams.Add("a7", a7);
                                                    xsltParams.Add("id8", id8);
                                                    xsltParams.Add("a8", a8);
                                                    xsltParams.Add("id9", id9);
                                                    xsltParams.Add("a9", a9);
                                                    xsltParams.Add("id10", id10);
                                                    xsltParams.Add("a10", a10);
                                                    xsltParams.Add("id11", id11);
                                                    xsltParams.Add("a11", a11);
                                                    xsltParams.Add("id12", id12);
                                                    string content11 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                                    makeFile(filePath11 + "index.html", content11);

                                                    XmlNode Question12 = root.SelectSingleNode("//*[@id = '" + node11.Attributes["target"].Value + "']");
                                                    XmlNodeList targets12 = Question12.SelectNodes("options/option");
                                                    foreach (XmlNode node12 in targets12)
                                                    {
                                                        xsltParams.Clear();
                                                        string filePath12 = filePath11 + node12.Attributes["value"].Value + "/";
                                                        string a12 = node12.Attributes["value"].Value;
                                                        string id13 = node12.Attributes["target"].Value;
                                                        xsltParams.Add("id", filePathString);
                                                        xsltParams.Add("id1", id1);
                                                        xsltParams.Add("a1", a1);
                                                        xsltParams.Add("id2", id2);
                                                        xsltParams.Add("a2", a2);
                                                        xsltParams.Add("id3", id3);
                                                        xsltParams.Add("a3", a3);
                                                        xsltParams.Add("id4", id4);
                                                        xsltParams.Add("a4", a4);
                                                        xsltParams.Add("id5", id5);
                                                        xsltParams.Add("a5", a5);
                                                        xsltParams.Add("id6", id6);
                                                        xsltParams.Add("a6", a6);
                                                        xsltParams.Add("id7", id7);
                                                        xsltParams.Add("a7", a7);
                                                        xsltParams.Add("id8", id8);
                                                        xsltParams.Add("a8", a8);
                                                        xsltParams.Add("id9", id9);
                                                        xsltParams.Add("a9", a9);
                                                        xsltParams.Add("id10", id10);
                                                        xsltParams.Add("a10", a10);
                                                        xsltParams.Add("id11", id11);
                                                        xsltParams.Add("a11", a11);
                                                        xsltParams.Add("id12", id12);
                                                        xsltParams.Add("a12", a12);
                                                        xsltParams.Add("id13", id13);
                                                        string content12 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                                        makeFile(filePath12 + "index.html", content12);

                                                        XmlNode Question13 = root.SelectSingleNode("//*[@id = '" + node12.Attributes["target"].Value + "']");
                                                        XmlNodeList targets13 = Question13.SelectNodes("options/option");
                                                        foreach (XmlNode node13 in targets13)
                                                        {
                                                            xsltParams.Clear();
                                                            string filePath13 = filePath12 + node13.Attributes["value"].Value + "/";
                                                            string a13 = node13.Attributes["value"].Value;
                                                            string id14 = node13.Attributes["target"].Value;
                                                            xsltParams.Add("id", filePathString);
                                                            xsltParams.Add("id1", id1);
                                                            xsltParams.Add("a1", a1);
                                                            xsltParams.Add("id2", id2);
                                                            xsltParams.Add("a2", a2);
                                                            xsltParams.Add("id3", id3);
                                                            xsltParams.Add("a3", a3);
                                                            xsltParams.Add("id4", id4);
                                                            xsltParams.Add("a4", a4);
                                                            xsltParams.Add("id5", id5);
                                                            xsltParams.Add("a5", a5);
                                                            xsltParams.Add("id6", id6);
                                                            xsltParams.Add("a6", a6);
                                                            xsltParams.Add("id7", id7);
                                                            xsltParams.Add("a7", a7);
                                                            xsltParams.Add("id8", id8);
                                                            xsltParams.Add("a8", a8);
                                                            xsltParams.Add("id9", id9);
                                                            xsltParams.Add("a9", a9);
                                                            xsltParams.Add("id10", id10);
                                                            xsltParams.Add("a10", a10);
                                                            xsltParams.Add("id11", id11);
                                                            xsltParams.Add("a11", a11);
                                                            xsltParams.Add("id12", id12);
                                                            xsltParams.Add("a12", a12);
                                                            xsltParams.Add("id13", id13);
                                                            xsltParams.Add("a13", a13);
                                                            xsltParams.Add("id14", id14);
                                                            string content13 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                                            makeFile(filePath13 + "index.html", content13);

                                                            XmlNode Question14 = root.SelectSingleNode("//*[@id = '" + node13.Attributes["target"].Value + "']");
                                                            XmlNodeList targets14 = Question14.SelectNodes("options/option");
                                                            foreach (XmlNode node14 in targets14)
                                                            {
                                                                xsltParams.Clear();
                                                                string filePath14 = filePath13 + node14.Attributes["value"].Value + "/";
                                                                string a14 = node14.Attributes["value"].Value;
                                                                string id15 = node14.Attributes["target"].Value;
                                                                xsltParams.Add("id", filePathString);
                                                                xsltParams.Add("id1", id1);
                                                                xsltParams.Add("a1", a1);
                                                                xsltParams.Add("id2", id2);
                                                                xsltParams.Add("a2", a2);
                                                                xsltParams.Add("id3", id3);
                                                                xsltParams.Add("a3", a3);
                                                                xsltParams.Add("id4", id4);
                                                                xsltParams.Add("a4", a4);
                                                                xsltParams.Add("id5", id5);
                                                                xsltParams.Add("a5", a5);
                                                                xsltParams.Add("id6", id6);
                                                                xsltParams.Add("a6", a6);
                                                                xsltParams.Add("id7", id7);
                                                                xsltParams.Add("a7", a7);
                                                                xsltParams.Add("id8", id8);
                                                                xsltParams.Add("a8", a8);
                                                                xsltParams.Add("id9", id9);
                                                                xsltParams.Add("a9", a9);
                                                                xsltParams.Add("id10", id10);
                                                                xsltParams.Add("a10", a10);
                                                                xsltParams.Add("id11", id11);
                                                                xsltParams.Add("a11", a11);
                                                                xsltParams.Add("id12", id12);
                                                                xsltParams.Add("a12", a12);
                                                                xsltParams.Add("id13", id13);
                                                                xsltParams.Add("a13", a13);
                                                                xsltParams.Add("id14", id14);
                                                                xsltParams.Add("a14", a14);
                                                                xsltParams.Add("id15", id15);
                                                                string content14 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                                                makeFile(filePath14 + "index.html", content14);

                                                                XmlNode Question15 = root.SelectSingleNode("//*[@id = '" + node14.Attributes["target"].Value + "']");
                                                                XmlNodeList targets15 = Question15.SelectNodes("options/option");
                                                                foreach (XmlNode node15 in targets15)
                                                                {
                                                                    xsltParams.Clear();
                                                                    string filePath15 = filePath14 + node15.Attributes["value"].Value + "/";
                                                                    string a15 = node15.Attributes["value"].Value;
                                                                    xsltParams.Add("id", filePathString);
                                                                    xsltParams.Add("id1", id1);
                                                                    xsltParams.Add("a1", a1);
                                                                    xsltParams.Add("id2", id2);
                                                                    xsltParams.Add("a2", a2);
                                                                    xsltParams.Add("id3", id3);
                                                                    xsltParams.Add("a3", a3);
                                                                    xsltParams.Add("id4", id4);
                                                                    xsltParams.Add("a4", a4);
                                                                    xsltParams.Add("id5", id5);
                                                                    xsltParams.Add("a5", a5);
                                                                    xsltParams.Add("id6", id6);
                                                                    xsltParams.Add("a6", a6);
                                                                    xsltParams.Add("id7", id7);
                                                                    xsltParams.Add("a7", a7);
                                                                    xsltParams.Add("id8", id8);
                                                                    xsltParams.Add("a8", a8);
                                                                    xsltParams.Add("id9", id9);
                                                                    xsltParams.Add("a9", a9);
                                                                    xsltParams.Add("id10", id10);
                                                                    xsltParams.Add("a10", a10);
                                                                    xsltParams.Add("id11", id11);
                                                                    xsltParams.Add("a11", a11);
                                                                    xsltParams.Add("id12", id12);
                                                                    xsltParams.Add("a12", a12);
                                                                    xsltParams.Add("id13", id13);
                                                                    xsltParams.Add("a13", a13);
                                                                    xsltParams.Add("id14", id14);
                                                                    xsltParams.Add("a14", a14);
                                                                    xsltParams.Add("id15", id15);
                                                                    xsltParams.Add("a15", a15);
                                                                    string content15 = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
                                                                    makeFile(filePath15 + "index.html", content15);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }



            //iterate(xmlPath, xslPath, root, root.SelectSingleNode("//*[@id = '" + node.Attributes["target"].Value + "']"), xsltParams, filePath);
        }
    }
	
	//this function is not used. it was originally intended to add params dynamically to the hashtable depending on the depth...
    protected void iterate(string xmlPath, string xslPath, XmlElement root, XmlNode nodeTarget, Hashtable xsltParams, string filePath) {
        XmlNodeList targets = nodeTarget.SelectNodes("options/option");

        foreach (XmlNode node in targets) {
            filePath = filePath + node.Attributes["value"].Value + "/";
            string content = XsltTransform.TransformXml2(xmlPath, xslPath, xsltParams, "screen");
            makeFile(filePath + "index.html", content);
            iterate(xmlPath, xslPath, root, root.SelectSingleNode("//*[@id = '" + node.Attributes["target"].Value + "']"), xsltParams, filePath);
        }

    }

    protected void makeFile(string filePath, string content) {
        System.IO.FileInfo file = new System.IO.FileInfo(Server.MapPath(filePath));
        file.Directory.Create();
        System.IO.File.WriteAllText(file.FullName, content);
    }

}