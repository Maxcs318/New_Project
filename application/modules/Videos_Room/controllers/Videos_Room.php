<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
    class Videos_Room extends CI_Controller
    {
        // public $JSON_DATA;
        public function __construct()
        {
            parent::__construct();
            $this->load->model("Videos_Room_model");
            $this->output->set_content_type("application/json", 'utf-8');
            // $this->output->set_header("Access-Control-Allow-Origin: *");
            $this->output->set_header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
            $this->output->set_header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");

            $this->load->helper("URL", "DATE", "URI", "FORM");//
            $this->load->library('form_validation');//

        }
        // get all Videos
        public function get_all_videos()
        {
            echo $this->Videos_Room_model->get_all_videos();
        }
        //get all Video_room
        public function get_all_video_room()
        {
            echo $this->Videos_Room_model->get_all_video_room();
        }
        // insert Room
        public function insert_room()
        {
            $newRoom = (array)json_decode($this->input->post('room'));
            $creater = json_decode($this->input->post('creater'));
            if($creater==null || $creater==''){
                echo 'fail';
                exit;
            }
            $createrID  = $this->Videos_Room_model->chk_token($creater);
            $statusUser = $this->Videos_Room_model->chk_status($createrID);

            if( $statusUser != 'admin' ){
                echo 'fail';
                exit ;
            }
             
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
            $newRoom['vr_create_date'] = date('d').' '.$createM.' '.$createY;
            $newRoom['vr_owner'] = $createrID;
            $thisID = $this->Videos_Room_model->insert_room($newRoom);
            $newRoom['vr_id'] = $thisID;
            echo json_encode($newRoom);

                
        }










        
    }

?>