function switchPage(p){
	switch(p){
		case "aset":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/aset.php" ></object>';
		break;
		case "transaksi":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/transaksi.html" ></object>';
		break;
		case "deposit":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/deposit.php" ></object>';
		break;
		case "withdraw":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/withdraw.html" ></object>';
		break;
		default:
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/beranda.php" ></object>';
		break;
	}
}

