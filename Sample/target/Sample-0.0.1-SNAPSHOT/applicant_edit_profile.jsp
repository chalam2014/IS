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
            </div>
        </div>
        <div id="templatemo_banner_wrapper">
            <div id="templatemo_banner">
                <div id="banner_header_01">St. THOMAS EVENTS</div>
                <div id="banner_header_02">Easy Service Day of Villanova</div>
                <div id="banner_text">
                    <p>It is a community with the experience, skills and knowledge to help poor people, no matter how large or how small, fulfill its ultimate potential. We can help fledgling events get off the ground and existing events soar. We're flexible, fast, responsive and reliable. And we always bring a fresh perspective. No matter what stage of the planning you?re in, we?d welcome the opportunity to help you make your event the best it can be.</p>
                </div>
            </div>
        </div>
        <div id="templatemo_menu_wrapper">    
            <div id="templatemo_menu">
                <ul>
                    <li><a href="applicant_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="applicant_service.jsp" target="_parent"><span></span>New Service</a></li>
                    <li><a href="#"><span></span>Allocation</a></li>
                    <li><a href="applicant_edit_profile.jsp"><span></span>Profile</a></li>
                    <li><a href="applicant_view_service.jsp"><span></span>View Service</a></li>
                    <li><a href="applicant_login.jsp"><span></span>Logout</a></li>
                </ul>    	
            </div>
        </div>
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
                    </div>
                    <div class="cleaner_h30">&nbsp;</div>
                </div>
                <div id="content_right">
                    <%
                        try {
                            String appID = (String) session.getAttribute("sessionID");
                            Connection con = DBConnection.getCon();
                            String query = "select app_name,email,pwd,address,contact from applicant where app_id= '" + appID + "'";
                            PreparedStatement ps = con.prepareStatement(query);
                            ResultSet rs = ps.executeQuery(query);
                            while (rs.next()) {
                    %>

                    <form action="applicant_register_process.jsp" method="post" id="arform">
                        <center>
                            <h2>Edit Organization Registration</h2>
                            <br><br><br>
                                        <table>

                                            <td align="right">Applicant/Organization Name:</td><td> <input type="text" align="left" value="<%= rs.getString(1)%>" name="aname"/></td>
                                            <tr></tr> <tr></tr> <tr></tr>
                                            <tr>
                                                <td align="right">Email : </td><td> <input type="text" align="left" value="<%= rs.getString(2)%>" name="email"/></td>
                                            </tr>
                                            <tr></tr> <tr></tr> <tr></tr>
                                            <tr>
                                                <td align="right">Password : </td><td> <input type="password" align="left" value="<%= rs.getString(3)%>" name="pwd"/></td>
                                            </tr>
                                            <tr></tr> <tr></tr> <tr></tr>
                                            <tr>
                                                <td align="right">Address : </td>
                                                <td> <textarea rows="5" cols="50" align="left" value="<%= rs.getString(4)%>" name="addr"></textarea></td>
                                            </tr>
                                            <tr></tr> <tr></tr> <tr></tr>
                                            <tr>
                                                <td align="right">Contact No : </td><td> <input type="text" align="left" value="<%= rs.getString(5)%>" name="cno"/></td>
                                            </tr>
                                            <tr></tr> <tr></tr> <tr></tr>
                                            <tr>
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <button type="submit" form="arform" value='Register'>Update</button>
                                                </td><td>
                                                    <input type="submit" value='Reset'  />
                                                </td>
                                            </tr>
                                        </table>
                                        </center>
                                        </form> 
                                        <%
                                                }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        %>
                                        <div class="cleaner">&nbsp;</div>
                                        </div>                    
                                        <div class="cleaner_h20">&nbsp;</div>
                                        </div>
                                        <div class="cleaner">&nbsp;</div>
                                        </div>
                                        </div>
                                       </body>
                                        </html>