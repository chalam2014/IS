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


                <h2>Service Details</h2>


                <form action="admin_allocation.jsp" method="post" id="alcform">

                    <%
                        try {

                            String service_id = request.getParameter("sid");

                            Connection con1 = com.DB.DBConnection.getCon();
                            String query = " select app_id,service_name,service_des,no_vol_req,app_service_add from service where service_id='" + service_id + "' ";
                            PreparedStatement ps1 = con1.prepareStatement(query);
                            ResultSet rs = ps1.executeQuery();
                            while (rs.next()) {


                    %>


                    <table>
                        <tr>
                            <td align="right">Service ID:</td>
                            <td> <input type="text" name="sid" value="<%=service_id%>"></input> </td>
                        </tr>

                        <tr>
                            <td align="right">Application ID: </td>
                            <td> <input type="text" name="aid" value="<%=rs.getString(1)%>"></input> </td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <td></td>
                            <td align="right">Service Name : </td>
                            <td> <input type="text" name="sname" value="<%=rs.getString(2)%>"></input> </td>

                        </tr>

                        <tr>

                            <td align="right">Req. Volunteers : </td>
                            <td> <input type="text" name="reqv" value="<%=rs.getString(4)%>"></input> </td>

                            <td></td>
                            <td align="right">Service Address : </td>
                            <td> <input type="text" name="sadd" value="<%=rs.getString(5)%>"></input> </td>

                        </tr>
                            <tr><td></td></tr>
                        <tr>
                            
                            </tr>
                            <tr><td></td></tr>
                        <tr>

                            <td align="right"><h3>Service Description:</h3> </td>
                            <td> <textarea name="sdes" rows="4" cols="16"><%=rs.getString(3)%> </textarea></td>
                           <!--<td> <input type="text" value="<%=rs.getString(3)%>"></input> </td>-->
                        </tr>

                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>

                    </table>

                
                <div class="margin_bottom_20 border_bottom"></div>
                <div class="margin_bottom_20"></div>

                <h2>Volunteer Details</h2>

                

                    <%
                        try {

                            String volunteer_id = request.getParameter("vid");
                            Connection con2 = com.DB.DBConnection.getCon();
                            String query1 = " select v_name,email,v_skil,v_type,n_volunteer,contact from volunteer where v_id='" + volunteer_id + "' ";
                            PreparedStatement ps2 = con2.prepareStatement(query1);
                            ResultSet rs2 = ps2.executeQuery();
                            while (rs2.next()) {

                    %>

                    <table>

                        <tr>
                            <td align="right">Volunteer ID : </td>
                            <td> <input type="text" name="vid" value="<%=volunteer_id%>"></input> </td>
                        </tr> 



                        <tr>
                            <td align="right">Volunteer Name : </td>
                            <td> <input type="text" name="vname" value="<%=rs2.getString(1)%>"></input> </td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <td></td>
                            <td align="right">Email : </td>
                            <td> <input type="text" name="vemail" value="<%=rs2.getString(2)%>"></input> </td>

                            <td></td>
                            <td align="right">Volunteer Skills : </td>
                            <td> <input type="text" name="vskils" value="<%=rs2.getString(3)%>"></input> </td>

                        </tr>

                        <tr>
                            <td align="right">Volunteer Type : </td>
                            <td> <input type="text" name="vtype" value="<%=rs2.getString(4)%>"></input> </td>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <td></td>
                            <td align="right">No Volunteers : </td>
                            <td> <input type="text" name="nov" value="<%=rs2.getString(5)%>"></input> </td>

                            <td></td>
                            <td align="right">Contact No: </td>
                            <td> <input type="text" name="cont" value="<%=rs2.getString(6)%>"></input> </td>

                        </tr>

                        <tr>
                            <td>

                            </td>
                        </tr> 

                        <tr>
                            <td>

                            </td>
                        </tr> 

                        <tr>
                            <td>
                                <button type="submit" form="alcform" value='Register'>Allocate</button>
                            </td>
                        </tr>     



                    </table>



                    <%}
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>


                </form>



                <div class="margin_bottom_20 border_bottom"></div>
                <div class="margin_bottom_20"></div>
                
                To Check New Combination   <a href="admin_schedule.jsp"><u>Click Here</u></a>

                <div class="content_left_section">
                    <!--                        <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
                                            <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>-->
                </div>

                <div class="cleaner_h30">&nbsp;</div>
            </div> <!-- end of content left -->

            <div id="content_right">

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