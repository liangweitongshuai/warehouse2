<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>上传照片</title>
    <style>
        #img01{
            display: none;
        }
    </style>
</head>
<body>
       <form>
           请上传照片:<input type="file" id="uploadfile" name="uploadfile"/>
       </form>
        <img src="" id="img01" style="width: 300px;height: 300px"/>
       <img src="http://localhost:8080/imageCode"/>
        <script>
            var img01=document.getElementById("img01");
            uploadfile.addEventListener("change",function () {
                var uploadfiles=document.getElementById("uploadfile").files;
                var reader = new FileReader();
                reader.readAsDataURL(uploadfiles[0]);//发起异步请求
                reader.onload = function(){
                    //读取完成后,显示图片
                     img01.src=reader.result;
                     img01.style.display="block";
                }
        });
        </script>
</body>
</html>
