function switchPage(p){
	switch(p){
		case "aset":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/aset.php" ></object>';
		break;
		case "transaksi":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/transaksi.php" ></object>';
		break;
		case "deposit":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/deposit.php" ></object>';
		break;
		case "withdraw":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/withdraw.php" ></object>';
		break;
		case "riwayat":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/riwayat_login.php" ></object>';
		break;
		case "admin":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/beranda-admin.php" ></object>';
		break;
		case "deposit-admin":
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/deposit-admin.php" ></object>';
		break;
		default:
			document.getElementById("main-content").innerHTML='<object type="text/html" width="100%" height="100%" data="page/beranda.php" ></object>';
		break;
	}
}

