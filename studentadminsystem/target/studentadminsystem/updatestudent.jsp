<%@ page import="edu.njfu.sas.model.Student" %>
<%@ page import="edu.njfu.sas.dao.impl.StudentDaoImpl" %>
<%@ page import="edu.njfu.sas.dao.StudentDao" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改学生页面</title>
</head>
<body>
<h1>修改学生信息</h1><hr>
<%
    String stuno = request.getParameter("stuno");
    Student student=null;
    if(stuno==null){
        out.print("<script>alert('未获取到学生信息,请先选择需要修改的学生');location.href='liststudents.jsp'</script>");
    }else {
        student=new StudentDaoImpl().getStudentByNo(stuno);

%>
<form action="/studentadminsystem_war_exploded/updateUserInfo" method="post">
请输入学号:<input type="text" id="stuno" name="stuno" value="<%=student.getStuNo()%>" readonly>   <br>
请输入姓名:<input type="text" id="stuname" name="stuname" value="<%=student.getStuName()%>">   <br>
请选择班级:<select name="classes" id="classes" id="classes">
    <option value="1808041" >软件工程1808041</option>
    <option value="1808042" >软件工程1808042</option>
    <option value="j1808041">计算机应用技术1808041</option>
    <option value="j1808042">计算机应用技术1808042</option>
</select>
<br>
请选择性别:<select id="gender" name="gender">
    <%
        if(student.getGender().equals("男")){
    %>
    <option  value="男" selected>男</option>
    <option  value="女">女</option>
    <%
        }else{
    %>
    <option  value="男" >男</option>
    <option  value="女" selected>女</option>
    <%
        }
    %>
</select>
<br>
请选择系部:<select id="department" name="department">
    <option  value="软件工程">软件工程</option>
    <option  value="计算机应用">计算机应用</option>
</select>
<br>
请输入电话:<input type="tel" id="tel" name="tel" value="<%=student.getTel()%>">                            <br>
请选择宿舍:<select id="dormno" name="dormno">
    <option  value="3-101">3-101</option>
    <option  value="4-304">4-304</option>
</select>
<br>
<%
    }
%>
<script>
    function addSelected(ele,value){
        var options=ele.options;
        for(option of options){
             if(option.value==value){
                 option.selected=true;
             }
        }
    }
    //更新班级信息
    var clases=document.getElementById("classes");
    addSelected(clases,"<%=student.getClasses()%>");
    //更新系部
    var department=document.getElementById("department");
    addSelected(department,"<%=student.getDepartment()%>");
    //更新宿舍
    var dormno=document.getElementById("dormno");
    addSelected(dormno,"<%=student.getDormNo()%>");
</script>
<input type="submit" value="提交" name="submit">
</form>
<%
    /**
     * 1.如何判断提交?
     */
    /**
     * 2. 由于Stuno 为disable ,数据不能提交过来,
     *   stuno在整个页面中不会发生变化,可以直接使用
     *   如果必须要提交,可以使用js 在提交是修改disable为false,
     */
    /**
     * 3.调用updateStudent(Student s)方法更新学生信息,
     *    如果本方法没有创建,创建它
     */
    /**
     * 4. 根据updateStudent()返回结果,给出提示,
     *    成功,跳转到liststudent页面
     *    失败,跳转到error页面
     */
%>
</body>
</html>
