<?php
	class Client_model extends CI_Model {
		
		public function create($data){		
			$this->db->insert('client',$data);
			return (($this->db->insert_id()>0)?true:false);
		}
		
		public function get(){
			$query = $this->db->get('client');
			return $query->result();
		}
		
		public function update($data,$id){
			$this->db->where('id', $id);
			$this->db->update('client', $data); 
			return (($this->db->affected_rows()>0)?true:false);
		}
		
		public function getById($id){
			$query = $this->db->get_where('client', array('id' => $id));
            return $query->result();
		}		
		
	}
?>