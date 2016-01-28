<?php
	/**
	* 
	*/
	class ModelDesignGridbanner extends Model
	{
		
		public function add($data){
			$this->even->triger('pre.admin.gridbanner.add',$data);
			$this->db>query(" INSERT INTO ".DB_PREFIX."grid_banner (template,path_img,url) values('".$data['template']."','".$data['path_img']."','".$data['url']."')  ");
		}

		public function get(){
			$query = $this->db->query("SELECT * FROM ".DB_PREFIX."grid_banner");
			return $query->row;
		}
	}
?>