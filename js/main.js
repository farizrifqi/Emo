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
					$("#daftarakun").prop('disabled', false);
				}else{
					$("#daftarakun").prop('disabled', true);
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
		case "deposit":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/deposit.html" ></object>';
		break;
		case "withdraw":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/withdraw.html" ></object>';
		break;
		default:
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/beranda.html" ></object>';
		break;
	}
}

