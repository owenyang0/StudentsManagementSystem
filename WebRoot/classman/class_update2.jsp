<html>
<body bgcolor="#DCDADA">
<%
//接收class_id参数
int class_id=0;
try{
	class_id=Integer.parseInt(request.getParameter("class_id"));
}catch(Exception e){}
String class_name=request.getParameter("class_name");
%>
<jsp:useBean id="class_update" class="classman.class_operation" scope="page"/>
<%
	//根据结果提示操作信息
	int updateReturn=class_update.class_update(class_id,class_name);
	switch(updateReturn){
	case 1:
		out.print("更新数据库成功！");break;
	case 2:
		out.print("数据库操作失败！");break;
	case 3:
		out.print("此班级已存在！");break;
	case 4:
		out.print("输入数据非法！"); break;
	default:
		out.print("操作失败！");
	}
%>
<br><a href="class_add.jsp">返回</a>
</body>
</html>