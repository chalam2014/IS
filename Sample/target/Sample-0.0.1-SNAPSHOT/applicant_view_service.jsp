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
                    <li><a href="applicant_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="applicant_service.jsp" target="_parent"><span></span>New Service</a></li>
                    <li><a href="applicant_view_allocation.jsp"><span></span>Allocation</a></li>
                    <li><a href="applicant_view_service.jsp"><span></span>View Service</a></li>
                    <li><a href="applicant_login.jsp"><span></span>Logout</a></li>
                </ul>    	
            </div>
        </div>
        <div id="templatemo_content_wrapper">
            <div id="templatemo_content">
               <center>
               <h1>My Services</h1>
                        <%
                            try {
                                 String appID =(String)session.getAttribute("sessionID");
                                Connection con = com.DB.DBConnection.getCon();
                                PreparedStatement ps = con.prepareStatement("select service_name,service_des,no_vol,app_service_add,status from service where app_id='" + appID + "'");
                                ResultSet rs = ps.executeQuery();
                        %>
                        <center>                        
                            <br><br><br>                         
                            <table class = "main1" border="3" width="750" height="50">
                                <tr>
                                    <td><h5>Service Name</h5></td>
                                    <td><h5>Description</h5></td>
                                    <td><h5>No.of Volunteers </h5></td>
                                    <td><h5>Address</h5></td>
                                    <td><h5>Status</h5></td>
                                </tr>
                                <%                while (rs.next()) {
                              	  %>
                                <tr width="120" height="50">
                                    <td><%=rs.getString(1)%></td>
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(3)%></td>
                                    <td><%=rs.getString(4)%></td>
                                    <td><%=rs.getString(5)%></td>
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
                                        </div>
                                        <div class="cleaner">&nbsp;</div>
                                        </div>
</div>
</div>
                                        </body>
                                        </html>