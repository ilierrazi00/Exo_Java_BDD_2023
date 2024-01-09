<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Exercices Java JSP</title>
</head>
<body bgcolor="white">

<h1>Exercices Java JSP</h1>

<!-- Exercice 1 : Comparaison -->
<h2>Exercice 1 : Comparaison</h2>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" name="valeurA"></p>
    <p>Saisir la valeur B : <input type="text" name="valeurB"></p>
    <p>Saisir la valeur C : <input type="text" name="valeurC"></p>
    <p><input type="submit" value="Vérifier"></p>
</form>

<%
    String valeurA = request.getParameter("valeurA");
    String valeurB = request.getParameter("valeurB");
    String valeurC = request.getParameter("valeurC");

    if (valeurA != null && valeurB != null && valeurC != null) {
        int intValeurA = Integer.parseInt(valeurA);
        int intValeurB = Integer.parseInt(valeurB);
        int intValeurC = Integer.parseInt(valeurC);

        if (intValeurC >= intValeurA && intValeurC <= intValeurB) {
%>
            <p>Oui, C est compris entre A et B.</p>
<%
        } else {
%>
            <p>Non, C n'est pas compris entre A et B.</p>
<%
        }
    }
%>

<!-- Exercice 2 : Pair ou Impair -->
<h2>Exercice 2 : Pair ou Impair</h2>
<form action="#" method="post">
    <p>Saisir la valeur : <input type="text" name="nombre"></p>
    <p><input type="submit" value="Vérifier"></p>
</form>

<%
    String valeurNombre = request.getParameter("nombre");

    if (valeurNombre != null) {
        int intNombre = Integer.parseInt(valeurNombre);

        if (intNombre % 2 == 0) {
%>
            <p>Le nombre est pair.</p>
<%
        } else {
%>
            <p>Le nombre est impair.</p>
<%
        }
    }
%>

<p><a href="index.html">Retour au sommaire</a></p>

</body>
</html>
