 
<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>

<%

                        Connection con = com.DB.DBConnection.getCon();

                        String app_id = request.getParameter("aid");
                        String password = request.getParameter("pwd");
                        
                        session.setAttribute("sessionID", app_id);
                        
                        
                       try {

                            Statement st = con.createStatement();

                            String query = "select app_id,pwd from applicant where app_id='" + app_id + "' and pwd='" + password + "' ";

                            ResultSet rs = st.executeQuery(query);

                            if (!rs.next()) {
                    %>

                    Given User Details is Not Registered/Valid
                    <br>

                    Please Try Again <a href="applicant_login.jsp">Here</a>

                        <%
                        } else {
                        %>

                        <jsp:forward page="applicant_home.jsp">
							<jsp:param name="name" value="<%=app_id%>" />
                        </jsp:forward>
                        <%

                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>