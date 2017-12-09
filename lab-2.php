<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lab 2</title>
</head>
<body>
    <p>
      <?php
        $num1=20;
        $num2=4;
        $sum=$num1+$num2;
        $product=$num1*$num2;
        $quotient=$num1/$num2;
        echo "For x = $num1 and y = $num2,<br/><br/>";
        if ($num1 > $num2)
        {
            echo "x > y<br/><br/>";
        }
        elseif ($num1 < $num2)
        {
            echo "y > x<br/><br/>";
        }
        echo "x + y = $sum<br/><br/>";
        echo "x * y = $product<br/><br/>";
        echo "x / y = $quotient<br/><br/>";
      ?>
    </p>
</body>
</html>