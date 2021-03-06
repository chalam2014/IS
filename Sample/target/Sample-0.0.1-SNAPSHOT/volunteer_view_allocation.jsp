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
                    <li><a href="volunteer_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="volunteer_view_allocation.jsp"><span></span>Allocation</a></li>
                    <li><a href="volunteer_login.jsp"><span></span>Log Out</a></li>
                </ul>    	
            </div>
        </div>
        <div id="templatemo_content_wrapper">
            <div id="templatemo_content">
                <div id="center">
                    <%
                        String v_id = (String) session.getAttribute("volunteerID");
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
                        <h1>My Allocations </h1>
                        <%
                            try {
                                int count = 1;
                                Connection con1 = com.DB.DBConnection.getCon();
                                PreparedStatement ps = con1.prepareStatement("SELECT ser_name,req_vol,ser_add,ser_des FROM allocation WHERE vol_id='" + v_id + "';  ");
                                ResultSet rs1 = ps.executeQuery();
                        %>
                        <br><br>
                                <table class="main1" border="3" width="750" height="50">
                                    <tr>
                                        <td><h4>S.No</h4></td> 
                                        <td><h4>Service Name</h4></td> 
                                        <td><h4>Service Desc</h4></td> 
                                        <td><h4>Address</h4></td>
                                        <td><h4>Req.No of Volunteers</h4></td>
                                    </tr>

                                    <%                                        while (rs1.next()) {
                                    %>
                                    <tr width="120" height="50">
                                        <td><%=count%></td>
                                        <td><%=rs1.getString(1)%></td>
                                        <td><%=rs1.getString(4)%></td>
                                        <td><%=rs1.getString(3)%></td>
                                        <td><%=rs1.getString(2)%></td>
                                    </tr>
                                    <%
                                                count++;
                                            }
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

</div>
</div>
                                        </body>
                                        </html>