<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les chaines de caractères</h1>
<form action="#" method="post">
    <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>

<%-- Récupération des valeurs --%>
<% String chaine = request.getParameter("chaine"); %>

<% if (chaine != null) { %>

<%-- Exercices sur les chaines --%>
    <% int longueurChaine = chaine.length(); %>
    <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>
    <% char caractereExtrait = chaine.charAt(2); %>
    <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>
    <% String sousChaine = chaine.substring(2, 6); %>
    <p>Une sous chaine de votre texte : <%= sousChaine %></p>
    <% char recherche = 'e'; 
       int position = chaine.indexOf(recherche); %>
    <p>Votre premier "e" est en : <%= position %></p>

    <h2>Exercice 1 : Combien de 'e' dans notre chaine de charactère ?</h2>
    <% int compteE = 0;
       for (int i = 0; i < longueurChaine; i++) {
           if (chaine.charAt(i) == 'e') compteE++;
       }
    %>
    <p>Nombre de 'e' dans la chaine : <%= compteE %></p>

    <h2>Exercice 2 : Affichage vertical</h2>
    <% for (int i = 0; i < longueurChaine; i++) { %>
        <%= chaine.charAt(i) %><br>
    <% } %>

    <h2>Exercice 3 : Retour à la ligne</h2>
    <% String[] mots = chaine.split(" ");
       for (String mot : mots) { %>
        <%= mot %><br>
    <% } %>

    <h2>Exercice 4 : Afficher une lettre sur deux</h2>
    <% for (int i = 0; i < longueurChaine; i += 2) { %>
        <%= chaine.charAt(i) %>
    <% } %><br>

    <h2>Exercice 5 : La phrase en verlan</h2>
    <% for (int i = longueurChaine - 1; i >= 0; i--) { %>
        <%= chaine.charAt(i) %>
    <% } %><br>

    <h2>Exercice 6 : Consonnes et voyelles</h2>
    <% int voyelles = 0, consonnes = 0;
       for (int i = 0; i < longueurChaine; i++) {
           char c = chaine.charAt(i);
           if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u' || c == 'y') {
               voyelles++;
           } else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
               consonnes++;
           }
       }
    %>
    <p>Nombre de voyelles : <%= voyelles %>, Nombre de consonnes : <%= consonnes %></p>

<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
