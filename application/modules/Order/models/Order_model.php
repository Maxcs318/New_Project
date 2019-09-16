<?php

    Class Order_model extends CI_Model{

        public $tableName;

        public function __construct()
        {
            parent::__construct();
            $this->load->model('../../Check_/models/Check__model');
            $this->orders = 'orders';
            $this->order_status = 'order_status';
            $this->order_items = 'order_items';


        }
        // all order
        public function get_all_order()
        {
            return json_encode($this->db->get($this->orders)->result());
        }
        // all order_status
        public function get_all_order_status()
        {
            return json_encode($this->db->get($this->order_status)->result());
        }
        // all order_item
        public function get_all_order_items()
        {
            return json_encode($this->db->get($this->order_items)->result());
        }
        
        // insert order
        public function x()
        {
            
        }
        // insert order_items











        
    }
?>