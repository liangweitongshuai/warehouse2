<%--
  Created by IntelliJ IDEA.
  User: huyifan1202
  Date: 2020/11/2
  Time: 15:12
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="./css/style1.css"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<ul>
    <li><a href="liststudents.jsp?page=<%=1%>" id="firstPage"> 首 页</a></li>

    <%
        if(!pageUtil.isFirstPage()){
    %>
    <li><a href="liststudents.jsp?page=<%=pageUtil.getCurrentPage()-1%>" id="prevPage"> 上一页</a></li>
    <%
        }

        if(!pageUtil.isMaxPage()){
    %>
    <li><a href="liststudents.jsp?page=<%=pageUtil.getCurrentPage()+1%>" id="nextPage">下一页</a></li>
    <%
        }
    %>

    <li><a href="liststudents.jsp?page=<%=pageUtil.getMaxPage()%>" id="lastPage"> 尾 页</a></li>
    <li style="width:200px ">

        <form action="liststudents.jsp" method="post">
            <select name="page" id="selectPage">
                <option>请选择</option>
            </select>
            <input type="submit" name="submit" value="确定">
        </form>
    </li>
</ul>
<script>
    function insertPage(elements,maxpage){
        for(var i=1;i<=maxpage;i++){
            // console.log(elements.selected);
            elements.options.add(new Option(i,i));
        }
    }
    insertPage(document.getElementById("selectPage"),"<%=pageUtil.getMaxPage()%>");

</script>

<%
    /**
     * 实现动态跳页
     */
    int pageSize2=5;
    int pageBegin=1;
    String pagenum=request.getParameter("page");
    if(pagenum!=null){
        pageBegin=Integer.parseInt(pagenum);
    }
    for(int i=pageBegin;i<pageBegin+pageSize2;i++){
%>
<a href="liststudents.jsp?page=<%=i%>"><%=i%>&nbsp</a>
<%
        if(i>=pageUtil.getMaxPage()){
            break;
        }
    }
//    out.print(pageUtil.getMaxPage());
//    out.print(pageUtil.getCurrentPage());

%>
