<%@page import="java.sql.*"%>
<%
    Connection koneksi = null;

    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/fomesis4";
        koneksi = DriverManager.getConnection(url,"root","");
        
        out.println("koneksi Berhasil " );
        
    } catch(Exception e){
       out.println("Koneksi gagal: " + e.getMessage());
    }
%>