<section class="content">
    <div class="row">
        <div class="col-xs-12">

          <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Forum Diskusi</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?php
                echo form_open('diskusi/edit', 'role="form" class="form-horizontal"');
                echo form_hidden('id_diskusi', $diskusi['id_diskusi']);
            ?>

                <div class="box-body">

                  <div class="form-group">
                      <label class="col-sm-2 control-label">Nama</label>

                      <div class="col-sm-9">
                        <input type="text" value="<?php echo $diskusi['nama']; ?>" name="nama" class="form-control" placeholder="Masukkan Nama">
                      </div>
                  </div>

                  <div class="form-group">
                      <label class="col-sm-2 control-label">Isi Diskusi</label>

                      <div class="col-sm-9">
                        <input type="text" value="<?php echo $diskusi['forum_diskusi']; ?>" name="forum_diskusi" class="form-control" placeholder="Masukkan Isi Diskusi">
                      </div>
                  </div>

                  <div class="form-group">
                      <label class="col-sm-2 control-label"></label>

                      <div class="col-sm-1">
                        <button type="submit" name="submit" class="btn btn-primary btn-flat">Simpan</button>
                      </div>

                      <div class="col-sm-1">
                        <?php
                          echo anchor('diskusi', 'Kembali', array('class'=>'btn btn-danger btn-flat'));
                        ?>
                      </div>
                  </div>

                </div>
                <!-- /.box-body -->
            </form>
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
