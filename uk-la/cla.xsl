<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="utf-8" omit-xml-declaration="yes" indent="yes" />

    <xsl:param name="id"/>
    <xsl:param name="id1"/>
    <xsl:param name="id2"/>
    <xsl:param name="id3"/>
    <xsl:param name="id4"/>
    <xsl:param name="id5"/>
    <xsl:param name="id6"/>
    <xsl:param name="id7"/>
    <xsl:param name="id8"/>
    <xsl:param name="id9"/>
    <xsl:param name="id10"/>
    <xsl:param name="id11"/>
    <xsl:param name="id12"/>
    <xsl:param name="id13"/>
    <xsl:param name="id14"/>
    <xsl:param name="id15"/>
    <xsl:param name="a1"/>
    <xsl:param name="a2"/>
    <xsl:param name="a3"/>
    <xsl:param name="a4"/>
    <xsl:param name="a5"/>
    <xsl:param name="a6"/>
    <xsl:param name="a7"/>
    <xsl:param name="a8"/>
    <xsl:param name="a9"/>
    <xsl:param name="a10"/>
    <xsl:param name="a11"/>
    <xsl:param name="a12"/>
    <xsl:param name="a13"/>
    <xsl:param name="a14"/>
    <xsl:param name="a15"/>
    <xsl:param name="question_number"><xsl:call-template name="question_number" /></xsl:param>
    <xsl:param name="focus"><xsl:call-template name="focus" /></xsl:param>

    <xsl:template match="/">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>

        <xsl:call-template name="head" />

        <body class="mainstream">
            <script type="text/javascript">document.body.className = ((document.body.className) ? document.body.className + ' js-enabled' : 'js-enabled');</script>
            <a href="#content" class="visuallyhidden">Skip to main content</a>

            <xsl:call-template name="header" />

            <div id="global-cookie-message">
                <p>
                    This website uses cookies to make the site simpler. <a href="http://www.gov.uk/support/cookies">Find out more about cookies</a>
                </p>
            </div>
            <div id="global-breadcrumb" class="header-context">
                <nav role="navigation">
                    <ol class="group">
                        <li>
                            <a href="https://www.gov.uk/">Home</a>
                        </li>
                        <li>
                            <a href="https://www.gov.uk/browse/justice">Crime, justice and the law</a>
                        </li>
                        <li>
                            <strong>
                                <a href="https://www.gov.uk/browse/justice/courts-sentencing-tribunals">Courts, sentencing and tribunals</a>
                            </strong>
                        </li>
                    </ol>
                </nav>
            </div>
            <div id="wrapper" class="answer smart_answer">
                <div class="top-bar"></div>
                <section id="content" role="main" class="group">
                    <header class="page-header group">
                        <hgroup>
                            <h1><span>Service</span> Check if you can get legal aid</h1>
                            
                            <!--<p><xsl:call-template name="vars" /></p>-->
                            
                        </hgroup>
                        <nav class="skip-to-related">
                            <a href="#related">Not what you're looking for? ?</a>
                        </nav>
                    </header>
                    <section class="intro">
                        <div class="get-started-intro">
                            <p>Find out if you can get help paying for legal advice or family mediation.</p>
                        </div>
                    </section>

                    <xsl:if test="$id = 'index'">
                        <xsl:call-template name="index" />
                    </xsl:if>


                    <xsl:if test="$id != 'index'">
                        <div class="done-questions">

                            <xsl:if test="$id != 'start'">
                                <div class="start-again">
                                    <a href="/">Start again</a>
                                </div>
                            </xsl:if>
                  
                            <ol>
                                <xsl:if test="$id != 'start'">
                                    <li class="done">
                                        <h3 class="question">
                                            <span class="question-number">1</span>What kind of problem do you need help with?
                                        </h3>
                                        <div class="answer">
                                            <xsl:value-of select="/category/@name"/>
                                        </div>

                                        <p class="undo">
                                            <a href="/">Change this answer</a>
                                        </p>
                                    </li>
                                </xsl:if>
                                
                                <!-- BACK QUESTION LOGIC -->
                                
                                <xsl:if test="$a1 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="1" /><xsl:with-param name="focus" select="$id1" /><xsl:with-param name="answer" select="$a1" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a2 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="2" /><xsl:with-param name="focus" select="$id2" /><xsl:with-param name="answer" select="$a2" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a3 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="3" /><xsl:with-param name="focus" select="$id3" /><xsl:with-param name="answer" select="$a3" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a4 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="4" /><xsl:with-param name="focus" select="$id4" /><xsl:with-param name="answer" select="$a4" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a5 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="5" /><xsl:with-param name="focus" select="$id5" /><xsl:with-param name="answer" select="$a5" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a6 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="6" /><xsl:with-param name="focus" select="$id6" /><xsl:with-param name="answer" select="$a6" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a7 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="7" /><xsl:with-param name="focus" select="$id7" /><xsl:with-param name="answer" select="$a7" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a8 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="8" /><xsl:with-param name="focus" select="$id8" /><xsl:with-param name="answer" select="$a8" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a9 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="9" /><xsl:with-param name="focus" select="$id9" /><xsl:with-param name="answer" select="$a9" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a10 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="10" /><xsl:with-param name="focus" select="$id10" /><xsl:with-param name="answer" select="$a10" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a11 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="11" /><xsl:with-param name="focus" select="$id11" /><xsl:with-param name="answer" select="$a11" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a12 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="12" /><xsl:with-param name="focus" select="$id12" /><xsl:with-param name="answer" select="$a12" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a13 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="13" /><xsl:with-param name="focus" select="$id13" /><xsl:with-param name="answer" select="$a13" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a14 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="14" /><xsl:with-param name="focus" select="$id14" /><xsl:with-param name="answer" select="$a14" /></xsl:call-template></xsl:if>
                                <xsl:if test="$a15 != ''"><xsl:call-template name="done-question"><xsl:with-param name="num" select="15" /><xsl:with-param name="focus" select="$id15" /><xsl:with-param name="answer" select="$a15" /></xsl:call-template></xsl:if>                            </ol>
                        </div>

                        <a name="c"></a>
                        
                        <!-- IF THIS IS AN OUTCOME OR STILL A QUESTION? -->
                        <xsl:choose>
                            <xsl:when test="contains(//*[@id = $focus]/@id, 'r' )">
                                <xsl:call-template name="outcome"></xsl:call-template>
                            </xsl:when>
                            <xsl:otherwise>
                            
                                <div class="step current">
                                    <form accept-charset="UTF-8" action="/path.aspx" method="post" id="navigator">
                                        <input type="hidden" name="path" id="path">
                                            <xsl:attribute name="value"><xsl:call-template name="path-builder"><xsl:with-param name="num" select="$question_number"></xsl:with-param></xsl:call-template></xsl:attribute>
                                        </input>
                                        <div style="margin:0;padding:0;display:inline">
                                            <input name="utf8" type="hidden" value="✓" />
                                        </div>
                                        <div class="current-question" id="current-question">

                                            <!-- CURRENT QUESTION LOGIC -->
                                    
                                            <xsl:if test="$id1 = ''">
                                                <xsl:call-template name="start" />
                                            </xsl:if>

                                   	        <xsl:call-template name="current-question"><xsl:with-param name="num" select="$question_number" /></xsl:call-template>

                                            <div class="next-question">
                                                <button name="next" type="submit" class="medium button" id="next">Next</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                
                            </xsl:otherwise>
                        </xsl:choose>
                        
                    </xsl:if>
                    
                </section>

                <xsl:if test="$id = 'none' or $id = 'start'">
                    <xsl:call-template name="related" />
                </xsl:if>
                
            </div>

            <xsl:call-template name="footer" />

            <div id="global-app-error" class="app-error hidden"></div>
        </body>
        <xsl:text disable-output-escaping="yes">&lt;/html&gt;</xsl:text>
    </xsl:template>

