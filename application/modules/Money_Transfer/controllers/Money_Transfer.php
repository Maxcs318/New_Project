<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
    class Money_Transfer extends CI_Controller
    {
        public $JSON_DATA;
        public function __construct()
        {
            parent::__construct();
            $this->load->model("Money_Transfer_model");
            $this->load->model('../../Check_/models/Check__model');
            $this->load->model('../../Files_Upload/models/Files_Upload_model');
            $this->load->model('../../Shipping_Address/models/Shipping_Address_model');
            $this->output->set_content_type("application/json", 'utf-8');
            // $this->output->set_header("Access-Control-Allow-Origin: *");
            $this->output->set_header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
            $this->output->set_header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");

            $this->load->helper("URL", "DATE", "URI", "FORM");//
            $this->load->library('form_validation');//

        }
        // all Money_Transfer
        public function get_all_money_transfer()
        {
            echo $this->Money_Transfer_model->get_all_money_transfer();
        }
        // insert money transfer
        public function money_trasfer_insert()
        {
            // check status for confirm money transfer
            $own = json_decode($this->input->post('own_id'));
            if($own==null || $own==''){
                echo 'fail';
                exit;
            }
            $order = (array)json_decode($this->input->post('order'));
            $ownID  = $this->Check__model->chk_token($own);
            if($ownID != $order['o_own_id']){
                echo 'fail';
                exit;
            }
            $money_tf = (array)json_decode($this->input->post('money_transfer'));
            if($money_tf['mtf_payments_id']!=1){
                $money_tf['mtf_banking_id']='';
            }
            
            $money_tf['mtf_create_date'] = $this->Check__model->date_time_now();
            $money_tf['mtf_member_id'] = $ownID;
            $money_tf['mtf_id'] = $this->Money_Transfer_model->money_trasfer_insert($money_tf);

            $order_set['o_id'] = $order['o_id'];
            $order_set['o_status_id'] = 2;
            $order_set['o_money_transfer_id'] = $money_tf['mtf_id'];
            // print_r($money_tf);
            // print_r($order_set);
            print_r($money_tf);

            
            
            // echo $this->Money_Transfer_model->money_trasfer_insert();
        }
        
       












        
    }

?>