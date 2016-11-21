<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>

<%

                        Connection con = com.DB.DBConnection.getCon();

                        String spo_id = request.getParameter("sid");
                        
                        String password = request.getParameter("pwd");
                        
                        session.setAttribute("sponsorID", spo_id);
                        
                        
                       try {

                            Statement st = con.createStatement();

                            String query = "select sponsor_id,pwd from sponsor where sponsor_id='" + spo_id + "' and pwd='" + password + "' ";

                            ResultSet rs = st.executeQuery(query);

                            if (!rs.next()) {
                    %>

                    Given User Details is Not Registered/Valid
                    <br>

                    Please Try Again <a href="sponsor_login.jsp">Here</a>

                        <%
                        } else {
                        %>

                        <jsp:forward page="sponsor_home.jsp">

                            <jsp:param name="name" value="<%=spo_id%>" />
                        </jsp:forward>
                        <%

                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>