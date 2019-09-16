<?php header('Access-Control-Allow-Origin: *'); ?>
<?php
    class Order extends CI_Controller
    {
        public $JSON_DATA;
        public function __construct()
        {
            parent::__construct();
            $this->load->model("order_model");
            $this->load->model('../../Check_/models/Check__model');
            $this->load->model('../../Files_Upload/models/Files_Upload_model');
            $this->output->set_content_type("application/json", 'utf-8');
            // $this->output->set_header("Access-Control-Allow-Origin: *");
            $this->output->set_header("Access-Control-Allow-Methods: GET, POST , OPTIONS");
            $this->output->set_header("Access-Control-Allow-Headers: Content-Type, Content-Length, Accept-Encoding");

            $this->load->helper("URL", "DATE", "URI", "FORM");//
            $this->load->library('form_validation');//

        }
        // all order
        public function get_all_order()
        {
            echo $this->order_model->get_all_order();
        }
        // all order_status
        public function get_all_order_status()
        {
            echo $this->order_model->get_all_order_status();
        }
        // all order_items
        public function get_all_order_items()
        {
            echo $this->order_model->get_all_order_items();
        }
        // create order
        public function create_order(){
            // check status for create order
            $own = json_decode($this->input->post('own_id'));
            if($own==null || $own==''){
                echo 'fail';
                exit;
            }
            $ownID  = $this->Check__model->chk_token($own);
            // echo $ownID;
            $order_input = (array)json_decode($this->input->post('order'));
            // echo $ownID;
            // print_r($order);
            $price_total = 0;
            $order_item=[];
            for($k=0; $k<sizeof($order_input); $k++){
                if($order_input[$k]->quantity>0){
                    array_push($order_item,$order_input[$k]);
                    $price_total = $price_total + $order_item[$k]->price_total;
                }
            }
            $order['o_total_price'] = $price_total;
            $order['o_code_order'] = $ownID.substr(str_shuffle(str_repeat('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ', mt_rand(1,10))), 1, 10);
            $order['o_status_id'] = 1;
            $order['o_create_date'] = $this->Check__model->date_time_now();
            // print_r ($order_input);
            
            print_r ($order_item);
            print_r ($order);
            // echo json_encode($order);
            

            
        }

















        
    }

?>