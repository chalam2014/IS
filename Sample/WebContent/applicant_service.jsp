<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<%@page import="java.sql.DriverManager"%>

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
                    <li><a href="applicant_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="applicant_service.jsp" target="_parent"><span></span>New Service</a></li>
                    <li><a href="applicant_view_allocation.jsp"><span></span>Allocation</a></li>
<!--                    <li><a href="applicant_edit_profile.jsp"><span></span>Profile</a></li>-->
                    <li><a href="applicant_view_service.jsp"><span></span>View Service</a></li>
                    <li><a href="applicant_login.jsp"><span></span>Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
        </div> <!-- end of menu wrapper -->

        <div id="templatemo_content_wrapper">
            <div id="templatemo_content">



                <center>
                <%
                        int maxID = 0;

                        Connection con = com.DB.DBConnection.getCon();

                        Statement st = con.createStatement();

                        String query = "select count(service_id	) from service	 ";

                        ResultSet rs = st.executeQuery(query);

                        while (rs.next()) {

                            maxID = rs.getInt(1);
                            maxID = maxID + 1;
                        }


                    %>

                    <form action="applicant_service_process.jsp" method="post" id="asform">

                        <h2>Service Request Registration</h2>
                        <br><br><br>
                                    <table>

										<tr>
										<td align="right">Service ID:</td><td> <input type="text" align="left" value="SERV<%=maxID%>"  name="service_id"/></td>
										</tr>
                                        <tr>
                                            <td align="right">Service Name : </td><td> <input type="text" align="left" name="nserv"/></td>
                                        </tr>
                                        <tr></tr> <tr></tr> <tr></tr>

                                        <tr>
                                            <td align="right">Description: </td>

                                            <td> <textarea rows="5" cols="50" align="left" name="desc"> </textarea></td>
                                        </tr>
                                        <tr></tr> <tr></tr> <tr></tr>

                                        <tr>
                                            <td align="right">No.of Volunteer : </td><td> <input type="text" align="left" name="nvol"/></td>
                                        </tr>
                                        <tr></tr> <tr></tr> <tr></tr>   

                                        <tr>
                                            <td align="right">Address : </td>

                                            <td> <textarea rows="5" cols="50" align="left" name="addr"> </textarea></td>
                                        </tr>
                                        <tr></tr> <tr></tr> <tr></tr>




                                        <tr>
                                            <td>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <button type="submit" id="asform" value='Register' >Register</button>
                                                 
                                            </td><td>
                                                <input type="reset" value='Reset'  />
                                            </td>
                                        </tr>


                                    </table>



                                    </form>   
                                    <br> <br> <br> 
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
                                                 
                                                
                                            </div><!-- end of footer -->
                                        </div><!-- end of footer wrapper -->

                                        </body>
                                        </html>