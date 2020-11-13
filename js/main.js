var p = document.getElementById("password");
var rp = document.getElementById("repassword");
var check = function(){
	if(p.value !== "" && rp.value !== ""){
		if(p.value != rp.value){
			rp.style.border = "1px solid #e74c3c";
		}else{
			rp.style.border = "1px solid #bdc3c7";
		}
	}
}