<!-- CONTENT TEMPLATES -->

    <xsl:template name="outcome">
        
        <div class="article-container">
            <article class="outcome group">
                <div class="inner group">  
                    <div class="result-info">
					
					<!-- ADD OUTCOME TEXT SO THAT CUSTOMVAR CAN BE SENT TO GOOGLE BY AJAX LOADED PAGE -->
					<xsl:if test="contains(//*[@id = $focus]/@id, 'r' )">
					<input type="hidden" id="outcome"><xsl:attribute name="value"><xsl:value-of select="/category/@name" />, <xsl:value-of select="//*[@id = $focus]/@result" /></xsl:attribute></input>
					</xsl:if>

                      <xsl:value-of select="//*[@id = $focus]/word" disable-output-escaping="yes"/>

                        <xsl:if test="//*[@id = $focus]/@postcode != ''">

                            <xsl:choose>
                                <xsl:when test="//*[@id = $focus]/@law-society != ''"> <!-- Law Society provider search -->

                                    <form method="get" class="find-location-for-service" action="http://solicitors.lawsociety.org.uk/search/results">
                                        <fieldset>
                                            <legend><strong>Find a solicitor</strong><br /></legend>
											
                                            <label for="postcode">
                                                Enter a UK postcode
                                                <input class="postcode" id="postcode" name="Location" type="text" placeholder="eg W12 0LL" />

