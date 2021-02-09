<%
session.setAttribute("uyeeposta", null);
session.invalidate();
response.sendRedirect("../../index.html");
%>