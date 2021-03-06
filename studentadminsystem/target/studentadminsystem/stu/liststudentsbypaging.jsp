<%@ page import="edu.njfu.sas.dao.impl.StudentDaoImpl" %>
<%@ page import="edu.njfu.sas.dao.StudentDao" %>
<%@ page import="edu.njfu.sas.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="edu.njfu.sas.util.PageUtil" %><%--
  Created by IntelliJ IDEA.
  User: lqj
  Date: 2020/10/12
  Time: 3:27 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <title>学生列表展示</title>
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
<h1 align="center">软件工程18级学生信息表</h1>
<hr>
    <form action="liststudents.jsp" method="post">
        请输入姓名: <input type="text" id="userName" name="userName">
        <input type="submit" value="确定" id="submit" name="submit">
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
    /**
     * 如何修改代码,能够支持分页?
     */
    String page1 = request.getParameter("page");
    int pageSize=5;
    long totalRecords=0;
    int currentPage=0;
    //判断page是否存在? page1==null 设置page1=1,初始值设置为第1页
    if(page1==null){
        page1="1";
    }
    currentPage=Integer.parseInt(page1);
    StudentDao sdao=new StudentDaoImpl();
    //获取并优化总记录数,把总记录数保存到request中
    Object totals = request.getAttribute("totals");
    if(totals==null){
        totalRecords=sdao.totalRecords();
        request.setAttribute("totals",totalRecords);
    }else{
        totalRecords=(Long)totals;
    }
    //创建Pageutil对象
    PageUtil pageUtil = new PageUtil(totalRecords, pageSize,currentPage);
    List<Student> students=sdao.getStudentByPaging(pageUtil.getCurrentPage(),pageSize);
    for(Student s:students){
%>
<%--使用table来展示学生信息--%>
      <tr>
          <td><%=s.getStuNo()%></td>
          <td><%=s.getStuName()%></td>
          <td><%=s.getClasses()%></td>
          <td><%=s.getGender()%></td>
          <td><%=s.getDepartment()%></td>
          <td><%=s.getTel()%></td>
          <td><%=s.getDormNo()%></td>
          <td>
              <img src="<%=s.getPhotoPath()%>" style="width: 50px;height: 50px"/>
          </td>
           <td>
               <a href="../updatestudent.jsp?stuno=<%=s.getStuNo()%>">修改</a>
           </td>
      </tr>
    <%
        }
    %>
</table>
<hr>
<%@include file="../page.jsp" %>
</body>
</html>