<!-- EDUCATION category required 'Pro' search within Law Society website -->

                                                    <xsl:choose>
                                                        <xsl:when test="/category[@name = 'Education']">
                                                            <input name="Pro" type="hidden" value="True" />
                                                            <input name="AreaOfPractice1" type="hidden" value="EDU" />
                                                            <input name="Type" type="hidden" value="0" />
                                                            <input name="IncludeNlsp" type="hidden" value="True" />
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <input name="Pro" type="hidden" value="False" />
                                                            <select id="AREA" name="UmbrellaLegalIssue" class="dropmenu" style="display:none;">
                                                            <xsl:choose>
                                                                <xsl:when test="/category[@name = 'Consumer']">
                                                                    <option value="LIUCSU">Consumer</option>
                                                                </xsl:when>
                                                                 <xsl:when test="/category[@name = 'Debt']">
                                                                     <option value="LIUMAD">Debt</option>
                                                                </xsl:when>
                                                                 <xsl:when test="/category[@name = 'Employment']">
                                                                     <option value="LIUEMP">Employment</option>
                                                                </xsl:when>
                                                                  <xsl:when test="/category[@name = 'Family']">
                                                                     <option value="LIUFAM">Family</option>
                                                                </xsl:when>
                                                                <xsl:when test="/category[@name = 'Housing']">
                                                                     <option value="LIUPRE">Housing</option>
                                                                </xsl:when>
                                                                <xsl:when test="/category[@name = 'Immigration']">
                                                                     <option value="LIUIMM">Immigration</option>
                                                                </xsl:when>
                                                                 <xsl:when test="/category[@name = 'Welfare benefits']">
                                                                     <option value="LIUSWB">Welfare benefits</option>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                            </select>
                                                        </xsl:otherwise>
                                                    </xsl:choose>

                                            </label>
                                            <input type="submit" value="Find" class="button" />
                                            
                                            <br />

                                            <!-- <img src="/logos/law_society_logo.jpg" /> -->

                                        </fieldset>
                                    </form>

                                </xsl:when>
                                <xsl:otherwise> <!-- Internal provider search -->

                                    <form action="http://find-legal-advice.justice.gov.uk/search.php" method="get" id="local-locator-form" class="find-location-for-service">
                                        <xsl:if test="//*[@id = $focus]/@category">
                                            <input type="hidden" name="legal-aid-contract" value="on" />
                                            <input type="hidden" name="category[]">
                                                <xsl:attribute name="value" select="lower-case(//*[@id = $focus]/@category)" />
                                            </input>
                                        </xsl:if>
                                        <input type="hidden" name="searchtype" value="location" />
                                        <input type="hidden" name="searchbtn" value="" />
                                        <input type="hidden" name="radius" value="20" />

                                        <fieldset>
                                            <legend>Find a legal adviser or family mediator<br /></legend>

                                            <label for="postcode">
                                                Enter a UK postcode
                                                <input class="postcode" id="postcode" name="searchtext" type="text" placeholder="eg W12 0LL" />
                                            </label>

                                            <input type="submit" value="Find" class="button" id="showresults" />

                                        </fieldset>
                                    </form>                                    
                                    
                                </xsl:otherwise>
                            </xsl:choose>

                            <div id="results-intro">
                                <p>These are the nearest organisations to <span></span>:</p>
                            </div>
                            <div id="search-results"></div>
							<div id="search-error"></div>
                            <p id="indicator" style="display:none">Fetching results...</p>
                            <div id="more-results-btn" style="display:none;">
                                <a id="next" href="#">More results</a>
                            </div>
                            


                        </xsl:if>
                    <!--
                        <div class="application-notice info-notice">
                            <p>Student loans have to be paid back - grants do not.</p>
                        </div>
                    -->
                        
                        <xsl:if test="//*[@id = $focus]/footnote != ''">
                            <xsl:value-of select="//*[@id = $focus]/footnote" disable-output-escaping="yes" />
                        </xsl:if>

                    </div>
					
                    <!--
                    <div class="related next-steps">
                        <div class="inner group">
                            <h2>Next steps</h2>
                            <ul>
                                <li>
                                    <p><a href="/student-finance/how-to-apply" title="Apply for student finance">Apply for student finance</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    -->
                </div>

            </article>
        </div>
    </xsl:template>
    
    <xsl:template name="done-question">
    <xsl:param name="num" />
    <xsl:param name="focus" />
    <xsl:param name="answer" />
        <li class="done">
            <h3 class="question">
                <span class="question-number">
                    <xsl:value-of select="$num + 1"/>
                </span>
                <xsl:choose>
                    <xsl:when test="//*[@id = $focus]/word_done">
                        <xsl:value-of select="//*[@id = $focus]/word_done" disable-output-escaping="yes"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="//*[@id = $focus]/word" disable-output-escaping="yes"/>
                    </xsl:otherwise>
                </xsl:choose>
            </h3>

            <div class="answer">
				<xsl:value-of select="translate(concat(' ', $answer), 'yn', 'YN')"/>
            </div>
            <p class="undo">
                <a><xsl:attribute name="href"><xsl:call-template name="path-builder"><xsl:with-param name="num" select="$num"/></xsl:call-template>/</xsl:attribute>Change this answer</a>
            </p>

        </li>
    </xsl:template>    

    <xsl:template name="current-question">
    <xsl:param name="num" />
    <xsl:param name="focus">
        <xsl:call-template name="focus" />
    </xsl:param>
        <h2>
            <span class="question-number">
                <xsl:value-of select="$num + 1"/>
            </span>
            <xsl:value-of select="//*[@id = $focus]/word" disable-output-escaping="yes"/>
        </h2>
        <div class="question-body">
            <xsl:if test="//*[@id = $focus]/hint != ''">
                <p class="hint"><xsl:value-of select="//*[@id = $focus]/hint" disable-output-escaping="yes"/></p>
            </xsl:if>
            <div class="">
                <ul class="options">
                    <xsl:for-each select="//*[@id = $focus]/options/option">
                        <li>
                            <label for="response_{position()}">
                                <input id="response_{position()}" name="response" type="radio" value="{@value}" />
                                <xsl:value-of select="translate(concat(' ', @value), 'yn', 'YN')"/>
                            </label>
                        </li>
                    </xsl:for-each>
                </ul>
            </div>
        </div>
    </xsl:template>

    <xsl:template name="focus">
        <xsl:choose>
            <xsl:when test="$a1 = ''"><xsl:value-of select="$id1"/></xsl:when>
            <xsl:when test="$a2 = ''"><xsl:value-of select="$id2"/></xsl:when>
            <xsl:when test="$a3 = ''"><xsl:value-of select="$id3"/></xsl:when>
            <xsl:when test="$a4 = ''"><xsl:value-of select="$id4"/></xsl:when>
            <xsl:when test="$a5 = ''"><xsl:value-of select="$id5"/></xsl:when>
            <xsl:when test="$a6 = ''"><xsl:value-of select="$id6"/></xsl:when>
            <xsl:when test="$a7 = ''"><xsl:value-of select="$id7"/></xsl:when>
            <xsl:when test="$a8 = ''"><xsl:value-of select="$id8"/></xsl:when>
            <xsl:when test="$a9 = ''"><xsl:value-of select="$id9"/></xsl:when>
            <xsl:when test="$a10 = ''"><xsl:value-of select="$id10"/></xsl:when>
            <xsl:when test="$a11 = ''"><xsl:value-of select="$id11"/></xsl:when>
            <xsl:when test="$a12 = ''"><xsl:value-of select="$id12"/></xsl:when>
            <xsl:when test="$a13 = ''"><xsl:value-of select="$id13"/></xsl:when>
            <xsl:when test="$a14 = ''"><xsl:value-of select="$id14"/></xsl:when>
            <xsl:when test="$a15 = ''"><xsl:value-of select="$id15"/></xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="question_number"><xsl:choose>
            <xsl:when test="$a1 = ''">1</xsl:when>
            <xsl:when test="$a2 = ''">2</xsl:when>
            <xsl:when test="$a3 = ''">3</xsl:when>
            <xsl:when test="$a4 = ''">4</xsl:when>
            <xsl:when test="$a5 = ''">5</xsl:when>
            <xsl:when test="$a6 = ''">6</xsl:when>
            <xsl:when test="$a7 = ''">7</xsl:when>
            <xsl:when test="$a8 = ''">8</xsl:when>
            <xsl:when test="$a9 = ''">9</xsl:when>
            <xsl:when test="$a10 = ''">10</xsl:when>
            <xsl:when test="$a11 = ''">11</xsl:when>
            <xsl:when test="$a12 = ''">12</xsl:when>
            <xsl:when test="$a13 = ''">13</xsl:when>
            <xsl:when test="$a14 = ''">14</xsl:when>
            <xsl:when test="$a15 = ''">15</xsl:when></xsl:choose>        
    </xsl:template>
       
    
    <xsl:template name="path-builder">
    <xsl:param name="num" />/<xsl:value-of select="$id" /><xsl:choose><xsl:when test="$num = '1'"></xsl:when><xsl:otherwise><xsl:if test="$a1 != ''">/</xsl:if></xsl:otherwise></xsl:choose><xsl:choose>
    <xsl:when test="$num = 2"><xsl:value-of select="$a1"/></xsl:when>
    <xsl:when test="$num = 3"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/></xsl:when>
    <xsl:when test="$num = 4"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/></xsl:when>
    <xsl:when test="$num = 5"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/></xsl:when>
    <xsl:when test="$num = 6"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/></xsl:when>
    <xsl:when test="$num = 7"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/></xsl:when>
    <xsl:when test="$num = 8"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/>/<xsl:value-of select="$a7"/></xsl:when>
    <xsl:when test="$num = 9"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/>/<xsl:value-of select="$a7"/>/<xsl:value-of select="$a8"/></xsl:when>
    <xsl:when test="$num = 10"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/>/<xsl:value-of select="$a7"/>/<xsl:value-of select="$a8"/>/<xsl:value-of select="$a9"/></xsl:when>
    <xsl:when test="$num = 11"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/>/<xsl:value-of select="$a7"/>/<xsl:value-of select="$a8"/>/<xsl:value-of select="$a9"/>/<xsl:value-of select="$a10"/></xsl:when>
    <xsl:when test="$num = 12"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/>/<xsl:value-of select="$a7"/>/<xsl:value-of select="$a8"/>/<xsl:value-of select="$a9"/>/<xsl:value-of select="$a10"/>/<xsl:value-of select="$a11"/></xsl:when>
    <xsl:when test="$num = 13"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/>/<xsl:value-of select="$a7"/>/<xsl:value-of select="$a8"/>/<xsl:value-of select="$a9"/>/<xsl:value-of select="$a10"/>/<xsl:value-of select="$a11"/>/<xsl:value-of select="$a12"/></xsl:when>
    <xsl:when test="$num = 14"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/>/<xsl:value-of select="$a7"/>/<xsl:value-of select="$a8"/>/<xsl:value-of select="$a9"/>/<xsl:value-of select="$a10"/>/<xsl:value-of select="$a11"/>/<xsl:value-of select="$a12"/>/<xsl:value-of select="$a13"/></xsl:when>
    <xsl:when test="$num = 15"><xsl:value-of select="$a1"/>/<xsl:value-of select="$a2"/>/<xsl:value-of select="$a3"/>/<xsl:value-of select="$a4"/>/<xsl:value-of select="$a5"/>/<xsl:value-of select="$a6"/>/<xsl:value-of select="$a7"/>/<xsl:value-of select="$a8"/>/<xsl:value-of select="$a9"/>/<xsl:value-of select="$a10"/>/<xsl:value-of select="$a11"/>/<xsl:value-of select="$a12"/>/<xsl:value-of select="$a13"/>/<xsl:value-of select="$a14"/></xsl:when>
        </xsl:choose>
        </xsl:template>

    <!-- DEBUG TEMPLATES -->

    <xsl:template name="vars">
        id: <xsl:value-of select="$id"/><br />
        id1: <xsl:value-of select="$id1"/><br />
        a1: <xsl:value-of select="$a1"/><br />
        id2: <xsl:value-of select="$id2"/><br />
        a2: <xsl:value-of select="$a2"/><br />
        id3: <xsl:value-of select="$id3"/><br />
        a3: <xsl:value-of select="$a3"/><br />
        id4: <xsl:value-of select="$id4"/><br />
        a4: <xsl:value-of select="$a4"/><br />
        id5: <xsl:value-of select="$id5"/><br />
        a5: <xsl:value-of select="$a5"/><br />
        id6: <xsl:value-of select="$id6"/><br />
        a6: <xsl:value-of select="$a6"/><br />
        id7: <xsl:value-of select="$id7"/><br />
        a7: <xsl:value-of select="$a7"/><br />
        id8: <xsl:value-of select="$id8"/><br />
        a8: <xsl:value-of select="$a8"/><br />
        id9: <xsl:value-of select="$id9"/><br />
        a9: <xsl:value-of select="$a9"/><br />
        id10: <xsl:value-of select="$id10"/><br />
        a10: <xsl:value-of select="$a10"/><br />
        id11: <xsl:value-of select="$id11"/><br />
        a11: <xsl:value-of select="$a11"/><br />
        id12: <xsl:value-of select="$id12"/><br />
        a12: <xsl:value-of select="$a12"/><br />
        id13: <xsl:value-of select="$id13"/><br />
        a13: <xsl:value-of select="$a13"/><br />
        id14: <xsl:value-of select="$id14"/><br />
        a14: <xsl:value-of select="$a14"/><br />
        id15: <xsl:value-of select="$id15"/><br />
        a15: <xsl:value-of select="$a15"/><br />
    </xsl:template>    
    
