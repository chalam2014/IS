<%@page import="java.sql.*" %>
<%@page import="com.DB.DBConnection" %>
<%

                        Connection con = com.DB.DBConnection.getCon();

                        String volu_id = request.getParameter("vid");
                        
                        String password = request.getParameter("pwd");
                        
                        session.setAttribute("volunteerID", volu_id);
                        
                       try {

                            Statement st = con.createStatement();

                            String query = "select v_id,pwd from volunteer where v_id='" + volu_id + "' and pwd='" + password + "' ";

                            ResultSet rs = st.executeQuery(query);

                            if (!rs.next()) {
                    %>

                    Given User Details is Not Registered/Valid
                    <br>

                    Please Try Again <a href="volunteer_login.jsp">Here</a>

                        <%
                        } else {
                        %>

                        <jsp:forward page="volunteer_home.jsp">

                            <jsp:param name="name" value="<%=volu_id%>" />
                        </jsp:forward>
                        <%

                                }

                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>