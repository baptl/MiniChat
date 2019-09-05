<?php // ouverture de session (pour mémoriser le pseudo *)
session_start();

// vérification de l'input : s'il est conforme aux attendus...
if (isset($_POST['pseudo']) AND isset($_POST['message']) AND $_POST['pseudo'] != '' AND $_POST['message'] != '')
{
	// ... mémorisation du pseudo pour la session en cours
	$_SESSION['pseudo'] = $_POST['pseudo'];
	// ... connexion à la base de données
	try
	{
		$bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', '');
	}
	catch(Exception $e)
	{
		die("Erreur : " . $e->getMessage());
	}
	// ... insertion du message à l'aide d'une requête préparée
	$req = $bdd->prepare('INSERT INTO minichat (publication, pseudo, message) VALUES (NOW(), ?, ?)');
	$req->execute(array($_POST['pseudo'], $_POST['message']));
	// ... retour au minichat
	header('Location: minichat.php');
}

// dans le cas contraire...
else
{
	header('Location: minichat.php');
	// ... retour direct au minichat : les formulaires sans pseudo et/ou sans message ne sont pas traités
}

?>