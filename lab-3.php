<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lab 3</title>
</head>
<body>
    <p>
      <?php
        $hours = 15;
        if ($hours < 12)
        {
            echo"Good morning!<br/><br/>";
        }
        elseif ($hours >= 12)
        {
            echo"Good afternoon!<br/><br/>";
        }
        for ($i = 1; $i <= 10; $i ++)
        {
            echo"$i<br/><br/>";
        }
        $x=1;
        while($x <= 10)
        {
        echo"$x<br/><br/>";
        $x ++;
        }
      ?>
    </p>
</body>
</html>