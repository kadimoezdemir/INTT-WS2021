<?php
    // Abbruch falls kein Parameter gefüllt
    if(!isset($_GET["action"])) {
        return;
    }

    // Datenbankverbindung aufbauen
    $db = null;
    $db = new mysqli("127.0.0.1","root","");
    if (mysqli_connect_errno())
    {
        die("error while connection to database!:".mysqli_connect_error());
    }
    $db->select_db("allgolddb");
    if($db->errno)
    {
        die ($db->error);
    }

    switch ($_GET["action"]) {
        case 'list-station':
            header('Content-type: application/json; charset=utf-8');
            $query = "SELECT stationID, description, location from station;";
            $data = array();
            $result = $db->query($query);
            if(empty($result))
            {
                json_encode([]);
            }
            while ($row = $result->fetch_assoc())
            {
                $data[] = $row;
            }
            echo json_encode($data);
            break;

        case 'list-filling':
            $query = 'SELECT products.name, refill.amount, CONCAT(station.description, ", ", station.location), refill.timestamp FROM refill INNER JOIN products ON refill.productID = products.productID INNER JOIN station ON refill.stationID = station.stationID';
            execute_and_convert($db, $query, 'refill.timestamp');
            break;
        case 'generate-plan':
            $query = 'SELECT products.name, (inventory.plannedAmount - inventory.currentAmount) as "amount", station.description, station.location FROM inventory INNER JOIN products ON inventory.productID = products.productID INNER JOIN station ON inventory.stationID = station.stationID WHERE inventory.plannedAmount <> inventory.currentAmount';
            execute_and_convert($db, $query);
            break;
        case 'list-sales':
            $query = 'SELECT products.name, sales.amount, CONCAT(station.description, ", ", station.location) as "location" FROM sales INNER JOIN products ON sales.productID = products.productID INNER JOIN station ON sales.stationID = station.stationID';
            execute_and_convert($db, $query);
    }

    function execute_and_convert($db, $query, $orderBy = null) {
        header('Content-type: application/json; charset=utf-8');
        $result = null;

        // Ist Station gefüllt -> filteren ansonsten alle Ausgeben
        if(!isset($_GET["station"]) || $_GET["station"] == "-1") {
			//do nothing
        }
        else {
            $id = $_GET["station"];
            if(is_numeric($id))
               $query .= ' AND station.stationID = '.$id;
            else
                return;
        }
				
		if(!is_null($orderBy)){
			$query .= ' ORDER BY '.$orderBy. ' DESC';	
		}
		
		$result = $db->query($query . ';');

        $data = array();
        if(empty($result))
        {
            json_encode([]);
        }
        while ($row = $result->fetch_assoc())
        {
            $data[] = $row;
        }
        echo json_encode($data);
    }
?>
