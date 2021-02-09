<%
session.setAttribute("eposta", null);
session.invalidate();
response.sendRedirect("../../index.html");
%>