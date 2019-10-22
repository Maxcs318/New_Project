<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
    class Award extends CI_Controller
    {
        // public $JSON_DATA;
        public function __construct()
        {
            parent::__construct();
            $this->load->model("Award_model");
            $this->load->model('../../Check_/models/Check__model');
            $this->output->set_content_type("application/json", 'utf-8');
            // $this->output->set_header("Access-Control-Allow-Origin: *");
            $this->output->set_header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
            $this->output->set_header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");

            $this->load->helper("URL", "DATE", "URI", "FORM");//
            $this->load->library('form_validation');//

        }
        // get all award_list
        public function get_all_award_list()
        {
            echo $this->Award_model->get_all_award_list();
        }
        // insert_award_list
        public function insert_award_list()
        {
            // check status for insert
            $creator = json_decode($this->input->post('creator'));
            if($creator==null || $creator==''){
                echo 'fail';
                exit;
            }
            $creatorID  = $this->Check__model->chk_token($creator);
            $statusUser = $this->Check__model->chk_status($creatorID);
            if( $statusUser != 'admin' ){
                echo 'fail';
                exit ;
            }
            $award_list = (array)json_decode($this->input->post('award_list'));
            $award_listInsert = $this->Award_model->insert_award_list($award_list);
            echo json_encode($award_listInsert);
        }
        // update award
        public function update_award_list()
        {
            // check status for insert
            $creator = json_decode($this->input->post('creator'));
            if($creator==null || $creator==''){
                echo 'fail';
                exit;
            }
            $creatorID  = $this->Check__model->chk_token($creator);
            $statusUser = $this->Check__model->chk_status($creatorID);
            if( $statusUser != 'admin' ){
                echo 'fail';
                exit ;
            }
            $award_list = (array)json_decode($this->input->post('award_list'));
            $award_listID['al_id'] = $award_list['al_id'];
            unset($award_list['al_id']); 

            $award_Update = $this->Award_model->update_award_list($award_list,$award_listID);
            if($award_Update==true){
                $award_list['al_id'] = $award_listID['al_id'];
                echo json_encode($award_list);
            }
        }
        // delete award_list
        public function delete_award_list()
        {
            // check status for insert
            $creator = json_decode($this->input->post('creator'));
            if($creator==null || $creator==''){
                echo 'fail';
                exit;
            }
            $creatorID  = $this->Check__model->chk_token($creator);
            $statusUser = $this->Check__model->chk_status($creatorID);
            if( $statusUser != 'admin' ){
                echo 'fail';
                exit ;
            }
            $awardID = json_decode($this->input->post('awardID'));
            $award['al_id'] = $awardID;
            $award_delete = $this->Award_model->delete_award_list($award);
            if($award_delete == true){
                echo json_encode($awardID);
            }

        }




        // ====================================================
        //get all award type
        public function get_all_award_type()
        {
            echo $this->Award_model->get_all_award_type();     
        }



        // =====================================================
        // get all award years
        public function get_all_award_years()
        {
            echo $this->Award_model->get_all_award_years();   
        }




        // =====================================================
        // get all company
        public function get_all_company()
        {
            echo $this->Award_model->get_all_company();    
        }

        

        


        
    }

?>