<?php
include '../lib/koneksi.php';
include '../lib/function.php';

if (empty($_POST['t'])){
	$result = ["success" => false, "reason" => "unknown parameter"];
}else{
	switch($_POST['t']){
		case 'register':
			if($_POST['pw'] != $_POST['repw']){
					$result = ["success" => false, "reason" => "password tidak sama"];
				}else{
					if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){
						$result = ["success" => false, "reason" => "Email tidak sesuai"];
					}else{
						if ($con->query("SELECT * FROM user where email='".$_POST['email']."'")->num_rows  > 0){
							$result = ["success" => false, "reason" => "email telah terdaftar"];
						}else{
							$pw = strrev(base64_encode(base64_encode(strrev($_POST['pw']))));
							$query = "INSERT INTO user (email, password, nama_depan, nama_belakang, no_hp, tanggal_lahir, alamat, register_date)
							values ('".$_POST['email']."', '".$pw."', '".$_POST['namadepan']."', '".$_POST['namabelakang']."', '".$_POST['nohp']."', '".$_POST['tgl']."', '".$_POST['alamat']."', '".date('Y-m-d')."')
							";
							if ($con->query($query)){
								$result = ["success" => true];
							}else{
								$result = ["success" => false, "reason" => $con->error];
							}
						}
					}
				}
		break;
		case 'deposit':
			$result = ["yoi" => "yoiiii"];
		break;
		default:
			$result = ["success" => false, "reason" => "unknown parameter"];
		break;
	}
}
print_r(json_encode($result));

?>