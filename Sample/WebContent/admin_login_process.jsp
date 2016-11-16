



<%

                        try {

                            String username = request.getParameter("uname");
                            String password = request.getParameter("pwd");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("spanduri") ) && (password.equals("Messi123$"))) {

                                response.sendRedirect("admin_home.jsp");

                            } else {

                    %>

                    User Details Given for Username : <%=request.getParameter("uname")%> is Not Registered/Valid
                    <br>

                        Please Try Again

                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
