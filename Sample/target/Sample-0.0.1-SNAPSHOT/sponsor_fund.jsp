<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>St.Thomas Home</title>
<meta name="keywords" content="Professional Template, HTML, CSS, free website template" />
<meta name="description" content="Professional Template, HTML, CSS, free website template provided by templatemo.com" />
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="templatemo_header_wrapper">
    <div id="templatemo_header">
        <div id="site_title_section">
            <div id="site_title">
	          St. Thomas of
            </div>
            <div id="salogon">
	            VILLANOVA</div>
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
    
        <div id="banner_header_01">St. Thomas of VILLANOVA</div>
        <div id="banner_header_02">DAY OF SERVICE</div>
        <div id="banner_text">
            <p>St. Thomas of Villanova was known for his great charity to the poor and marginalized. The Villanova community celebrates its patron saint and his legacy of Caritas - Love - with an annual Day of Service in his name.
 This annual event builds upon the great service performed throughout the year by the Villanova community and exists as a unique way to put its Augustinian ideals into action.</p>
        </div>
    </div>
</div>

        <div id="templatemo_menu_wrapper">    
            <div id="templatemo_menu">
                <ul>
                    <li><a href="sponsor_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="sponsor_fund.jsp" target="_parent"><span></span>Offer Funds</a></li>
                    <li><a href="sponsor_transanction.jsp"><span></span>Transactions</a></li>
                    <li><a href="sponsor_login.jsp"><span></span>Log Out</a></li>
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
                            <p>"There is no greater joy nor greater reward than to make a fundamental difference in someone's life.", Mary Rose McGeady. So do your part of your contribution by donating funds to St. Thomas day of service fund raising program. <a href="#">Read more</a></p>
                        </div>

                        <div class="margin_bottom_30"></div>

                        <div class="news_section">
                            <div class="news_date">JAN 19, 2016</div>
                            <div class="news_title">Books Distribution</div>
                            <p>"Good friends, good books, and a sleepy conscience: this is the ideal life.", Mark Twain. So do your part of your contribution by donating some books to St. Thomas day of service fund raising program. <a href="#">Read more</a></p>
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
                        String sponsor_id = (String) session.getAttribute("sponsorID");

                        String name = null;

                        Connection con = com.DB.DBConnection.getCon();
                        Statement st = con.createStatement();

                        String query = "select sponsor_name from sponsor where sponsor_id='" + sponsor_id + "' ";

                        ResultSet rs = st.executeQuery(query);

                        while (rs.next()) {

                            name = rs.getString(1);
                        }
                    %>
                    <center>
                        <form action="sponsor_fund_process.jsp" method="post" id="fform">
                            <h1>Sponsor Funds</h1>
                            <br><br><br>
                                        <table>

                                            <tr>
                                                <td align="right">Funds Type:</td><td> <input type="text" align="left"  name="ftype"/></td>
                                            </tr>
                                            <tr></tr> <tr></tr> <tr></tr>
                                            <tr>
                                                                <td align="right">Currency:</td>
                                                                <td>
                                                                <select name="fname">
                                                                    <option>----Choose Any Type------</option>
                                                                    <option>Dollar</option>
                                                                    <option>Rupees</option>
                                                                    <option>Euro</option>
                                                                    <option>Pound</option>
                                                                </select>
                                                                </td>
                                                        </tr>
                                            <tr></tr> <tr></tr> <tr></tr>
                                            <tr>
                                                <td align="right">Amount : </td><td> <input type="text" align="left" name="qua"/></td>
                                            </tr>
                                            <tr></tr> <tr></tr> <tr></tr>
                                            <tr>
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <button type="submit" form="fform" value='Donate'>Donate</button>
                                                </td><td>
                                                    <input type="reset" value='Reset'  />
                                                </td>
                                            </tr>
                                        </table>
                                        </form>
                                        </center>
                                        <div class="cleaner">&nbsp;</div>
                                        </div>                    
                                        <div class="cleaner_h20">&nbsp;</div>
                                        </div>
                                        <div class="cleaner">&nbsp;</div>
                           </div>
</div>
                                        </body>
                                        </html>