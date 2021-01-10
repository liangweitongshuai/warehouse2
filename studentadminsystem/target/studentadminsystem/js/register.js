function  checkInput(){
    var userName=document.getElementById('username');
    var password=document.getElementById('password');
    var password2=document.getElementById('password2');
    // alert(userName)
    if(userName.value.length==0){
        alert("密码不为空");
        return false;
    }
    if(userName.value.length<6){
        alert("账号要有6位");
        return false;
    }
    if(password.value.length==0){
        alert("密码不为空");
        return false;
    }
    if(password.value.length<6){
        alert("密码要有6位");
        return false;
    }
    if(password.value!=password2.value){
        alert("两次密码不匹配");
        return false;
    }
    return true;
}



