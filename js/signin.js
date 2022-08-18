
function validate(){
const username = document.getElementById("username").value;
const password = document.getElementById("password").value;
const spec = document.getElementById('special');
const num = document.getElementById('number');
const length = document.getElementById('length');
if (password.match(/[!\@\#\$\%\^\&\*\_\+]/)){
    spec.style.color = 'green'
} else {
    spec.style.color = 'red'
}

if (password.length >= 8){
    length.style.color = 'green'
} else {
    length.style.color = 'red'
}

if (password.match(/[0-9]/)){
num.style.color = 'green'
} else {
    num.style.color = 'red'
}
if ( username == "username1!" && password == "password1!"){
window.location = "/home"; 
return false;
} 
else{
alert("Your username or password is incorrect!");
}
}
