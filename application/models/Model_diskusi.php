<?php

  class Model_diskusi extends CI_Model
  {

    public $table = "tbl_diskusi ";

    function save()
    {
      $data = array(
        //tabel di database => name di form
        'nama'       => $this->input->post('nama', TRUE),
        'forum_diskusi'   => $this->input->post('forum_diskusi', TRUE),
      );
      $this->db->insert($this->table, $data);
    }

    function update()
    {
      $data = array(
        //tabel di database => name di form
        'nama'       => $this->input->post('nama', TRUE),
        'forum_diskusi'   => $this->input->post('forum_diskusi', TRUE),
      );
      $id_diskusi  = $this->input->post('id_diskusi');
      $this->db->where('id_diskusi', $id_diskusi);
      $this->db->update($this->table, $data);
    }

  }

?>