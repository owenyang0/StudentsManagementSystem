<%@page contentType="text/html;charset=utf-8" %>
<html>
<body bgcolor="#DCDADA">
<%	
	//接收student_id,class_id参数
	int student_id=0;
	int class_id=0;
	try{
		student_id=Integer.parseInt(request.getParameter("student_id"));
		class_id=Integer.parseInt(request.getParameter("class_id"));
	}catch(Exception e){}
	String student_name=request.getParameter("student_name");
	if(student_name!=null&&student_name.equals("null"))
		student_name=null;
%>
<jsp:useBean id="student_update" class="studentman.student_operation" scope="page" />
<%
	//根据结果提示操作信息
	int updateReturn =student_update.student_update(student_id,student_name,class_id);
	switch(updateReturn){
		case 1:
			out.print("更新学生数据成功！");break;
		case 2:
			out.print("数据库操作失败！");break;
		case 3:
			out.print("此学生已存在！");break;
		case 4:
			out.print("输入数据非法！");break;
		default:
			out.print("操作失败！");
	}
 %>	
 <br><a href="studentman.jsp">返回</a>
 </body>
 </html>