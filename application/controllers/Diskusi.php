<?php

  class Diskusi extends CI_Controller
  {
    
    function __construct()
    {
      parent::__construct();
      //checkAksesModule();
      $this->load->library('ssp');
      $this->load->model('Model_diskusi');
    }

    function data()
    {

      // nama table
      $table      = 'tbl_diskusi';
      // nama PK
      $primaryKey = 'id_diskusi';
      // list field yang mau ditampilkan
      $columns    = array(
            //tabel db(kolom di database) => dt(nama datatable di view)
            array('db' => 'id_diskusi', 'dt' => 'id_diskusi'),
            array('db' => 'nama', 'dt' => 'nama'),
            array('db' => 'forum_diskusi', 'dt' => 'forum_diskusi'),
            //untuk menampilkan aksi(edit/delete dengan parameter id)
            array(
                  'db' => 'id_diskusi',
                  'dt' => 'aksi',
                  'formatter' => function($d) {
                      return anchor('diskusi/edit/'.$d, '<i class="fa fa-edit"></i>', 'class="btn btn-xs btn-primary" data-placement="top" title="Edit"').' 
                      '.anchor('diskusi/delete/'.$d, '<i class="fa fa-times fa fa-white"></i>', 'class="btn btn-xs btn-danger" data-placement="top" title="Delete"');
                }
            )
        );

      $sql_details = array(
        'user' => $this->db->username,
        'pass' => $this->db->password,
        'db'   => $this->db->database,
        'host' => $this->db->hostname
        );

        echo json_encode(
          SSP::simple($_GET, $sql_details, $table, $primaryKey, $columns)
         );

    }

    function index()
    {
      $this->template->load('template', 'diskusi/view');
    }

    function add()
    {
      if (isset($_POST['submit'])) {
        $this->Model_diskusi->save();
        redirect('diskusi');
      } else {
        $this->template->load('template', 'diskusi/add');
      }
    }

    function edit()
    {
      if (isset($_POST['submit'])) {
        $this->Model_diskusi->update();
        redirect('diskusi');
      } else {
        $id_diskusi     = $this->uri->segment(3);
        $data['diskusi']  = $this->db->get_where('tbl_diskusi', array('id_diskusi' => $id_diskusi))->row_array();
        $this->template->load('template', 'diskusi/edit', $data);
      }
    }

    function delete()
    {
      $id_diskusi = $this->uri->segment(3);
      if (!empty($id_diskusi)) {
        $this->db->where('id_diskusi', $id_diskusi);
        $this->db->delete('tbl_diskusi');
      }
      redirect('diskusi');
    }

  }

?>