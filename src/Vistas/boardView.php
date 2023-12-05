<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="../../css/boardView.css">
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

    <?php 
        

        // Se comprueva si va a pintar una partida nueva o ya existente.
        if($_GET['matchId'] == 1){
            $matchId = $_GET['matchId'];
            echo "El id es ".$matchId;

            require "../Negocio/boardStatusBL.php";
            $boardStatus = new BoardStatusBL();
            DrawChessGame($boardStatus->obtainBoardStatus($matchId));

        } else {
            // Datos conseguidos de new_gameView.php.
            $title = $_POST['name_title'];
            $white = $_POST['name_player1'];
            $black = $_POST['name_player2'];
        
            echo "<title>".$title."</title>";

            // Se insertan los datos de la partida en la base de datos.
            // require "../Negocio/matchesBL.php";
            // $matches = new MatchesBL();
            // $matches->insertMatchData($title,$white,$black);
        
            // Se recibe este array que define la posición de las piezas en el tablero.
            $board = array(
                array("RoB","KnB","BiB","QuB","KiB","BiB","KnB","RoB"),
                array("PaB","PaB","PaB","PaB","PaB","PaB","PaB","PaB"),
                array("","","","","","","",""),
                array("","","","","","","",""),
                array("","","","","","","",""),
                array("","","","","","","",""),
                array("PaW","PaW","PaW","PaW","PaW","PaW","PaW","PaW"),
                array("RoW","KnW","BiW","QuW","KiW","BiW","KnW","RoW"));

// Se transforma en un solo string separados con , 
            for($i=0;$i<8;$i++)
            {
                for($j=0; $j<8; $j++) 
                {
                    $lineBoard = $lineBoard.$board[$i][$j].",";
                }
            }
            echo $lineBoard;
// Se pasa a array normal:
            $lineBoardSepared = explode(",",$lineBoard);
            for ($i=0; $i < count($lineBoardSepared); $i++) { 
                echo $lineBoardSepared[$i];
            }
            // DrawChessGame($board);

            // SaveChessGameStatus($matchId,$board);
        }
    ?>

    <?php
        function SaveChessGameStatus($matchId,$board)
        {
            require "../Negocio/boardStatusBL.php";
            $boardStatus = new BoardStatusBL();
            $boardStatus->insertBoardStatus($matchId,$board);
        }
        function DrawChessGame($board)
        {
            $nothing = "";
            $blaRook = "<img class='piece' src='../../img/BLArook.png'>";
            $blaKnight = "<img class='piece' src='../../img/BLAknight.png'>";
            $blaBishop = "<img class='piece' src='../../img/BLAbishop.png'>";
            $blaQueen = "<img class='piece' src='../../img/BLAqueen.png'>";
            $blaKing = "<img class='piece' src='../../img/BLAking.png'>";
            $blaPawn = "<img class='piece' src='../../img/BLApawn.png'>";
            $whiRook = "<img class='piece' src='../../img/WHIrook.png'>";
            $whiKnight = "<img class='piece' src='../../img/WHIknight.png'>";
            $whiBishop = "<img class='piece' src='../../img/WHIbishop.png'>";
            $whiQueen = "<img class='piece' src='../../img/WHIqueen.png'>";
            $whiKing = "<img class='piece' src='../../img/WHIking.png'>";
            $whiPawn = "<img class='piece' src='../../img/WHIpawn.png'>";

            CapturedBlacks($board);

            echo "<table>";
            for($i=0;$i<8;$i++)
            {
                echo "<tr>"; 
                for($j=0; $j<8; $j++) 
                {
                    if($board[$i][$j] == "RoB") {
                        BoxColor($i,$j,$blaRook);
                    } else if($board[$i][$j] == "KnB"){
                        BoxColor($i,$j,$blaKnight);
                    } else if($board[$i][$j] == "BiB"){
                        BoxColor($i,$j,$blaBishop);
                    } else if($board[$i][$j] == "QuB"){
                        BoxColor($i,$j,$blaQueen);
                    } else if($board[$i][$j] == "KiB"){
                        BoxColor($i,$j,$blaKing);
                    } else if($board[$i][$j] == "PaB"){
                        BoxColor($i,$j,$blaPawn); 
                    
                    } else if($board[$i][$j] == "RoW") {
                        BoxColor($i,$j,$whiRook); 
                    } else if($board[$i][$j] == "KnW"){
                        BoxColor($i,$j,$whiKnight); 
                    } else if($board[$i][$j] == "BiW"){
                        BoxColor($i,$j,$whiBishop); 
                    } else if($board[$i][$j] == "QuW"){
                        BoxColor($i,$j,$whiQueen); 
                    } else if($board[$i][$j] == "KiW"){
                        BoxColor($i,$j,$whiKing); 
                    } else if($board[$i][$j] == "PaW"){
                        BoxColor($i,$j,$whiPawn); 
                    } else {
                        BoxColor($i,$j,$nothing);
                    }
                }
                echo "</tr>";
            }
            echo "</table>";

            CapturedWhites($board);
        }

        function BoxColor($i,$j,$pieza)
        {
            if($i % 2) 
            {
                if($j % 2) 
                {
                    echo "<td><div class='blanco'>".$pieza."</div></td>";
                } else {
                    echo "<td><div class='negro'>".$pieza."</div></td>";
                }
            } else if(($i % 2)-1) 
            {
                if($j % 2) 
                {
                    echo "<td><div class='negro'>".$pieza."</div></td>";
                } else {
                    echo "<td><div class='blanco'>".$pieza."</div></td>";
                }
            }
        }

        function CapturedWhites($board)
        {
            $row= 0;
            $knw = 0;
            $biw = 0;
            $quw = 0;
            $paw = 0;
            for($i=0;$i<8;$i++)
            {
                for($j=0; $j<8; $j++) 
                {
                    if($board[$i][$j] == "RoW") {
                        $row++;
                    } else if($board[$i][$j] == "KnW"){
                        $knw++;
                    } else if($board[$i][$j] == "BiW"){
                        $biw++;
                    } else if($board[$i][$j] == "QuW"){
                        $quw++;
                    } else if($board[$i][$j] == "PaW"){
                        $paw++;
                    }
                }
            }
            echo "<div class='capturedsZone'>";
            for($i=2;$i>$row;$i--)
            {
                echo "<img class='captured' src='../../img/WHIrook.png'>";
            }
            for($i=2;$i>$knw;$i--)
            {
                echo "<img class='captured' src='../../img/WHIknight.png'>";
            }
            for($i=2;$i>$biw;$i--)
            {
                echo "<img class='captured' src='../../img/WHIbishop.png'>";
            }
            if($quw != 1)
            {
                echo "<img class='captured' src='../../img/WHIqueen.png'>";
            }
            for($i=8;$i>$paw;$i--)
            {
                echo "<img class='captured' src='../../img/WHIpawn.png'>";
            }
            echo "</div>";
        }

        function CapturedBlacks($board)
        {
            $rob= 0;
            $knb = 0;
            $bib = 0;
            $qub = 0;
            $pab = 0;
            for($i=0;$i<8;$i++)
            {
                for($j=0; $j<8; $j++) 
                {
                    if($board[$i][$j] == "RoB") {
                        $rob++;
                    } else if($board[$i][$j] == "KnB"){
                        $knb++;
                    } else if($board[$i][$j] == "BiB"){
                        $bib++;
                    } else if($board[$i][$j] == "QuB"){
                        $qub++;
                    } else if($board[$i][$j] == "PaB"){
                        $pab++;
                    }
                }
            }
            echo "<div class='capturedsZone'>";
            for($i=2;$i>$rob;$i--)
            {
                echo "<img class='captured' src='../../img/BLArook.png'>";
            }
            for($i=2;$i>$knb;$i--)
            {
                echo "<img class='captured' src='../../img/BLAknight.png'>";
            }
            for($i=2;$i>$bib;$i--)
            {
                echo "<img class='captured' src='../../img/BLAbishop.png'>";
            }
            if($qub != 1)
            {
                echo "<img class='captured' src='../../img/BLAqueen.png'>";
            }
            for($i=8;$i>$pab;$i--)
            {
                echo "<img class='captured' src='../../img/BLApawn.png'>";
            }
            echo "</div>";
        }
    ?>
</body>
</html>