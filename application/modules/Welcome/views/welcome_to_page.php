<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<div class="container">
	<div class="row">
		<div class="col-lg-12 col-xs-12">
			Welcome
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12 col-xs-12">
			<?php
				echo $_SESSION['id'].'<br>';
				echo $_SESSION['username'].'<br>';
				echo $_SESSION['status'].'<br>';
				echo $_SESSION['status2'].'<br>';

				print_r($_SESSION);
			?>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12 col-xs-12">
		<!-- <form> -->
		<?php //echo form_open_multipart('http://mycodeigniter.vue.com/welcome/do_upload');?>
			<!-- <input type="file" name="userfile" id="userfile">
			<button class="form-control btn-primary">UPLOAD GO - ></button>
		</form> -->

		<?php 
		// $k= 501 ;
		// if($k<=50){
		// 	echo "Free";
		// }else{
		// 	if($k<=100){
		// 		echo $k*5;
		// 		exit;
		// 	}else if($k<=200){
		// 		echo ($k-100)*7+500;
		// 		exit;
		// 	}else if($k<=500){
		// 		echo ($k-200)*10+1200; // 1200 มาจาก 500 ใน 100 แรก 700 ใน 100 ที่สอง
		// 		exit;
		// 	}else if($k>500){
		// 		echo ($k-500)*15+4200; // +3000 ใน 300 ที่ต่อจากเดิม
		// 		exit;
		// 	}
		// }
		
		?>



		</div>

	</div>
	

</div>
