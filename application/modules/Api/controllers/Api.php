<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
    class Api extends CI_Controller
    {
        public $JSON_DATA;
        public function __construct()
        {
            parent::__construct();
            $this->load->model("api_model");
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
            echo $this->api_model->get_all_datamember();
        }
        // register
        public function save()
        {
            echo $this->api_model->save($this->JSON_DATA);
        }
        // update member
        public function update()
        {
            $id = $this->JSON_DATA["m_id"];
            unset($this->JSON_DATA["m_id"]);
            echo $this->api_model->update(
                 $this->JSON_DATA,
                array(
                    "m_id"=>$id
                )
            );
        }
        // delete member
        public function delete()
        {
            echo $this->api_model->delete(
                 $this->JSON_DATA
            );
        }
        // -------------------------------------------------------------------------------------------
        
        // Login 
        public function checkLogin()
        {	
            $the_user = $this->api_model->checkLogin($this->JSON_DATA);
            echo $the_user;
        }
        
        public function loadLogin(){
            $the_userold = $this->api_model->loadLogin($this->JSON_DATA);
            echo $the_userold;
        }
        //call by vue 
        public function log_out()
        {
            $the_userLogout = $this->api_model->log_out($this->JSON_DATA);
            echo $the_userLogout;
        }


        // codeigniter
        public function logout()
        {
            // ลบ session
            delete_cookie("user");
            $this->session->sess_destroy();
        }













        
    }

?>