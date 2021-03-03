<?php

class ConexaoBd{ 
    var $connection;

    function openConnect(){
        $servername = 'localhost';
        $username ='root';
        $password = '987654';
        $dbname =  'karinejappe';
        $this -> connection = new  mysqli($servername, $username, $password, $dbname);
    }
    function getConnect(){
        return $this -> connection;
    }
}
?>  