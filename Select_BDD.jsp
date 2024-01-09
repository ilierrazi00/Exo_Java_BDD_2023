<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion à MariaDB via JSP</title>
</head>
<body>
    <h1>Exemple de connexion à MariaDB avec JSP</h1>
    <% 
        String url = "jdbc:mariadb://localhost:3306/films";
        String user = "mysql";
        String password = "mysql";

        Class.forName("org.mariadb.jdbc.Driver");
        Connection conn = DriverManager.getConnection(url, user, password);

        String sql = "SELECT idFilm, titre, année FROM Film WHERE année >= 2000 AND année < 2015";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            String colonne1 = rs.getString("idFilm");
            String colonne2 = rs.getString("titre");
            String colonne3 = rs.getString("année");
            out.println("id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "<br>");
        }

        rs.close();
        pstmt.close();
        conn.close();
    %>

    <h2>Exercice 2 : Année de recherche</h2>
    <form action="#" method="post">
        <p>Année de recherche : <input type="text" name="anneeRecherche"></p>
        <input type="submit" value="Rechercher">
    </form>

    <h2>Exercice 3 : Modification du titre du film</h2>
    <form action="#" method="post">
        <p>ID du film : <input type="text" name="idFilm"></p>
        <p>Nouveau titre : <input type="text" name="nouveauTitre"></p>
        <input type="submit" value="Modifier">
    </form>

    <h2>Exercice 4 : La valeur maximum</h2>
    <form action="#" method="post">
        <p>Titre du nouveau film : <input type="text" name="titreNouveauFilm"></p>
        <p>Année du nouveau film : <input type="text" name="anneeNouveauFilm"></p>
        <input type="submit" value="Ajouter">
    </form>

</body>
</html>
