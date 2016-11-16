 
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
                        <h1>Applicant Services  List </h1>

                        <%
                            try {
                            	
                            	String app_id = request.getParameter("app_id");
                                Connection con = com.DB.DBConnection.getCon();
                                PreparedStatement ps = con.prepareStatement("select * from service where app_id ='" + app_id + "' and status = 'Null' " );
                                ResultSet rs = ps.executeQuery();

                        %>


                       
                        <br><br>
                                <table class = "main1" border="3" width="1000" height="50">

                                    <tr>
                                        <td><h4>Service Id</h4></td>
                                        
                                        <td><h4>Applicant Id</h4></td>

                                        <td><h4>Service Name</h4></td>

                                        <td><h4>Service Description</h4></td>

                                        <td><h4>No of Volunteers</h4></td>

                                        <td><h4>Service Address</h4></td>

                                        <td><h4>Action</h4></td>


                                    </tr>

                                    <%                while (rs.next()) {
                                    %>

                                    <tr width="120" height="50">
                                        <td><%=rs.getString(1)%></td>
                                        <td><%=rs.getString(2)%></td>
                                        <td><%=rs.getString(3)%></td>
                                        <td><%=rs.getString(4)%></td>
                                        <td><%=rs.getString(5)%></td>
                                        <td><%=rs.getString(6)%></td>
                                        <td> <a href=<%= "\"Accept_Applicant.jsp?app_id=" + rs.getString(1) + "\""%> > Accept/</a>
                                        <a href=<%= "\"Delete_Applicant.jsp?app_id=" + rs.getString(1) + "\""%> > Reject</a></td>
                                        




                                    </tr>
                                    <%}
                                        } catch (Exception e) {
                                            e.printStackTrace();
                                        }

                                    %>

                                </table>


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