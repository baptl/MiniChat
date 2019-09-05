<?php // ouverture de session (pour mémoriser le pseudo *)
session_start();
?>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="utf-8" />
		<title>MiniChat</title>
	</head>

	<body>

		<!-- formulaire permettant d'envoyer un nouveau message -->
		<form method="post" action="minichat_post.php">
			<h3>Envie de participer ?</h3>
			<label for="pseudo"><p><strong>Pseudo :</strong></p></label><p><input type="text" name="pseudo" id="pseudo" value="<?php echo isset($_SESSION['pseudo']) ? htmlspecialchars($_SESSION['pseudo']) : '' ?>"></p><!-- pré-remplissage du pseudo déjà saisi (le cas échéant) ici à l'aide d'une structure ternaire -->
			<label for="message"><p><strong>Message :</strong></p></label><p><textarea name="message" id="message" rows="10" cols="100"></textarea></p>
			<p><input type="submit" value="Et hop, envoyer !"></p>
		</form>

		<?php // ouverture du chat...

		// ... connexion à la base de données
		try
		{
			$bdd = new PDO('mysql:host=localhost;dbname=test;charset=utf8', 'root', '');
		}
		catch(Exception $e)
		{
			die('Erreur : ' . $e->getMessage());
		}

		// ... récupération des messages
		$req = $bdd->query('SELECT DATE_FORMAT(publication, \'%d/%m/%Y %H:%i:%s\') AS publication, pseudo, message FROM minichat ORDER BY ID DESC');

		// ... affichage sécurisé à l'aide de htmlspecialchars()
		while ($rep = $req->fetch())
		{
			echo "<p>[" . $rep['publication'] . "] <strong>" . htmlspecialchars($rep['pseudo']) . " :</strong> " . htmlspecialchars($rep['message']) . "</p>";
		}

		$req->closeCursor();

		?>

	</body>

</html>