<!-- INDEX AND START TEMPLATES - These are never generated automatically -->

    <xsl:template name="start">
        <h2>
            <p>
                The following pages are not auto-generated:<br />
                /index.html<br />
                /none/index.html
            </p>
        </h2>
    </xsl:template>

    <xsl:template name="index">
        <div class="article-container group">
            <article role="article" class="group">
                <div class="inner">

                    <section class="more">
                        <p>The following pages are not auto-generated:<br />
                        /index.html<br />
                        /none/index.html
                        </p>
                    </section>
                </div>
            </article>
        </div>
    </xsl:template>
    

    <!-- GLOBAL TEMPLATES -->
        
    <xsl:template name="head">

        <xsl:text disable-output-escaping="yes">&lt;!--[if lt IE 9]&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;html class="lte-ie8 " lang="en"&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;![endif]--&gt;</xsl:text>

        <xsl:text disable-output-escaping="yes">&lt;!--[if gt IE 8]&gt;&lt;!--&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;html lang="en" class=""&gt;</xsl:text>
        <xsl:text disable-output-escaping="yes">&lt;!--&lt;![endif]--&gt;</xsl:text><head>
            <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
            <title>Check if you can get legal aid? - <xsl:value-of select="/category/@name" />, question <xsl:value-of select="$question_number + 1" />			
			<xsl:if test="contains(//*[@id = $focus]/@id, 'r' )">, <xsl:choose><xsl:when test="//*[@id = $focus]/@result = 'eligible'">Eligible</xsl:when><xsl:otherwise>Not eligible</xsl:otherwise></xsl:choose></xsl:if>
			</title>

            <xsl:text disable-output-escaping="yes">&lt;!--[if gt IE 8]&gt;&lt;!--&gt;</xsl:text>
            <link href="/css/application.css" media="screen" rel="stylesheet" type="text/css" />
            <xsl:text disable-output-escaping="yes">&lt;!--&lt;![endif]--&gt;</xsl:text>

            <xsl:text disable-output-escaping="yes">&lt;!--[if IE 6]&gt;</xsl:text>
            <link href="/css/application-ie6.css" media="screen" rel="stylesheet" type="text/css" />
            <xsl:text disable-output-escaping="yes">&lt;![endif]--&gt;</xsl:text>

            <xsl:text disable-output-escaping="yes">&lt;!--[if IE 7]&gt;</xsl:text>
            <link href="/css/application-ie7.css" media="screen" rel="stylesheet" type="text/css" />
            <xsl:text disable-output-escaping="yes">&lt;![endif]--&gt;</xsl:text>
 
            <xsl:text disable-output-escaping="yes">&lt;!--[if IE 8]&gt;</xsl:text>
            <link href="/css/application-ie8.css" media="screen" rel="stylesheet" type="text/css" />
            <xsl:text disable-output-escaping="yes">&lt;![endif]--&gt;</xsl:text>
            
            <link href="/css/print.css" media="print" rel="stylesheet" type="text/css" />

            <xsl:text disable-output-escaping="yes">&lt;!--[if gte IE 9]&gt;&lt;!--&gt;</xsl:text>
            <link href="/css/fonts.css" media="all" rel="stylesheet" type="text/css" />
            <xsl:text disable-output-escaping="yes">&lt;!--&lt;![endif]--&gt;</xsl:text>
            
            <script src="/js/jquery-1.7.2.js" type="text/javascript"></script>
            
            <xsl:text disable-output-escaping="yes">&lt;!-- &lt;script defer src="/js/application.js" type="text/javascript"&gt;&lt;/script&gt; --&gt;</xsl:text>            

            <xsl:text disable-output-escaping="yes">&lt;!--[if lt IE 9]&gt;&lt;!--&gt;</xsl:text>
            <script src="/js/ie.js" type="text/javascript"></script>
            <xsl:text disable-output-escaping="yes">&lt;![endif]--&gt;</xsl:text>

            
            
            <link rel="shortcut icon" href="/static/favicon-447e4ac1ab790342660eacfe3dcce264.ico" type="image/x-icon" />
            
            
            <xsl:comment> For third-generation iPad with high-resolution Retina display: </xsl:comment>
	        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/apple-touch-icon-144x144-4e306e01c31e237722b82b7aa7130082.png" />
            <xsl:comment> For iPhone with high-resolution Retina display: </xsl:comment>
            <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/static/apple-touch-icon-114x114-f1d7ccdc7b86d923386b373a9ba5e3db.png" />
            <xsl:comment> For first- and second-generation iPad: </xsl:comment>
            <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/static/apple-touch-icon-72x72-2ddbe540853e3ba0d30fbad2a95eab3c.png" />
            <xsl:comment> For non-Retina iPhone, iPod Touch, and Android 2.1+ devices: </xsl:comment>
            <link rel="apple-touch-icon-precomposed" href="/static/apple-touch-icon-57x57-37527434942ed8407b091aae5feff3f3.png" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            
            <!-- PJAX IMPLEMENTATION -->
            <script type="text/javascript" src="/js/jquery.history.js"></script>
            <script type="text/javascript" src="/js/cla_functions.js"></script>
			
			<script id="ga-params" type="text/javascript">
			
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-37377084-1']);
			
			if(document.domain=='cla.cjs.gov.uk') {
				_gaq.push(['_setDomainName', '.cla.cjs.gov.uk']);
			} else {
				_gaq.push(['_setDomainName', document.domain]);
			}
            _gaq.push(['_setAllowLinker', true]);
			<!-- 
			 no longer required because I don't this gives us anything that trackPageview doesn't already give us (@matharden 2013-03-22)
			 _gaq.push(["_setCustomVar",1,"Section","<xsl:value-of select="/category/@name" />",3]); -->
			<!-- 
			 add the customvar only if this page load results in an outcome (@matharden 2013-03-22) -->
			 <xsl:if test="contains(//*[@id = $focus]/@id, 'r' )">_gaq.push(["_setCustomVar",3,"Outcome","<xsl:value-of select="/category/@name" />, <xsl:value-of select="//*[@id = $focus]/@result" />",2]);</xsl:if>

			_gaq.push(['_trackPageview']);
					
			(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();

            <!-- Add outbound tracking function @trentgreenwood 2014-01-22 -->
            function trackOutboundLink(link, category, action) { 
                 
                try { 
                _gaq.push(['_trackEvent', category , action]); 
                } catch(err){}
                 
                setTimeout(function() {
                document.location.href = link.href;
                }, 100);
            }
			
			$(document).ready(function() {
						
				<!-- jQuery functions need to use the #wrapper selector so as to bind events to elements that may not yet exist in the DOM for PJAX loaded content - the #content div (immediate child of #wrapper) is the replacement content in this case -->
				$('#wrapper').on('submit', '#navigator', function (e) {

					var form = $(this);
					
					<!-- when an answer has been selected -->
					if ($('[name=response]:checked').length) {
		
						if (typeof history.pushState === "function") {
			
							e.preventDefault();
							e.stopImmediatePropagation();
							
							var newLoadedHtml = $("#path").val() + "/" + $("input[name=response]:radio:checked").val();
							History.pushState(null, newLoadedHtml, newLoadedHtml);
							
						} else { <!-- no pushState supported -->
			
							window.location = $("#path").val() + "/" + $("input[name=response]:radio:checked").val() + "#c";
							return false;
						}

					} else {
                        e.preventDefault();
						<xsl:text disable-output-escaping="yes">
						<![CDATA[
						var error = $('<div/>', {
								'class': 'error'
							}).append($('<p/>', {
								'class': 'error-message',
								'id': 'current-error',
								'role': 'alert',
								text: 'Please answer this question'
							}));

						var exists = form.find('div.error').length;

						if (!exists) {
							$('.question-body').prepend(error);
						}
						]]>
						</xsl:text>
					}
				});
		
				<!-- uses https://github.com/browserstate/history.js -->
				History.Adapter.bind(window, "statechange", function () {

					var State = History.getState();
				
					<!-- this #wrapper selector (immediate parent) of #content ensures no nesting as new pages are loaded -->
					$('#wrapper').load(document.location.href + " #content", function (data) {
						document.title = $(data).filter("title").text();

						<!-- track page load upon ajax requests -->
						var parser = document.createElement('a');
						parser.href = State.url;
						var outcome = $(data).find('#outcome').val()

						if (typeof outcome === 'undefined') {
							_gaq.push(['_deleteCustomVar',3]);
						} else {
							<!-- set a CustomVar for the outcome only, this is a session CustomVar (2), so if the user goes back to make different choices, GA will update the outcome (@matharden 2013-03-22) -->
							_gaq.push(["_setCustomVar",3,"Outcome",outcome,2]);
						}
						_gaq.push(['_trackPageview', parser.pathname]);
						
						<!-- if responseText is an outcome page, push the outcome customVar to GA -->
						<!-- trackState( outcome, parser.pathname ); -->
					});
				});
				
			});
					
            </script>
            <script type="text/javascript" src="/js/jquery.history.js"></script>

            <script type="text/javascript" src="/js/cla_functions.js"></script>

            <meta name="robots" content="noindex" />
            <link href="/css/content.css" media="screen" rel="stylesheet" type="text/css" />
            <xsl:text disable-output-escaping="yes">&lt;!--[if IE 7]&gt;</xsl:text>
                <link href="/css/ie7.css" media="all" rel="stylesheet" type="text/css" />
            <xsl:text disable-output-escaping="yes">&lt;![endif]--&gt;</xsl:text>
        </head>
    </xsl:template>

    <xsl:template name="header">
        <header role="banner" id="global-header">
            <div class="header-wrapper">
                <div class="header-global">
                    <div class="header-proposition">
                        <div class="content">
                            <nav id="proposition-menu">
                                <a href="/" id="proposition-name">
                                    Legal aid checker <small class="beta">BETA</small>
                                </a>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </xsl:template>
    
    <xsl:template name="report">
        <!-- report_a_problem -->
        <p class="report-a-problem-toggle">
            <a href="">Is something wrong with this page?</a>
        </p>
        <div class="report-a-problem-container">
            <p>Help us improve this website by telling us:</p>
            <form accept-charset="UTF-8" action="/feedback" method="post">
                <div style="margin:0;padding:0;display:inline">
                    <input name="utf8" type="hidden" value="?" />
                </div>
                <input id="url" name="url" type="hidden" value="https://cls.cjs.gov.uk" />
                <label for="what_doing">
                    What you were doing<input id="what_doing" name="what_doing" type="text" />
                </label>
                <label for="what_wrong">
                    What went wrong<input id="what_wrong" name="what_wrong" type="text" />
                </label>
                <div>
                    <button name="commit" type="submit" class="button">Send</button>
                </div>
                <!--<p>If you have more extensive feedback, please visit the <a href="http://www.gov.uk/feedback">support page</a>.</p>-->
            </form>
        </div>
        <!-- end report_a_problem -->
    </xsl:template>

    <xsl:template name="related">
        <!-- related -->
        <div class="related-positioning">
            <div class="related-container">
                <div class="related" id="related">
                    <div class="inner group">
                        <h2>Other relevant links</h2>
                        <nav role="navigation">
                            <ul>
                                <li>
                                    <a href="https://www.gov.uk/legal-aid">Legal aid</a>
                                </li>
                                <li class="related-topic">
                                    <a href="https://www.gov.uk/browse/justice">
                                        More from the <span>Crime, justice and the law</span> category
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <nav role="navigation" class="return-to-top">
                            <a href="#content">Return to top ?</a>
                        </nav>
                    </div>

                    <div id="legacy-sources">
                        <p>This replaces</p>
                        <ul>
                            <li class="directgov">Directgov</li>
                            <li class="businesslink">Business Link</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- end related -->
    </xsl:template>

    <xsl:template name="footer">
        <footer class="group js-footer" id="footer" role="contentinfo">
            <div class="footer-wrapper">
                <div class="footer-categories">
                    <div class="footer-explore">
                        <h2>Explore GOV.UK</h2>
                        <ul>
                            <li>
                                <a href="https://www.gov.uk/browse/driving">Driving, transport and travel</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/benefits">Benefits</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/business">Businesses and self-employed</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/employing-people">Employing people</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/education">Education and learning</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/working">Working, jobs and pensions</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/housing">Housing and local services</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/justice">Crime, justice and the law</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/tax">Money and tax</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/births-deaths-marriages">Births, deaths, marriages and care</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/disabilities">Disabled people</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/browse/citizenship">Citizenship and life in the UK</a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-inside-government">
                        <h2>Inside Government</h2>
                        <ul>
                            <li>
                                <a href="https://www.gov.uk/government/how-government-works">How government works</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/government/organisations">Departments</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/government/topics">Topics</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/government/policies">Policies</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/government/publications">Publications</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/government/announcements">Announcements</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="footer-meta">
                    <div class="footer-meta-inner">
                        <h2 class="visuallyhidden">Support links</h2>
                        <ul>
                            <li>
                                <a href="http://www.justice.gov.uk/about/laa">Legal Aid Agency</a>
                            </li>
                            <li>
                                <a href="https://www.gov.uk/">GOV.UK</a>
                            </li>
                            <li>
                                Built by the <a href="http://blogs.justice.gov.uk/digital/">Digital Services Division</a>
                            </li>
                        </ul>
                        <div class="open-government-licence">
                            <h2>
                                <a href="http://www.nationalarchives.gov.uk/doc/open-government-licence/version/2">
                                    <img alt="OGL" src="/static/open-government-licence_2x.png" />
                                </a>
                            </h2>
                            <p>
                                All content is available under the <a href="http://www.nationalarchives.gov.uk/doc/open-government-licence/version/2">Open Government Licence v2.0</a>, except where otherwise stated
                            </p>
                        </div>
                    </div>
                    <div class="copyright">
                        <a href="http://www.nationalarchives.gov.uk/information-management/our-services/crown-copyright.htm">&#169; Crown Copyright</a>
                    </div>
                </div>
            </div>
        </footer>
        <!--end footer-->
    </xsl:template>

</xsl:stylesheet>
