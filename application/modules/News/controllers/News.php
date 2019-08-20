<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
    class News extends CI_Controller
    {
        // public $JSON_DATA;
        public function __construct()
        {
            parent::__construct();
            $this->load->model("news_model");
            $this->load->model('../../Check_/models/Check__model');
            $this->output->set_content_type("application/json", 'utf-8');
            // $this->output->set_header("Access-Control-Allow-Origin: *");
            $this->output->set_header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
            $this->output->set_header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");

            $this->load->helper("URL", "DATE", "URI", "FORM");//
            $this->load->library('form_validation');//

        }
        // get all News
        public function get_all_news()
        {
            echo $this->news_model->get_all_news();
        }
        // insert News
        public function insert_news()
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
            // insert
            $news = (array)json_decode($this->input->post('news'));
                $ranSTR = date('dmYHis').substr(str_shuffle(str_repeat('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', mt_rand(1,10))), 1, 10);
                $nameF = substr(strrev($_FILES['userfile']['name']), 0, strrpos(strrev($_FILES['userfile']['name']),"."));
                $typeF = strrev($nameF);
                $_FILES['userfile']['name'] = $ranSTR.'.'.$typeF;
                $config = array(
                    'upload_path'      => './../client/src/assets/News/',
                    'allowed_types' => '*',
                    'max_size'      => '0',
                );
                $this->load->library('upload', $config);
                if ($this->upload->do_upload('userfile')){
                    $data = array('upload_data' => $this->upload->data());
                    $news['n_image'] = $_FILES['userfile']['name'];
                    $createM ;
                        if(date('m')==1){
                            $createM = 'มกราคม';
                        }else if(date('m')==2){
                            $createM = 'กุมภาพันธ์';
                        }else if(date('m')==3){
                            $createM = 'มีนาคม';
                        }else if(date('m')==4){
                            $createM = 'เมษายน';
                        }else if(date('m')==5){
                            $createM = 'พฤษภาคม';
                        }else if(date('m')==6){
                            $createM = 'มิถุนายน';
                        }else if(date('m')==7){
                            $createM = 'กรกฎาคม';
                        }else if(date('m')==8){
                            $createM = 'สิงหาคม';
                        }else if(date('m')==9){
                            $createM = 'กันยายน';
                        }else if(date('m')==10){
                            $createM = 'ตุลาคม';
                        }else if(date('m')==11){
                            $createM = 'พฤษจิกายน';
                        }else if(date('m')==12){
                            $createM = 'ธันวาคม';                            
                        }
                    $createY = date('Y')+543;
                    $news['n_date'] = date('d').' '.$createM.' '.$createY;
                    $thisID = $this->news_model->insert_news($news);
                    $news['n_id']=$thisID;
                    echo json_encode($news);

                }else{
                    $error = array('error' => $this->upload->display_errors());
                    print_r($error);
                }
            
        }










        
    }

?>