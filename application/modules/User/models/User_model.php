<?php

    Class User_model extends CI_Model{

        public $tableName;

        public function __construct()
        {
            parent::__construct();
            $this->load->model('../../Check_/models/Check__model');
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
            $data['m_create_date'] = $this->Check__model->date_time_now();
            $data['m_status'] = 'user';
            if($data['m_username'] == ''||$data['m_username'] == null ){
                return 'fail';
                // exit;
            }
            if($data['m_password'] == ''||$data['m_password'] == null ){
                return 'fail';
                // exit;
            }
            $new_username['m_username'] = $data['m_username'];
            $checkMember = $this->db->where($new_username)->get($this->tableName)->result(); 
            if($checkMember != []){
                return 'fail' ;

            }

            $insert = $this->db->insert($this->tableName,$data);
            if($insert){
                return json_encode(
                    array("insert_id" => $this->db->insert_id())
                );
            }
        }

        // ----------------------------------------------------------------------------------------

        // login 
        public function checkLogin($where = array())
        {	
            $query = $this->db->where($where)->get($this->tableName)->result();
            if($query != null){
                $Now_user = $query[0];
                    $genDate = date('dmYHis').$Now_user->m_id.substr(str_shuffle(str_repeat('0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', mt_rand(1,10))), 1, 10);
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

        // Edit Profile
        public function edit_profile($data = array(),$where = array())
        {
            $statusEdit = $this->db->where($where)->update($this->tableName,$data);
            return json_encode($statusEdit);
        }











        
    }
?>