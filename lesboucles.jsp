<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>

<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>
    <% int cpt = Integer.parseInt(valeur); %>

    <h2>Exercice 1 : Le carré d'étoiles</h2>
    <% for (int ligne = 1; ligne <= cpt; ligne++) { %>
        <% for (int etoile = 1; etoile <= cpt; etoile++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 2 : Triangle rectangle gauche</h2>
    <% for (int ligne = 1; ligne <= cpt; ligne++) { %>
        <% for (int etoile = 1; etoile <= ligne; etoile++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 3 : Triangle rectangle inversé</h2>
    <% for (int ligne = cpt; ligne > 0; ligne--) { %>
        <% for (int etoile = 1; etoile <= ligne; etoile++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 4 : Triangle rectangle 2</h2>
    <% for (int ligne = 1; ligne <= cpt; ligne++) { %>
        <% for (int espace = cpt - ligne; espace > 0; espace--) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int etoile = 1; etoile <= ligne; etoile++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 5 : Triangle isocèle</h2>
    <% for (int ligne = 1; ligne <= cpt; ligne++) { %>
        <% for (int espace = cpt - ligne; espace > 0; espace--) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int etoile = 1; etoile <= (2 * ligne) - 1; etoile++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 6 : Le demi losange</h2>
    <% for (int ligne = 1; ligne <= cpt; ligne++) { %>
        <% for (int espace = cpt - ligne; espace > 0; espace--) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int etoile = 1; etoile <= ligne; etoile++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    <% for (int ligne = cpt - 1; ligne > 0; ligne--) { %>
        <% for (int espace = cpt - ligne; espace > 0; espace--) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int etoile = 1; etoile <= ligne; etoile++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <h2>Exercice 7 : La table de multiplication</h2>
    <% for (int i = 1; i <= cpt; i++) { %>
        <%= cpt + " x " + i + " = " + (cpt * i) + "<br>" %>
    <% } %>
<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
