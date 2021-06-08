function Validation()                                    
{ 
    var name = document.forms["register"]["name"];               
    var email = document.forms["register"]["email"];    
    var phone = document.forms["register"]["phone_number"];  
    var address =  document.forms["register"]["address"];  
    var password = document.forms["register"]["password"];  
    var username = document.forms["register"]["username"];  
    var day = document.forms["register"]["day"];
    var month = document.forms["register"]["month"];
    var year = document.forms["register"]["year"];

    var username_error = document.getElementById('username_error');
    var password_error = document.getElementById('password_error');
    var name_error = document.getElementById('name_error');
    var email_error = document.getElementById('email_error');
    var phone_error = document.getElementById('phone_error');
    var add_error = document.getElementById('add_error');
    var birth_error = document.getElementById("birth_error");

//    var emailRegex = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
//    var phoneRegex = /^[0][1-9]\d{9}$|^[1-9]\d{9}$/;

    var emailRegex = /^\w+@[a-zA-Z]{3,}\.com$/i;
    var phoneRegex = /^\d{3}[-\s]?\d{3}[-\s]?\d{4}$/;
       
    if (username.value === ""){ 
        username.style.border = "1px solid red";
        document.getElementById('username_error').style.color = "red";
        username_error.textContent = "Cần điền tên tài khoản";
        username.focus();
        return false; 
    } 
    
    if (username.value.length < 4){ 
        username.style.border = "1px solid red";
        document.getElementById('username_error').style.color = "red";
        username_error.textContent = "Tên tài khoản gồm ít nhất 4 kí tự";
        username.focus();
        return false; 
    } 

    if (password.value === ""){ 
        password.style.border = "1px solid red";
        document.getElementById('password_error').style.color = "red";
        password_error.textContent = "Cần điền mật khẩu";
        password.focus(); 
        return false; 
    } 
    
    if (password.value.length < 8 || password.value.length > 16) { 
        password.style.border = "1px solid red";
        document.getElementById('password_error').style.color = "red";
        password_error.textContent = "Mật khẩu không hợp lệ";
        password.focus(); 
        return false; 
    } 

    if (name.value === "") { 
        name.style.border = "1px solid red";
        document.getElementById('name_error').style.color = "red";
        name_error.textContent = "Cần điền tên";
        name.focus(); 
        return false; 
    } 

    if (email.value === ""){ 
        email.style.border = "1px solid red";
        document.getElementById('email_error').style.color = "red";
        email_error.textContent = "Cần điền thông tin email";
        email.focus(); 
        return false; 
    } 


    if(!emailRegex.test(email.value)){
        email.style.border = "1px solid red";
        document.getElementById('email_error').style.color = "red";
        email_error.textContent = "Email không hợp lệ";
        email.focus();
        return false;
    }

    if (phone.value === ""){ 
        phone.style.border = "1px solid red";
        document.getElementById('phone_error').style.color = "red";
        phone_error.textContent = "Cần điền số điện thoại";
        phone.focus(); 
        return false; 
    } 


    if(!phoneRegex.test(phone.value)){
        phone.style.border = "1px solid red";
        document.getElementById('phone_error').style.color = "red";
        phone_error.textContent = "Số điện thoại không hợp lệ";
        phone.focus();
        return false;
    }

     
   
    if (address.value === "")                               
    { 
        address.style.border = "1px solid red";
        document.getElementById('add_error').style.color = "red";
        add_error.textContent = "Cần điền địa chỉ";
        address.focus();
        return false; 
    }
    
    switch (month){
        case 2:
            if(year % 4 === 0 && day > 29){
                day.style.borde = "1px solid red";
                document.getElementById("birth_error").style.color="red";
                birth_error.textContent="Ngày sinh không hợp lệ";
                day.focus();
                month.focus();
                year.focus();
                return false;
            }
            if(year % 4 > 0 && day > 28){
                day.style.borde = "1px solid red";
                document.getElementById("birth_error").style.color="red";
                birth_error.textContent="Ngày sinh không hợp lệ";
                day.focus();
                month.focus();
                year.focus();
                return false;
            }
        case 4:
        case 6:
        case 9:
        case 11:
            if(day > 30){
                day.style.borde = "1px solid red";
                document.getElementById("birth_error").style.color="red";
                birth_error.textContent="Ngày sinh không hợp lệ";
                day.focus();
                month.focus();
                year.focus();
                return false;
            }       
    }

    return true;
}

function change(){
    var oldPassword = document.forms["change"]["oldPass"];
    var newPassword = document.forms["change"]["newPass"];
    var conPassword = document.forms["change"]["conPass"];
    
    var new_error = document.getElementById("new_error");
    var con_error = document.getElementById("con_error");
    var old_error = document.getElementById("old_error")
    
    if(oldPassword.value === ""){
        oldPassword.style.border = "1px solid red";
        document.getElementById('new_error').style.color = "red";
        old_error.textContent = "Cần điền mật khẩu cũ";
        oldPassword.focus(); 
        return false;
    }
    
    if(newPassword.value === ""){
        newPassword.style.border = "1px solid red";
        document.getElementById('new_error').style.color = "red";
        new_error.textContent = "Cần điền mật khẩu mới";
        newPassword.focus(); 
        return false;
    }
    
    if(newPassword.value < 8 || newPassword.value > 16){
        newPassword.style.border = "1px solid red";
        document.getElementById('new_error').style.color = "red";
        new_error.textContent = "Mật khẩu không hợp lệ";
        newPassword.focus(); 
        return false;
    }
    
    if(conPassword.value === ""){
        conPassword.style.border = "1px solid red";
        document.getElementById('new_error').style.color = "red";
        con_error.textContent = "Cần điền mật khẩu xác nhận";
        conPassword.focus(); 
        return false;
    }
    
    if(newPassword.value !== conPassword.value){
        conPassword.style.borde = "1px solid red";
        document.getElementById("con_error").style.color="red";
        con_error.textContent="Mật khẩu xác nhận không trùng khớp";
        conPassword.focus();
        return false;
    }
}