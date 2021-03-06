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
                    <li><a href="admin_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="admin_view_sponsors.jsp" target="_parent"><span></span>Sponsors</a></li>
                    <li><a href="admin_view_volunteer.jsp"><span></span>Volunteers</a></li>
                    <li><a href="admin_view_applicants.jsp"><span></span>Applicants</a></li>
                    <li><a href="admin_view_transaction.jsp"><span></span>Transactions</a></li>
                    <li><a href="admin_schedule.jsp"><span></span>Schedule</a></li>
                    <li><a href="index.html"><span></span>Logout</a></li>
                </ul>       	
            </div>
        </div>

        <div id="templatemo_content_wrapper">
            <div id="templatemo_content">


                    <div id="center">

<%

                        Connection con = com.DB.DBConnection.getCon();

                        String app_id = request.getParameter("app_id");
                        PreparedStatement pstatement = null;
                 		int updateQuery = 0;
                        
                        
                        
                       try {

                            Statement st = con.createStatement();

                            String query = "update service set status = ? where service_id= ?" ;
                            pstatement = con.prepareStatement(query);
                            pstatement.setString(1,"Accepted");
                            pstatement.setString(2, app_id);
                            updateQuery = pstatement.executeUpdate();
                            if (updateQuery != 0)
                            {
                            	out.println("<script type=\"text/javascript\">");
                                out.println("alert('Applicant Service has been accepted');");
                                out.println("location='admin_view_applicants.jsp';");
                                 out.println("</script>");
                    %>
                    <center>
                    <font size = '4' color = 'black'>
Applicant Service has been accepted and updated the status</font></center>
                    
                    <br></br>


                        <%
                        } 

                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
   </div> 
</div>
                                        </body>
                                        </html>