   
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
                    <li><a href="applicant_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="applicant_service.jsp" target="_parent"><span></span>New Service</a></li>
                    <li><a href="applicant_view_allocation.jsp"><span></span>Allocation</a></li>
<!--                    <li><a href="applicant_edit_profile.jsp"><span></span>Profile</a></li>-->
                    <li><a href="applicant_view_service.jsp"><span></span>View Service</a></li>
                    <li><a href="applicant_login.jsp"><span></span>Logout</a></li>
                </ul>    	
            </div> <!-- end of menu -->
        </div> <!-- end of menu wrapper -->
        <center>

<%

    String appID = (String) session.getAttribute("sessionID");
    String service_id = request.getParameter("service_id");        		
    String service_name = request.getParameter("nserv");
    String service_desc = request.getParameter("desc");
    String vol_no = request.getParameter("nvol");
    String req_vol_no = request.getParameter("nvol");
    String service_add = request.getParameter("addr");
	String status = "Pending";

    try {

        Connection con = DBConnection.getCon();

        String query = "insert into service values(?,?,?,?,?,?,?,?)";

        PreparedStatement ps = con.prepareStatement(query);

        ps.setString(1, service_id);
        ps.setString(2, appID);
        ps.setString(3, service_name);
        ps.setString(4, service_desc);
        ps.setString(5, vol_no);
        ps.setString(6, service_add);
        ps.setString(7, status);
        ps.setString(8, req_vol_no);

        int k = ps.executeUpdate();
%>
       <% if (k == 1) {
            out.println("<script type=\"text/javascript\">");
           out.println("alert('Service Registration Successfully Completed');");
           out.println("location='applicant_home.jsp';");
            out.println("</script>");
           
        }
       else {
           out.println("Applicant registration failed");
       }
%>


<br>
<br>
<font size = '4' color = 'black'>
Service Registration Successfully Completed</font>
<a href="applicant_service.jsp"></a>



    


<%
    } catch (Exception e) {
        e.printStackTrace();
    }

%>
                        </center>

                                        <div class="cleaner">&nbsp;</div>
                                        </div>                    
                                        <div class="cleaner_h20">&nbsp;</div>
                                        </div> <!-- end of content right -->

                                        <div class="cleaner">&nbsp;</div>

                                        </div> <!-- end of content -->
</div> <!-- end of content -->
</div> <!-- end of content wrapper -->
<div id="templatemo_footer_wrapper">        
                                            <div id="templatemo_footer">
                                                 
                                                
                                            </div><!-- end of footer -->
                                        </div><!-- end of footer wrapper -->

                                        </body>
                                        </html>
