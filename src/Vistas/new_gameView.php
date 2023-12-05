<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear partida</title>
    <link rel="stylesheet" href="../../css/new_gameView.css">

</head>
<body>
    <header>
        <h1>Game chess</h1> 
        <nav>
            <ul>
                <a href="new_gameView.php">
                    <li class="link"> Nueva partida </li>
                </a>
                <a href="gameListView.php">
                    <li class="link"> Lista de partidas </li>
                </a>
            </ul>
        </nav>
    </header>

    <div id="message">
        <h1>Formulario para crear partida</h1>
    </div>
    
    <div id="content"> 
        <form action="boardView.php" method="POST">
            <div class="spacing">
                <label for="player1">Nombre de jugador 1 (Piezas blancas): </label>
                <select name="name_player1" id="player1">
                    <?php
                    require "../Negocio/playersBL.php";
                    $players = new PlayersBL();
                    $rs = $players->obtainPlayerData();
                    foreach ($rs as $player)
                    {
                        echo "<option value='".$player->getID()."'>".$player->getName()."</option>";
                    }
                    ?>
                </select>
            </div>
        
            <div class="spacing">
                <label for="player2">Nombre de jugador 2 (Piezas negras): </label>
                <select name="name_player2" id="player2">
                    <?php
                    foreach ($rs as $player)
                    {
                        echo "<option value='".$player->getID()."'>".$player->getName()."</option>";
                    }
                    ?>
                </select>
            </div>
            
            <div class="spacing">
                <label for="title">Titulo de la partida: </label>
                <input id="title" name="name_title" type="select">
            </div>
            <input type="submit" value="Aceptar" class="button">
        </form>
    </div>
</body>
</html>