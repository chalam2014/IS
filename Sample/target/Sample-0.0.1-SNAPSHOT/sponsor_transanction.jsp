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
                    <li><a href="sponsor_home.jsp" class="current"><span></span>Home</a></li>
                    <li><a href="sponsor_fund.jsp" target="_parent"><span></span>Offer Funds</a></li>
                    <li><a href="sponsor_transanction.jsp"><span></span>Transactions</a></li>
                    <li><a href="sponsor_login.jsp"><span></span>Log Out</a></li>
                </ul>    	
            </div> <!-- end of menu -->
        </div> <!-- end of menu wrapper -->

        <div id="templatemo_content_wrapper">
            <div id="templatemo_content">

                 <div id="center">

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
                        <h1>Recent transactions</h1>



                        <%
                            try {
                                
                                int count=1;
                                
                                System.out.println("Current Sponsor ID is "+sponsor_id);
                                Connection con1 = com.DB.DBConnection.getCon();

                                PreparedStatement ps = con1.prepareStatement("select funds_type,funds_name,funds_qua,transfer_date from funds where sponsor_id='" + sponsor_id + "' ");
                                ResultSet rs1 = ps.executeQuery();

                        %>



                        <br><br>
                                <table class = "main1" border="3" width="750" height="50">

                                    <tr>
                                        
                                        <td><h4>S.No</h4></td> 
                                        
                                        <td><h4>Funds Type</h4></td>

                                        <td><h4>Currency Type</h4></td>

                                        <td><h4>Amount</h4></td>

                                        <td><h4>Transaction Date</h4></td>




                                    </tr>

                                    <%                                        while (rs1.next()) {
                                    %>

                                    <tr width="120" height="50">
                                        <td><%=count%></td>
                                        <td><%=rs1.getString(1)%></td>
                                        <td><%=rs1.getString(2)%></td>
                                        <td><%=rs1.getString(3)%></td>
                                        <td><%=rs1.getDate(4)%></td>

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

</div> <!-- end of content -->
</div> <!-- end of content wrapper -->
<div id="templatemo_footer_wrapper">        
                                            <div id="templatemo_footer">
                                                 
                                                
                                            </div><!-- end of footer -->
                                        </div><!-- end of footer wrapper -->

                                        </body>
                                        </html>