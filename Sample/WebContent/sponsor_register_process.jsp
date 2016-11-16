   
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
            <li><a href="index.html" class="current"><span></span>Home</a></li>
            <li><a href="applicant_register.jsp" target="_parent"><span></span>Applicant</a></li>
            <li><a href="voluenteer_register.jsp"><span></span>Volunteer</a></li>
            <li><a href="sponsor_register.jsp"><span></span>Sponsor</a></li>
            <li><a href="About_us.jsp"><span></span>About Us</a></li>
            <li><a href="contact.html"><span></span>Contact</a></li>
        </ul>    	
    </div> <!-- end of menu -->
</div> <!-- end of menu wrapper -->

<div id="templatemo_content_wrapper">
<div id="templatemo_content">

    <div id="content_left">
        <div class="content_left_section">
            <div class="content_header_01">Our news</div>
            <div class="news_section">
                <div class="news_date">Feb 20, 2016</div>
                <div class="news_title">Funds Collection</div>
                <p>"There is no greater joy nor greater reward than to make a fundamental difference in someone's life.", Mary Rose McGeady. So do your part of your contribution by donating funds to St. Thomas day of service fund raising program. <a href="#">Read more</a></p>
            </div>
        
            <div class="margin_bottom_30"></div>
        
            <div class="news_section">
                <div class="news_date">Feb 22, 2016</div>
                <div class="news_title">Books Distribution</div>
                <p>"Good friends, good books, and a sleepy conscience: this is the ideal life.", Mark Twain. So do your part of your contribution by donating some books to St. Thomas day of service fund raising program. <a href="#">Read more</a></p>
            </div>
        
            <div class="margin_bottom_20"></div>
            <div class="rc_btn_02"><a href="#">View All</a></div> 
        <div class="cleaner"></div>
        
        </div>   <!-- end of news section -->
        
        <div class="margin_bottom_20 border_bottom"></div>
        <div class="margin_bottom_20"></div>
        
        <div class="content_left_section">
            <div class="content_header_01">Admin Login</div>
<!--            <p>Please enter your email address to subscribe our newsletter</p>-->
            <form action="admin_login_process.jsp" method="post">
                Username : <input type="text" id="search_field" name="uname" />
                Password : <input type="password" id="search_field" name="pwd" />
                <input type="submit" value="Submit" id="subscribe_button" />
            </form>
            <div class="cleaner"></div>
        </div>
        
        <div class="margin_bottom_20 border_bottom"></div>
        <div class="margin_bottom_20"></div>
        
    
        <div class="cleaner_h30">&nbsp;</div>
    </div> <!-- end of content left -->

<div id="content_right">
<%

    String spo_id = request.getParameter("sid");
    String sponsor_name = request.getParameter("sname");
    String email = request.getParameter("email");
    String password = request.getParameter("pwd");
    String occupation = request.getParameter("occu");
    String address = request.getParameter("addr");
    String contact = request.getParameter("cno");

    try {

        Connection con = DBConnection.getCon();

        String query = "insert into sponsor values(?,?,?,?,?,?,?)";

        PreparedStatement ps = con.prepareStatement(query);

        ps.setString(1, spo_id);
        ps.setString(2, sponsor_name);
        ps.setString(3, email);
        ps.setString(4, password);
        ps.setString(5, occupation);
        ps.setString(6, address);
        ps.setString(7, contact);

        int k = ps.executeUpdate();

%>

<h3>

    <%                                if (k == 1) {
    	out.println("<script type=\"text/javascript\">");
        out.println("alert('Sponsor Registration Successfully Completed');");
        out.println("</script>");
            
        } else {
            out.println("Sponsor registration failed");
        }
    %>
</h3>

<br>
<br>
<font size = '4' color = 'black'>
To Login</font>
<font size = '4' color = '#0000FF' ><a href="sponsor_login.jsp"><u> Click Here</u></a></font>


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
