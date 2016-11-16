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

<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>


<%

    String service_id = request.getParameter("sid");
    String appl_id = request.getParameter("aid");
    String service_name = request.getParameter("sname");
    String req_volu = request.getParameter("reqv");
    String service_add = request.getParameter("sadd");
    String service_des = request.getParameter("sdes");
    String volu_id = request.getParameter("vid");
    String volu_name = request.getParameter("vname");
    String volu_email = request.getParameter("vemail");
    String volu_skill = request.getParameter("vskils");
    String volu_type = request.getParameter("vtype");
    String no_volu = request.getParameter("nov");
    String volu_con = request.getParameter("cont");

    try {

        Connection con = DBConnection.getCon();

        String query = "insert into allocation values(?,?,?,?,?,?,?,?,?,?,?,?,?)";

        PreparedStatement ps = con.prepareStatement(query);

        ps.setString(1, service_id);
        ps.setString(2, appl_id);
        ps.setString(3, service_name);
        ps.setString(4, req_volu);
        ps.setString(5, service_add);
        ps.setString(6, service_des);
        ps.setString(7, volu_id);
        ps.setString(8, volu_name);
        ps.setString(9, volu_email);
        ps.setString(10, volu_skill);
        ps.setString(11, volu_type);
        ps.setString(12, no_volu);
        ps.setString(13, volu_con);

        int k = ps.executeUpdate();

%>

<h3>

    <%                              
        if (k == 1) {
            
            Connection con1 = com.DB.DBConnection.getCon();
            
            String qry1 = " update service set status='Allocated' where service_id='"+service_id+"' ";
            String qry2 = " update volunteer set status='Allocated' where v_id='"+volu_id+"' ";
            
             PreparedStatement ps1 = con1.prepareStatement(qry1);
             PreparedStatement ps2 = con1.prepareStatement(qry2);
            
            
            ps1.executeUpdate();
            ps2.executeUpdate();
            
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Allocation Successfully Completed');");
            out.println("location='admin_schedule.jsp';");
            out.println("</script>");
           
        } else {
            out.println("Allocation Failed");
        }
    %>
</h3>

<br>
<br>
To Allocate New One <a href="admin_schedule.jsp">Click Here</a>


<%
    } catch (Exception e) {
        e.printStackTrace();
    }

%>

 </div> <!-- end of content -->
</div> <!-- end of content wrapper -->
<div id="templatemo_footer_wrapper">        
                                            <div id="templatemo_footer">
                                                 
                                                
                                            </div><!-- end of footer -->
                                        </div><!-- end of footer wrapper -->

                                        </body>
                                        </html>
