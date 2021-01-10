<%@ page import="edu.njfu.sas.dao.StudentDao" %>
<%@ page import="edu.njfu.sas.util.PageUtil" %>
<%@ page import="edu.njfu.sas.dao.impl.StudentDaoImpl" %>
<%@ page import="edu.njfu.sas.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<html>

<script>
    // document.onload=function (){
    //     var firstPage= document.getElementById("firstPage");
    //     alert(firstPage)
    <%--firstPage.herf="liststudentbypaging?page="+<%=pageUtil.nextPage()%>;--%>
    // }
</script>
<head>
    <title>学生列表展示</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<h1 align="center" >学生列表展示</h1>
<hr>
<form action="liststudents.jsp" post="post">
    请输入姓名：<input type="text" id="userName" name="userName">
    <input type="submit" value="确定" id="submit" name="submit">
    <br>
    <a href="addstudent.jsp">添加学生信息</a>
    <br>
    <a href="delstudent.jsp">删除学生信息</a>
</form>
<hr>

<table>
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>班级</td>
        <td>性别</td>
        <td>系部</td>
        <td>电话</td>
        <td>宿舍号</td>
        <td>照片</td>
        <td>操作</td>
    </tr>
    <%
        String submit=request.getParameter("submit");
        StudentDao sdao=new StudentDaoImpl();
        PageUtil pageUtil=new PageUtil(sdao.totalRecords(),5,1);
        List<Student> students;
        if(submit!=null&&submit.equals("确定")){
            String name=request.getParameter("userName");
            students= sdao.getStudentsByName(name);
        }else{
            String currentPage=request.getParameter("page");
            if(currentPage==null){
                currentPage="1";
            }
            int pagenum=Integer.parseInt(currentPage);

//            int page=
            students=sdao.getStudentByPaging(pagenum,pageUtil.getPageSize());
            request.setAttribute("firstPage",1);
//            if(pagenum<pageUtil.getMaxPage()){
//                pagenum++;
//            }
            pageUtil.setCurrentPage(pagenum);
//                request.set
        }


        for(Student s:students){
//        out.println(s.getStuName());
    %>
    <tr>

        <td><%=s.getStuNo()%></td>
        <td><%=s.getStuName()%></td>
        <td><%=s.getClasses()%></td>
        <td><%=s.getGender()%></td>
        <td><%=s.getDepartment()%></td>
        <td><%=s.getTel()%></td>
        <td><%=s.getDormNo()%></td>
        <td>
            <img src="<%=s.getPhotoPath()%>" style="width: 100px;height: 100px"/>
        </td>
        <td>
            <a href="updatestudent.jsp?stuno=<%=s.getStuNo()%>">修改</a>
        </td>
    </tr>
    <%
        }
    %>

</table>

<%@include file="page.jsp" %>
<br>
<br><br>
<br><br>
<br>

</body>
</html>
