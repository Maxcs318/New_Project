<?php

    Class Api_model extends CI_Model{

        public $tableName;

        public function __construct()
        {
            parent::__construct();
            $this->tableName = 'member';
            $this->logged = 'logged';

            $this->load->library('session');//

        }
        // all member
        public function get_all_datamember()
        {
            return json_encode($this->db->get($this->tableName)->result());
        }
        // register
        public function save($data = array())
        {
            $insert = $this->db->insert($this->tableName,$data);
            if($insert){
                return json_encode(
                    array("insert_id" => $this->db->insert_id())
                );
            }
        }
        // update member
        public function update($data = array(),$where = array())
        {
            return json_encode($this->db->where($where)->update($this->tableName,$data));
        }
        // delete member
        public function delete($where = array())
        {
            return json_encode($this->db->where($where)->delete($this->tableName));
        }

        // ----------------------------------------------------------------------------------------

        // login 
        public function checkLogin($where = array())
        {	
            $query = $this->db->where($where)->get($this->tableName)->result();
            if($query != null){
                $Now_user = $query[0];
                    $genDate = date('dmYHis').$Now_user->m_id;
                    $data = array('l_id_m_id'=>$Now_user->m_id,'token'=>$genDate);
                    $create_token = $this->db->insert($this->logged,$data);
                    if($create_token == true){
                        $Now_user->token_logged = $genDate;
                        return json_encode($Now_user);
                    }                
            }else{
                return json_encode('');
            }
        }

        public function loadLogin($where = array())
        {
            $userold = $this->db->where($where)->get($this->logged)->result();
            if($userold == true){
                $old_id = array('m_id'=>$userold[0]->l_id_m_id);
                    $Now_userold = $this->db->where($old_id)->get($this->tableName)->result();
                    return json_encode($Now_userold[0]);
            }else{
                return json_encode('');
            }
        }

        public function log_out($where = array())
        {
            $id_logout = $this->db->where($where)->get($this->logged)->result();
            // return json_encode($id_logout[0]->l_id_m_id);
            if($id_logout == true){
                $do_logout = array('l_id_m_id'=>$id_logout[0]->l_id_m_id);
                    $exit = $this->db->where($do_logout)->delete($this->logged);
                    return json_encode('success');
            }else{
                return json_encode('error');
            }
        }













        
    }
?>