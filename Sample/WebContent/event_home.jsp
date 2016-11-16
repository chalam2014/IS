<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>St.Thomas Contact</title>
        <meta name="keywords" content="Professional Template, HTML, CSS, free website template" />
        <meta name="description" content="Professional Template, HTML, CSS, free website template provided by templatemo.com" />
        <link href="style.css" rel="stylesheet" type="text/css" />



    </head>
    <body>
        <div id="templatemo_header_wrapper">
            <div id="templatemo_header">
                <div id="site_title_section">
                    <div id="site_title">
                        St. Thomas 
                    </div>
                    <div id="salogon">
                        Easy Service</div>
                    <div class="cleaner">&nbsp;</div>
                </div>

                <div id="search_section">
                    <form action="#" method="get">
                        <input type="text" name="q" size="10" id="searchfield" title="searchfield" />
                        <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" />
                    </form>
                </div>    
            </div> <!-- end of header -->
        </div>  <!-- end of header wrapper -->

        <div id="templatemo_banner_wrapper">
            <div id="templatemo_banner">

                <div id="banner_header_01">St. THOMAS EVENTS</div>
                <div id="banner_header_02">Easy Service Day of Villanova</div>
                <div id="banner_text">
                    <p>It is a community with the experience, skills and knowledge to help poor people, no matter how large or how small, fulfill its ultimate potential. We can help fledgling events get off the ground and existing events soar. We're flexible, fast, responsive and reliable. And we always bring a fresh perspective. No matter what stage of the planning you?re in, we?d welcome the opportunity to help you make your event the best it can be.</p>
                    <!--            <div class="rc_btn_01"><a href="#">Continue reading...</a></div>-->
                </div>
            </div>	<!-- end of banner -->
        </div> <!-- end of banner wrapper -->

        <div id="templatemo_menu_wrapper">    
            <div id="templatemo_menu">
                <ul>
                    <li><a href="volunteer_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="event_home.jsp" target="_parent"><span></span>View Events</a></li>
                    <li><a href="volunteer_view_allocation.jsp"><span></span>Allocation</a></li>
                   
                    <li><a href="volunteer_login.jsp"><span></span>Log Out</a></li>
                </ul>    	
            </div> <!-- end of menu -->
        </div> <!-- end of menu wrapper -->

        <div id="templatemo_content_wrapper">
            <div id="templatemo_content">

                <div id="content_left">
                    <div class="content_left_section">
                        <div class="content_header_01">Our news</div>
                        <div class="news_section">
                            <div class="news_date">JAN 20, 2016</div>
                            <div class="news_title">Funds Collection</div>
                            <p>Sed sit amet pretium metus. Nullam bibendum pharetra luctus. Aliquam erat volutpat. Praesent sit amet elementum est. <a href="#">Read more</a></p>
                        </div>

                        <div class="margin_bottom_30"></div>

                        <div class="news_section">
                            <div class="news_date">JAN 19, 2016</div>
                            <div class="news_title">Books Distribution</div>
                            <p>Suspendisse dignissim est nec tortor posuere vitae dictum dolor sagittis. Vestibulum at libero velit. Maecenas faucibus ornare erat sed sodales. <a href="#">Read more</a></p>
                        </div>

                        <div class="margin_bottom_20"></div>
                        <div class="rc_btn_02"><a href="#">View All</a></div> 
                        <div class="cleaner"></div>

                    </div>  

                    <div class="margin_bottom_20 border_bottom"></div>
                    <div class="margin_bottom_20"></div>

                    <div class="content_left_section">
                        <div class="content_header_01">Newsletter</div>
                        <p>Please enter your email address to subscribe our newsletter</p>
                        <form action="#" method="get">
                            <input type="text" id="search_field" />
                            <input type="submit" value="Subscribe" id="subscribe_button" />
                        </form>
                        <div class="cleaner"></div>
                    </div>

                    <div class="margin_bottom_20 border_bottom"></div>
                    <div class="margin_bottom_20"></div>

                    <div class="content_left_section">
                        <!--                        <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
                                                <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>-->
                    </div>

                    <div class="cleaner_h30">&nbsp;</div>
                </div> <!-- end of content left -->

                <div id="content_right">

                    <%
                        String v_id = (String)session.getAttribute("volunteerID");

                        String name = null;

                        Connection con = com.DB.DBConnection.getCon();
                        Statement st = con.createStatement();

                        String query = "select v_name from volunteer where v_id='" + v_id + "' ";

                        ResultSet rs = st.executeQuery(query);

                        while (rs.next()) {

                            name = rs.getString(1);
                        }

                    %>



                    <center>
                        <h2>Welcome to Volunteer : <%=name%> </h2>

                        <br></br>
                        <br>
                            
                        </br>
                        
                        <br></br>
                        <h2><font color="red" >St. THOMAS EVENTS will Start Soon......</font></h2>

                    </center>



                    <div class="cleaner">&nbsp;</div>
                </div>                    
                <div class="cleaner_h20">&nbsp;</div>
            </div> <!-- end of content right -->

            <div class="cleaner">&nbsp;</div>

        </div> <!-- end of content -->
        </div> <!-- end of content wrapper -->

        <div id="templatemo_footer_wrapper">        
            <div id="templatemo_footer">
                Copyright © 2016 <a href="index.html">University of St. Thomas, Minnesota</a> | 

            </div><!-- end of footer -->
        </div><!-- end of footer wrapper -->
    </body>
</html>
