<?php

    Class Award_model extends CI_Model{

        public function __construct()
        {
            parent::__construct();
            $this->output->set_content_type("application/json", 'utf-8');
            $this->award_list = 'award_list';
            $this->award_type = 'award_type';
            $this->award_year = 'award_year';
            $this->company = 'company';

        }
        // get all award_list
        public function get_all_award_list()
        {
            $award_list_All = $this->db->get($this->award_list)->result(); 
            return json_encode($award_list_All);      
        }
        // insert award_list
        public function insert_award_list($data=array())
        {
            $ins = $this->db->insert($this->award_list,$data);
            if($ins){
                $data['al_id'] = $this->db->insert_id();
            }
            return json_encode($data);
        }
        // update award_list
        public function update_award_list($data = array(), $where = array())
        {
            return json_encode($this->db->where($where)->update($this->award_list,$data));
        }
        // delete awart_list
        public function delete_award_list($where = array()){
            return json_encode($this->db->where($where)->delete($this->award_list));
        }










        // ====================================================
        public function get_all_award_type()
        {
            $award_list_All = $this->db->get($this->award_type)->result(); 
            return json_encode($award_list_All);      
        }








        // =====================================================
        public function get_all_award_years()
        {
            $award_list_All = $this->db->get($this->award_year)->result(); 
            return json_encode($award_list_All);      
        }









        // =====================================================
        public function get_all_company()
        {
            $award_list_All = $this->db->get($this->company)->result(); 
            return json_encode($award_list_All);      
        }




        
    }
?>