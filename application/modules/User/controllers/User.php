<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
    class User extends CI_Controller
    {
        public $JSON_DATA;
        public function __construct()
        {
            parent::__construct();
            $this->load->model("user_model");
            $this->load->model('../../Check_/models/Check__model');
            $this->output->set_content_type("application/json", 'utf-8');
            // $this->output->set_header("Access-Control-Allow-Origin: *");
            $this->output->set_header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
            $this->output->set_header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");

            $this->JSON_DATA = (array)json_decode(file_get_contents("php://input"));
            $this->load->helper("URL", "DATE", "URI", "FORM");//
            // $this->load->helper(array("URL", "DATE", "URI", "FORM"));
            $this->load->library('form_validation');//

        }
        // all members
        public function get_all_datamember()
        {
            echo $this->user_model->get_all_datamember();
        }
        // register
        public function save()
        {
            echo $this->user_model->save($this->JSON_DATA);
        }
        
        // -------------------------------------------------------------------------------------------
        
        // Login 
        public function checkLogin()
        {	
            $the_user = $this->user_model->checkLogin($this->JSON_DATA);
            echo $the_user;
        }
        
        public function loadLogin(){
            $the_userold = $this->user_model->loadLogin($this->JSON_DATA);
            echo $the_userold;
        }
        //call by vue 
        public function log_out()
        {
            $the_userLogout = $this->user_model->log_out($this->JSON_DATA);
            echo $the_userLogout;
        }

        // Edit Profile
        public function edit_profile()
        {
            // check status for edit
            $own = json_decode($this->input->post('own_id'));
            if($own==null || $own==''){
                echo 'fail';
                exit;
            }
            $ownID  = $this->Check__model->chk_token($own);

            $profile = (array)json_decode($this->input->post('profile'));
            if( $ownID != $profile['m_id'] ){
                echo 'fail';
                exit ;
            }
            // do edit
            if(isset($_FILES['userfile'])){
                $ranSTR = date('dmYHis').substr(str_shuffle(str_repeat('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', mt_rand(1,10))), 1, 10);
                $nameF = substr(strrev($_FILES['userfile']['name']), 0, strrpos(strrev($_FILES['userfile']['name']),"."));
                $typeF = strrev($nameF);
                $_FILES['userfile']['name'] = $ranSTR.'.'.$typeF;
                $config = array(
                    'upload_path'      => './../client/src/assets/Profile_Image/',
                    'allowed_types' => '*',
                    'max_size'      => '0',
                );
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('userfile')){
                    $data = array('upload_data' => $this->upload->data());
                    $profile['m_imageprofile'] = $_FILES['userfile']['name'];
                }else{
                    $error = array('error' => $this->upload->display_errors());
                    print_r($error);
                    exit;
                }
            }
            unset($profile['m_id']);
            // block edit this data 
            unset($profile['m_status']);
            unset($profile['m_type']);
            unset($profile['m_create_date']);
            $Edit_ID = array('m_id'=>$ownID);
            $profile['m_update_date'] = $this->Check__model->date_time_now();
            $Do_edit = $this->user_model->edit_profile($profile,$Edit_ID);
            $profile['m_id'] = $ownID;
            if($Do_edit == true){
                $profile['m_id'] = $ownID;
                echo json_encode($profile);
            }

        }











        
    }

?>