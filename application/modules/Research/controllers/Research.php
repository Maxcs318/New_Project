<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
    class Research extends CI_Controller
    {
        // public $JSON_DATA;
        public function __construct()
        {
            parent::__construct();
            $this->load->model("research_model");
            $this->load->model('../../Check_/models/Check__model');
            $this->load->model('../../Files_Upload/models/Files_Upload_model');
            $this->output->set_content_type("application/json", 'utf-8');
            // $this->output->set_header("Access-Control-Allow-Origin: *");
            $this->output->set_header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
            $this->output->set_header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");

            $this->load->helper("URL", "DATE", "URI", "FORM");//
            $this->load->library('form_validation');//

        }
        // get all Research
        public function get_all_research()
        {
            echo $this->research_model->get_all_research();
        }
        public function insert_research()
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
            // set key
            $key_link = 'R'.date('dmYHis').substr(str_shuffle(str_repeat('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', mt_rand(1,10))), 1, 10);
            // insert research
            $research = (array)json_decode($this->input->post('research'));
            $file_title = (array)json_decode($this->input->post('file_title'));
            $research['r_file_key'] = $key_link;
            $research['r_create_date'] = $this->Check__model->date_time_now();
            $thisID = $this->research_model->insert_research($research);
            $research['r_id']=$thisID;


                // insert file_upload
                $filesAll = array();
                $research_dataFiles=[];
                
                if(isset($_FILES['userfileupload0'])){
                $filesupload_length = sizeof($_FILES);
                for($x = 0; $x < $filesupload_length; $x++) {
                    // Set New FileName
                    $ranSTR = date('dmYHis').substr(str_shuffle(str_repeat('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', mt_rand(1,10))), 1, 10);
                    $nameF = substr(strrev($_FILES['userfileupload'.$x]['name']), 0, strrpos(strrev($_FILES['userfileupload'.$x]['name']),"."));
                    $typeF = strrev($nameF);
                    $_FILES['userfileupload'.$x]['name'] = $ranSTR.'.'.$typeF;
                    // End Set FileName
                    $configFiles = array(
                        'upload_path'   => './../public/assets/Research_Files_Upload/',
                        'allowed_types' => '*',
                        'max_size'      => '0',
                    );
                    $this->load->library('upload', $configFiles,'files_upload');
                    $this->files_upload->initialize($configFiles);
                    if ($this->files_upload->do_upload('userfileupload'.$x)){
                        $data = array('upload_data' => $this->files_upload->data());
                        array_push($filesAll,array(
                            'f_name'=>$_FILES['userfileupload'.$x]['name'],
                            'f_title'=>$file_title[$x],
                            'f_key'=>$key_link,
                            'f_create_date'=>$this->Check__model->date_time_now()
                        ));
                    }else{
                        $error = array('error' => $this->upload->display_errors());
                        print_r($error);
                    }
                } 
                if(sizeof($filesAll) == $filesupload_length){
                    $dataFiles = $this->Files_Upload_model->insert_files_upload($filesAll);
                    array_push($research_dataFiles,array('research'=>$research,'files'=>$dataFiles));
                }else{
                    echo 'Error !!!';
                }
            }else{
                array_push($research_dataFiles,array('research'=>$research,'files'=>null));

            }
                echo json_encode($research_dataFiles);

        }
















        
    }

?>