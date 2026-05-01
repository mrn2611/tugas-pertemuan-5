<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Form Registrasi Pelanggan</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Registrasi Pelanggan Baru</h2>
        <form action="prosesInput.jsp" method="post">
            <div class="form-group">
                <label>Nomor Identitas:</label>
                <input type="text" name="no_identitas" required>
            </div>
            <div class="form-group">
                <label>Nama Lengkap:</label>
                <input type="text" name="nama" required>
            </div>
            <div class="form-group">
                <label>Alamat:</label>
                <textarea name="alamat" rows="3" required></textarea>
            </div>
            <div class="form-group">
                <label>Jenis Kelamin:</label>
                <div class="radio-group">
                    <label><input type="radio" name="jenis_kelamin" value="Laki-Laki" required> Laki-Laki</label>
                    <label><input type="radio" name="jenis_kelamin" value="Perempuan" required> Perempuan</label>
                </div>
            </div>
            <div class="form-group">
                <label>Nomor HP:</label>
                <input type="text" name="no_hp" required>
            </div>
            <div class="form-group">
                <label>Email:</label>
                <input type="email" name="email" required>
            </div>
            <div class="form-group">
                <label>Tanggal Lahir:</label>
                <input type="date" name="tanggal_lahir" required>
            </div>
            <button type="submit" class="btn-submit">Daftar Pelanggan</button>
        </form>
    </div>
</body>
</html>