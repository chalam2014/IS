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
    </div> <!-- end of header -->
</div>  <!-- end of header wrapper -->

<div id="templatemo_banner_wrapper">
    <div id="templatemo_banner">
    
        <div id="banner_header_01">St. Thomas of VILLANOVA</div>
        <div id="banner_header_02">DAY OF SERVICE</div>
        <div id="banner_text">
            <p>St. Thomas of Villanova was known for his great charity to the poor and marginalized. The Villanova community celebrates its patron saint and his legacy of Caritas - Love - with an annual Day of Service in his name.
 This annual event builds upon the great service performed throughout the year by the Villanova community and exists as a unique way to put its Augustinian ideals into action.</p>
        </div>
    </div>	<!-- end of banner -->
</div> <!-- end of banner wrapper -->

        <div id="templatemo_menu_wrapper">    
            <div id="templatemo_menu">
                <ul>
                    <li><a href="admin_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="admin_view_sponsors.jsp" target="_parent"><span></span>Sponsors</a></li>
                    <li><a href="admin_view_volunteer.jsp"><span></span>Volunteers</a></li>
                    <li><a href="admin_view_applicants.jsp"><span></span>Applicants</a></li>
                    <li><a href="admin_view_transaction.jsp"><span></span>Transactions</a></li>
                    <li><a href="admin_schedule.jsp"><span></span>Schedule</a></li>
                    <li><a href="index.html"><span></span>Logout</a></li>
                </ul>       	
            </div> <!-- end of menu -->
        </div> <!-- end of menu wrapper -->

        <div id="templatemo_content_wrapper">
            <div id="templatemo_content">


                    <div id="center">
                <center>
                    <h2>Application Details</h2>
                    <form action="admin_schedule_process.jsp" method="post" id="srform">
                        <table>
                            <tr>
                                <td align="right"><h3>Service ID:</h3> </td>
                                <td>
                                    <select name="sid">

                                        <%
                                            try {

                                                Connection con = com.DB.DBConnection.getCon();

                                                PreparedStatement ps = con.prepareStatement("select service_id from service where no_vol_req > '0'");
                                                ResultSet rs = ps.executeQuery();
                                                while (rs.next()) {
                                        %>


                                        <option><%=rs.getString(1)%></option>



                                        <%  }

                                        %>

                                    </select>
                                </td>
                            </tr> 

                            <%                        } catch (Exception e) {
                                    e.printStackTrace();
                                }

                            %>


                        </table>

                            <div class="margin_bottom_20 border_bottom"></div>
                            <div class="margin_bottom_20"></div>

                            <h2>Volunteer Details</h2>
                            <table>
                            <tr>
                                <td align="right"><h3>Volunteer ID:</h3> </td>
                                <td>
                                    <select name="vid">

                                        <%                                    try {

                                                Connection con1 = com.DB.DBConnection.getCon();

                                                PreparedStatement ps = con1.prepareStatement("select v_id from volunteer where status = 'Accepted' ");
                                                ResultSet rs1 = ps.executeQuery();
                                                while (rs1.next()) {
                                        %>


                                        <option><%=rs1.getString(1)%></option>



                                        <%  }

                                        %>

                                    </select>
                                </td>
                            </tr> 

                            <%                        } catch (Exception e) {
                                    e.printStackTrace();
                                }

                            %>


                            <tr>
                                <td>
                                    <button type="submit" form="srform" value='Register'>Get Details</button>
                                </td>
                            </tr>  

                        </table>

                    </form>

                </center>


                <div class="margin_bottom_20 border_bottom"></div>
                <div class="margin_bottom_20"></div>

                <div class="content_left_section">
                    <!--                        <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
                                            <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>-->
                </div>

                <div class="cleaner_h30">&nbsp;</div>
            </div> <!-- end of content left -->

        <div class="cleaner">&nbsp;</div>

 </div> <!-- end of content -->
</div> <!-- end of content wrapper -->
<div id="templatemo_footer_wrapper">        
                                            <div id="templatemo_footer">
                                                 
                                                
                                            </div><!-- end of footer -->
                                        </div><!-- end of footer wrapper -->

                                        </body>
                                        </html>