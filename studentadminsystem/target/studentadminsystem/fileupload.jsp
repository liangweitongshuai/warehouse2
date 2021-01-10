<%--
  Created by IntelliJ IDEA.
  User: lqj
  Date: 2020/12/14
  Time: 3:22 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<body>
   <form action="fileUploadServlet" method="post" enctype="multipart/form-data">
       请输入你的名字:<input type="text" name="username" id="username"/><br>
       请输入上传文件:<input type="file" id="uploadfile" name="uploadfile" multiple/><br>
       <input type="submit" value="提交">
   </form>
</body>
</html>
