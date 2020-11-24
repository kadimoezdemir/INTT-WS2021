<?php
//Einfache version ohne Framework, berücksichtigt das die meißten Browser kein PUT und DELETE unterstützen

class product
{
   private $db;

   public function __construct()
   {
      $this->db = new mysqli("127.0.0.1","root","");

      if (mysqli_connect_errno())
      {
      	die("error while connection to database!:".mysqli_connect_error());
      }

      $this->db->select_db("allgoldDB");

      if($this->db->errno)
      {
      	die ($this->db->error);
      }
   }


   // C reate

   public function addProduct($data)
   {
   	   //create insert string
   	   $stmt = "INSERT INTO products ( 
   	   name,
   	   price,
       durability
   	   ) VALUES (
   	   '".$data['name']."',
   	   '".$data['price']."',
       '".$data['durability']."',
   	   );";

       //commit db request
   	   $result = $this->db->query($stmt);

   	   if($result == 1)
   	   {
   	   	 return "product succesfully inserted.";
   	   }

   	   return "your statment: ".$stmt."<br /> received result:".$result;
   }


  // R ead 

   public function getAllProducts()
   {
      $allProducts = array();
      $stmt = "SELECT * FROM products;";
      $result = $this->db->query($stmt);

        if(empty($result))
        {
           return "your statement: ".$stmt."<br /> received result:".$result;
        }

      while ($row = $result->fetch_assoc()) 
      {
        $allProducts[] = $row;
      }

      return  $allProducts;
   }


   ## Muss noch umgewandelt werden
   public function getCoordinates($stationID)
   {
   	  $allStations = array();
   	  $stmt = "SELECT * FROM station WHERE stationID = ".$stationID.";";
   	  $result = $this->db->query($stmt);

        if(empty($result))
        {
           return "your statement: ".$stmt."<br /> received result:".$result;
        }

      while ($row = $result->fetch_assoc()) 
      {
        $allStations[] = $row;
      }

      return $allStations;
   	  //return $row = $result->fetch_assoc(); 
   }
   ##

   ## Muss noch umgewandelt werden
   public function findByLocation($location)
   {
   	  $allStations = array();
   	  $stmt = "SELECT * FROM station WHERE location = '".$location."';";
      $result = $this->db->query($stmt);

        if(empty($result))
        {
           return "your statement: ".$stmt."<br /> received result:".$result;
        }

      while ($row = $result->fetch_assoc()) 
      {
        $allStations[] = $row;
      }

      return $allStations;
   }
   ## 


// U pdate
    
  public function updateProduct ($data)
  {
    //create insert string
    $stmt = "UPDATE product SET name = '".$data['name']."',
                                price = '".$data['price']."',
                                durability = '".$data['durability']."',
                                type = '".$data['type']."',
                            WHERE productID = ".$data['productID']." ;";

    //commit db request
    $result = $this->db->query($stmt);

    if($result == 1)
    {
      return "OK";
    }

    return "your statement: ".$stmt."<br /> received result:".$result;
  }


// D elete

   public function removeProduct ($productID)
   {
      $allSupplies = array();
      $stmt = "DELETE FROM product WHERE productID = ".$productID.";";
      $result = $this->db->query($stmt);

       if($result == 1)
       {
         return "product succesfully deleted.";
       }

       return "your statment: ".$stmt."<br /> received result:".$result;
   }
}

