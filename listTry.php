<?php
 include "Templates/Header.php";
 global $pdo;
 $db = new PDO("C:\Users\Денис\Downloads\db_lab3 (2).sql", "u", "p");
 $sql = file_get_contents('db_lab3 (2).sql');
 $qr = $db->exec($sql);
 $res = $db->query('select * from помещение');
 $space = [];
 while($sp = $res->fetch()){
     $space[] = $sp;
 }
?>
<div class="container">
    <p></p>
</div>
<div class="container">
    <div class="card" style="width: 18rem;">
        <img src="Images/coworking_sl4.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h5 class="card-title"><?php $space[0]?></h5>
            <p class="card-text">Супер помещение в центре Москвы. Замечательные тарифы!</p>
            <a href="#" class="btn btn-primary">Подробнее</a>
        </div>
    </div>
</div>
<?php
include "Templates/Footer.php";
