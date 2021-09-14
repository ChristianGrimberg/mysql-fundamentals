<?php
    echo "<h1>Hello there, this is a PHP Apache container</h1>";

    //These are the defined authentication environment in the db service

    // The MySQL service named in the docker-compose.yml.
    $host = 'maria-db';

    // Database use name
    $user = 'user';

    //database user password
    $pass = 'secret1234';

    // check the MySQL connection status
    $conn = new mysqli($host, $user, $pass);

    if ($conn -> connect_error) {
        die("<h3>Connection failed: ".$conn->connect_error."</h3>");
    } else {
        echo "<h3>Connected to MySQL server successfully!</h3>";
    }
?>