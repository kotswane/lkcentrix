<?php
	class Blacklist_model extends CI_Model {
		
		public function getAll()
        {
                $query = $this->db->get('blacklist');
                return $query->result();
        }
		
		public function getAllByFilter($data)
        {
                $query = $this->db->get('blacklist');
                return $query->result();
        }
		
		
	}
?>