<%@ page import="edu.njfu.sas.dao.StudentDao" %>
<%@ page import="edu.njfu.sas.dao.impl.StudentDaoImpl" %>
<%@ page import="edu.njfu.sas.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>
</head>
<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>
</head>
<body>
<h1>添加学生</h1><hr>
<form action="/studentadminsystem_war_exploded/add" method="post">
    请输入学号:<input type="text" id="stuno" name="stuno"><br>
    请输入姓名:<input type="text" id="stuname" name="stuname"><br>
    请选择班级:<select name="classes" id="classes">
    <option value="1808041">软件工程41</option>
    <option value="1808042">软件工程42</option>
    <option value="1805041">计算机应用41</option>
    <option value="1805042">计算机应用42</option>
</select><br>
    请选择性别:<select name="gender" id="gender">
    <option value="男">男</option>
    <option value="女">女</option>
</select><br>
    请选择系部:<select name="department" id="department">
    <option value="软件工程">软件工程</option>
    <option value="计算机应用">计算机应用</option>
</select><br>
    请输入电话:<input type="text" id="tel" name="tel"><br>
    请选择宿舍:<select name="dormno" id="dormno">
    <option value="3-101">3-101</option>
    <option value="10-404">10-404</option>
</select><br>

    <input type="submit" value="确认" id="submit" name="submit">
</form>
<%--<%--%>
<%--    request.setCharacterEncoding("UTF-8");--%>
<%--    String submit=request.getParameter("submit");--%>
<%--    StudentDao sdao=new StudentDaoImpl();--%>

<%--    String stuno=request.getParameter("stuno");--%>
<%--    String stuname=request.getParameter("stuname");--%>
<%--    String classes=request.getParameter("classes");--%>
<%--    String gender=request.getParameter("gender");--%>
<%--    String department=request.getParameter("department");--%>
<%--    String tel=request.getParameter("tel");--%>
<%--    String dormno=request.getParameter("dormno");--%>
<%--    if (submit!=null && submit.equals("确认")) {--%>
<%--        Student student = new Student(stuno, stuname, classes, gender, department, tel, dormno, null);--%>
<%--        sdao.saveStudent(student);--%>

<%--        out.print("<script>alert('插入数据成功'); </script>");--%>
<%--    }--%>
<%--%>--%>
</body>
</html>
