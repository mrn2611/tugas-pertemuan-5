<%@page import="java.sql.*"%>
<%@include file="db/koneksi.jsp" %>
<%
    String noIdentitas = request.getParameter("no_identitas");
    String nama = request.getParameter("nama");
    String alamat = request.getParameter("alamat");
    String jenisKelamin = request.getParameter("jenis_kelamin");
    String noHp = request.getParameter("no_hp");
    String email = request.getParameter("email");
    String tglLahir = request.getParameter("tanggal_lahir");

    try {
        String sql = "INSERT INTO pelanggan (no_identitas, nama, alamat, jenis_kelamin, no_hp, email, tanggal_lahir) VALUES (?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = koneksi.prepareStatement(sql);
        ps.setString(1, noIdentitas);
        ps.setString(2, nama);
        ps.setString(3, alamat);
        ps.setString(4, jenisKelamin);
        ps.setString(5, noHp);
        ps.setString(6, email);
        ps.setString(7, tglLahir);

        int hasil = ps.executeUpdate();
        if(hasil > 0) {
            out.println("<script>alert('Data Berhasil Disimpan!'); window.location='index.jsp';</script>");
        }
        koneksi.close();
    } catch (Exception e) {
        out.println("Terjadi kesalahan: " + e.getMessage());
    }
%>