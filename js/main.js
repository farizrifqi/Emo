var dateskrg = new Date();
document.getElementById("tgllahir").value = dateskrg.getFullYear()+"-"+dateskrg.getMonth()+"-"+dateskrg.getDate();
var p = document.getElementById("password");
var rp = document.getElementById("repassword");

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
	