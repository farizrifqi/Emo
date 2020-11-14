var dateskrg = new Date();
var p = document.getElementById("password");
var rp = document.getElementById("repassword");
document.getElementById("tgllahir").value = dateskrg.getFullYear()+"-"+dateskrg.getMonth()+"-"+dateskrg.getDate();
var check = function(){
				var oke = false;
				if (p.value === "" || rp.value === ""){
					if (p.value === ""){
						p.style.border = "1px solid #e74c3c";
					}else{
						rp.style.border = "1px solid #e74c3c";
					}		
					document.getElementById("warnregister").innerHTML = "*Password harus diisi";
				}else{
					p.style.border = "1px solid #bdc3c7";
					rp.style.border = "1px solid #bdc3c7";
					if(p.value !== rp.value){
						rp.style.border = "1px solid #e74c3c";
						document.getElementById("warnregister").innerHTML = "*Kedua password harus sama";
					}else{
						rp.style.border = "1px solid #bdc3c7";
						if(document.getElementById("agreement").checked === false){
							document.getElementById("warnregister").innerHTML = "*Jangan lupa centang persetujuan";
						}else{
							document.getElementById("warnregister").innerHTML = "";
							oke=true;
						}
					}
				}
				if (oke){
					document.getElementById("daftarakun").disabled=false;
				}else{
					document.getElementById("daftarakun").disabled=true;
				}
			}
function login(){
	if (document.getElementById("login-email").value == "user@user.com" && document.getElementById("login-pass").value == "a12345"){
		alert("Username atau password bener");
		window.location = "dashboard.html";
	}else{
		alert("Username atau password salah");
		console.log(document.getElementById("login-email").value);
	}
}
function switchPage(p){
	switch(p){
		case "aset":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/aset.html" ></object>';
		break;
		case "transaksi":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/transaksi.html" ></object>';
		break;
		default:
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/beranda.html" ></object>';
		break;
	}
}
