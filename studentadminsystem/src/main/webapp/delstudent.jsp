<%@ page import="edu.njfu.sas.dao.impl.StudentDaoImpl" %>
<%@ page import="edu.njfu.sas.model.Student" %>
<%@ page import="edu.njfu.sas.dao.StudentDao" %><%--
  Created by IntelliJ IDEA.
  User: huyifan1202
  Date: 2021/1/3
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除学生</title>
</head>
<body>
<h1>删除学生</h1><hr>
<form action="/studentadminsystem_war_exploded/del" method="post">
    请输入学号:<input type="text" id="stuno" name="stuno">
    <input type="submit" value="删除" id="submit2" name="submit2">
</form>
<%--<%--%>
<%--    request.setCharacterEncoding("UTF-8");--%>
<%--    String submit2=request.getParameter("submit2");--%>
<%--    StudentDao sdao=new StudentDaoImpl();--%>

<%--    String stuno=request.getParameter("stuno");--%>
<%--    if (submit2!=null && submit2.equals("删除")) {--%>
<%--        sdao.delStudent(stuno);--%>
<%--        out.print("<script>alert('删除数据成功'); </script>");--%>
<%--    }--%>
<%--%>--%>
</body>
</html>