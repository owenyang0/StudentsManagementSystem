<%@page contentType="text/html;charset=utf-8" %>
<html>
<body bgcolor="#DCDADA">
<%
	//接收 teachlession_id参数
	 int teachlession_id=0;
	 try{
	 	 teachlession_id=Integer.parseInt(request.getParameter("teachlession_id"));
	 }catch(Exception e){}
%>
<jsp:useBean id="teachlession_delete" class="teachlessionman.teachlession_operation" scope="page"/>
<%
	int deleteReturn=teachlession_delete.teachlession_delete(teachlession_id);
	switch(deleteReturn){
		case 1:
			out.print("删除教师授课数据成功！"); break;
		case 2:
			out.print("数据库操作失败！");break;
		case 3:
			out.print("输入数据非法！");break;
		default:
			out.print("操作失败！");
	}
%>
<br><a href="teachlessionman.jsp">返回</a>
</body>
</html>