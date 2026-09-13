 <%@page import="dbpack.DbManager"%>
<%
String id=request.getParameter("qid");
DbManager dm=new DbManager();
String query="delete from qb where qid='"+id+"'";
if(dm.insertUpdateDelete(query)==true)
{
out.print("<script> alert('db is deleted');window.location.href='viewqb.jsp'</script>");
}
else
{
out.print("<script> alert('qb is  not deleted');window.location.href='viewqb.jsp'</script>");

}
%>