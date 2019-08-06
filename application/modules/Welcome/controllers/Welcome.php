<?php
	header('Access-Control-Allow-Origin: *'); 
	header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
	header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");
?>
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Welcome extends MX_Controller {
	public function __construct()
	{
		parent::__construct();
		// $this->output->set_content_type("application/json", 'utf-8');
        // $this->output->set_header("Access-Control-Allow-Origin: *");
        // $this->output->set_header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
        // $this->output->set_header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");

        $this->load->helper("URL", "DATE", "URI", "FORM");//
        $this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');//
		$this->load->helper('cookie');

	}

	public function index()
	{
		if(!empty($_SESSION['status'])){
			$this->load->view('welcome_to_login');
			// redirect('http://localhost:8080/','refresh');
		}else if(empty($_SESSION['status']) || $_SESSION['status'] == ''){
			$this->load->view('welcome_to_login');
		}
	}

	public function checkLogin()
	{	
		$username=$this->input->post('username');
		$password=md5($this->input->post('password'));

			$this->load->model('welcome_model');			
			$user_token  = $this->welcome_model->check_User($username,$password);

			// $this->output->set_content_type("application/json", 'utf-8');
			// echo $user_token;

			$cookie_name = "token_user";
			$cookie_value = $user_token;
			setcookie($cookie_name, $cookie_value, time() + (60), "/");
			
			redirect(base_url(),'refresh');
	}

	public function checkLogged()
	{
		$this->output->set_content_type("application/json", 'utf-8');

		if(!empty($_COOKIE['token_user'])){
			echo $_COOKIE['token_user'];
			// echo json_encode($_COOKIE['token_user']);
		}else{
			echo 'no user token !!';
		}
		
	}

	public function logout()
	{
		// ลบ session
		delete_cookie('token_user');
		$this->session->sess_destroy();
		redirect(base_url(),'refresh');
		// redirect(base_url('welcome/index'),'refresh');
	}
	//
	
}
