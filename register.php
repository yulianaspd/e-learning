<?php
@session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <title>Daftar CBT <?=NAMA_SEKOLAH;?></title>
    <link href="style/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="style/assets/css/font-awesome.css" rel="stylesheet" />
    <link href="style/assets/css/style.css" rel="stylesheet" />
</head>
<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    Anda sudah punya akun ? Silahkan <a href="./" class="btn btn-xs btn-danger">Login</a>
                </div>
            </div>
        </div>
    </header>
    <!-- HEADER END-->
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="./">
                    <h4 style="color: white;"><?=NAMA_SEKOLAH;?></h4>
                    <h5 style="color: white;"><?=ALAMAT_SEKOLAH;?></h5>
                </a>

            </div>

            <div class="left-div">
                <div class="user-settings-wrapper">
                    <ul class="nav">
                        <li class="dropdown">
                            <a class="dropdown-toggle">
                                <span class="glyphicon glyphicon-user" style="font-size: 25px;"></span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <li><a <?php if(@$_GET['page'] == '') { echo 'class="menu-top-active"'; } ?> href="?hal=daftar">Register</a></li>
                            <li><a <?php if(@$_GET['page'] == 'berita') { echo 'class="menu-top-active"'; } ?> href="?hal=daftar&page=berita">Berita</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="content-wrapper">
        <div class="container">
            <?php
            if(@$_GET['page'] == '') { ?>
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-head-line">Halaman pendaftaran akun e-learning</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h4><i>Masukkan data Anda dengan benar !</i></h4>
                        <form method="post" enctype="multipart/form-data">
                            NIS* :<input type="text" name="nis" class="form-control" required />
                            Nama Lengkap* : <input type="text" name="nama_lengkap" class="form-control" required />
                            Tempat Lahir* : <input type="text" name="tempat_lahir" class="form-control" required />
                            Tanggal Lahir* : <input type="date" name="tgl_lahir" class="form-control" required />
                            Jenis Kelamin* :
                            <select name="jenis_kelamin" class="form-control" required>
                                <option value="">- Pilih -</option>
                                <option value="L">Laki-laki</option>
                                <option value="P">Perempuan</option>
                            </select>
                            Agama* :
                            <select name="agama" class="form-control" required>
                                <option value="">- Pilih -</option>
                                <option value="Islam">Islam</option>
                                <option value="Kristen">Kristen</option>
                                <option value="Katholik">Katholik</option>
                                <option value="Hindu">Hindu</option>
                                <option value="Budha">Budha</option>
                                <option value="Konghucu">Konghucu</option>
                            </select>
                            Nama Ayah* : <input type="text" name="nama_ayah" class="form-control" required />
                            Nama Ibu* : <input type="text" name="nama_ibu" class="form-control" required />
                            Nomor Telepon : <input type="text" name="no_telp" class="form-control" />
                            Email : <input type="email" name="email" class="form-control" />
                            Alamat* : <textarea name="alamat" class="form-control" rows="3" required></textarea>
                            Kelas* :
                            <select name="kelas" class="form-control" required>
                                <option value="">- Pilih -</option>
                                <?php
                                $sql_kelas = mysqli_query($db, "SELECT * from tb_kelas") or die ($db->error);
                                while($data_kelas = mysqli_fetch_array($sql_kelas)) {
                                    echo '<option value="'.$data_kelas['id_kelas'].'">'.$data_kelas['nama_kelas'].'</option>';
                                } ?>
                            </select>
                            Tahun Masuk* :
                            <select name="thn_masuk" class="form-control" required>
                                <option value="">- Pilih -</option>
                                <?php
                                for ($i = 2020; $i >= 2000; $i--) { 
                                    echo '<option value="'.$i.'">'.$i.'</option>';
                                } ?>
                            </select>
                            Foto : <input type="file" name="gambar" class="form-control" />
                            Username* : <input type="text" name="user" class="form-control" required />
                            Password* : <input type="password" name="pass" class="form-control" required />
                            <br />
                            <i><b>Catatan</b> : Tanda * wajib disi</i>
                            <hr />
                            <input type="submit" name="daftar" value="Daftar" class="btn btn-info" />
                            <input type="reset" class="btn btn-danger" />
                        </form>
                        <?php
                        if(@$_POST['daftar']) {
                            $nis = @mysqli_real_escape_string($db, $_POST['nis']);
                            $nama_lengkap = @mysqli_real_escape_string($db, $_POST['nama_lengkap']);
                            $tempat_lahir = @mysqli_real_escape_string($db, $_POST['tempat_lahir']);
                            $tgl_lahir = @mysqli_real_escape_string($db, $_POST['tgl_lahir']);
                            $jenis_kelamin = @mysqli_real_escape_string($db, $_POST['jenis_kelamin']);
                            $agama = @mysqli_real_escape_string($db, $_POST['agama']);
                            $nama_ayah = @mysqli_real_escape_string($db, $_POST['nama_ayah']);
                            $nama_ibu = @mysqli_real_escape_string($db, $_POST['nama_ibu']);
                            $no_telp = @mysqli_real_escape_string($db, $_POST['no_telp']);
                            $email = @mysqli_real_escape_string($db, $_POST['email']);
                            $alamat = @mysqli_real_escape_string($db, $_POST['alamat']);
                            $kelas = @mysqli_real_escape_string($db, $_POST['kelas']);
                            $thn_masuk = @mysqli_real_escape_string($db, $_POST['thn_masuk']);
                            $user = @mysqli_real_escape_string($db, $_POST['user']);
                            $pass = @mysqli_real_escape_string($db, $_POST['pass']);
                            $pass = md5($pass);

                            $sumber = @$_FILES['gambar']['tmp_name'];
                            $target = DIR_ASSETS.'img/foto_siswa/';
                            $nama_gambar = @$_FILES['gambar']['name'];

                            $sql_cek_user = mysqli_query($db, "SELECT * FROM tb_siswa WHERE username = '$user'") or die ($db->error);
                            if(mysqli_num_rows($sql_cek_user) > 0) {
                                echo "<script>alert('Username yang Anda pilih sudah ada, silahkan ganti yang lain');</script>";
                            } else {
                                if($nama_gambar != '') {
                                    if(move_uploaded_file($sumber, $target.md5($nis.$nama_gambar).'.'.pathinfo($nama_gambar, PATHINFO_EXTENSION))) {
                                        $nama_gambar = md5($nis.$nama_gambar).'.'.pathinfo($nama_gambar, PATHINFO_EXTENSION); 
                                        $sql = "INSERT INTO tb_siswa(
                                                                nis,
                                                                nama_lengkap,
                                                                tgl_lahir,
                                                                jenis_kelamin,
                                                                agama,
                                                                nama_ayah,
                                                                nama_ibu,
                                                                no_telp,
                                                                email,
                                                                alamat,
                                                                id_kelas,
                                                                thn_masuk,
                                                                foto,
                                                                username,
                                                                password,
                                                                pass,
                                                                status,
                                                                tempat_lahir)
                                                             VALUES(
                                                                '$nis', 
                                                                '$nama_lengkap', 
                                                                '$tgl_lahir', 
                                                                '$jenis_kelamin', 
                                                                '$agama', 
                                                                '$nama_ayah', 
                                                                '$nama_ibu', 
                                                                '$no_telp', 
                                                                '$email', 
                                                                '$alamat', 
                                                                '$kelas', 
                                                                '$thn_masuk', 
                                                                '$nama_gambar', 
                                                                '$user', 
                                                                '$pass', 
                                                                '$_POST[pass]', 
                                                                'tidak aktif',
                                                                '$tempat_lahir')";
                                        $r = mysqli_query($db, $sql) or die ($db->error);          
                                        if($r){echo '<script>alert("Pendaftaran berhasil, silahkan login"); window.location="./"</script>';}
                                        else echo '<script>alert("terjadi kesalahan");'; 
                                    } else {
                                        echo '<script>alert("Gagal mendaftar, foto gagal diupload, coba lagi!");</script>';
                                    }
                                } else {
                                    mysqli_query($db, "INSERT INTO tb_siswa(
                                                                    nis,
                                                                nama_lengkap,
                                                                tgl_lahir,
                                                                jenis_kelamin,
                                                                agama,
                                                                nama_ayah,
                                                                nama_ibu,
                                                                no_telp,
                                                                email,
                                                                alamat,
                                                                id_kelas,
                                                                thn_masuk,
                                                                foto,
                                                                username,
                                                                password,
                                                                pass,
                                                                status,
                                                                tempat_lahir) 
                                                                VALUES(
                                                                '$nis', 
                                                                '$nama_lengkap', 
                                                                '$tgl_lahir', 
                                                                '$jenis_kelamin', 
                                                                '$agama', 
                                                                '$nama_ayah', 
                                                                '$nama_ibu', 
                                                                '$no_telp', 
                                                                '$email', 
                                                                '$alamat', 
                                                                '$kelas', 
                                                                '$thn_masuk', 
                                                                'anonim.png', 
                                                                '$user', 
                                                                '$pass', 
                                                                '$_POST[pass]', 
                                                                'tidak aktif',
                                                                '$tempat_lahir'
                                                        )") or die ($db->error);          
                                    echo '<script>alert("Pendaftaran berhasil, tunggu akun aktif dan silahkan login"); window.location="./"</script>';
                                }
                            }
                        }
                        ?>
                    </div>
                    <div class="col-md-6">
                        <div class="alert alert-warning">
                            Untuk menggunakan layanan e-learning ini kalian harus memiliki akun terlebih dahulu.
                        </div>
                    </div>
                </div>
            <?php
            } else if(@$_GET['page'] == 'berita') {
                include "inc/berita.php";
            } ?>
        </div>
    </div>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    &copy; <?=date('Y');?> CBT <?=NAMA_SEKOLAH;?> | By : <?=COMPANY;?>
                </div>

            </div>
        </div>
    </footer>
    <script src="style/assets/js/jquery-1.11.1.js"></script>
    <script src="style/assets/js/bootstrap.js"></script>
</body>
</html>
