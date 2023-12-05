<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de partidas</title>
    <link rel="stylesheet" href="../../css/listView.css">

    <?php
    require("../Negocio/matchesBL.php");
    require("../Negocio/playersBL.php");

    $matchesBL = new MatchesBL();
    $matchesData = $matchesBL->obtainMatchData();

    $playersBL = new PlayersBL();
    $playersData = $playersBL->obtainPlayerData();

    function startDate($startDate)
    {
        $startDate = explode(" ",$startDate);
        return $startDate[0];
    }

    function startHour($startDate)
    {
        $startHour = explode(" ",$startDate);
        return $startHour[1];
    }

    function getPlayerName($id,$playersData)
    {
        foreach($playersData as $player)
        {
            if($player->getID() == $id)
            {
                return $player->getName();
            }
        }
        return "Player not found";
    }
    ?>
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
        <h1>Lista de partidas</h1> 
    </div>  
    <div id="content">
        <table>
            <tr id="index">
                <td>ID</td>
                <td>Descripción</td>
                <td>Fecha inicio</td>
                <td>Hora inicio</td>
                <td>Estado</td>
                <td>Ganador</td>
                <td>Fecha fin</td>
                <td>Hora fin</td>
                <td>Piezas blancas</td>
                <td>Piezas negras</td>
            </tr>
            <?php
            foreach($matchesData as $match)
            {
                $id = $match->getID();
                echo "<tr>"; 
                echo "<td>".$id."</td>
                        <td><a href='boardView.php?matchId=$id'>".$match->getTitle()."</a></td>
                        <td>".startDate($match->getStartDate())."</td>
                        <td>".startHour($match->getStartDate())."</td>
                        <td>".$match->getState()."</td>
                        <td>".$match->getWinner()."</td>
                        <td>".$match->getEndDate()."</td>
                        <td>".$match->getEndDate()."</td>
                        <td>".getPlayerName($match->getWhite(),$playersData)."</td>
                        <td>".getPlayerName($match->getBlack(),$playersData)."</td>";
                echo "</tr>";
            }
            ?>
        </table>
    </div>

    
</body>
</html>