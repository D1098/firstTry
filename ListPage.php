<?php
 include "Templates/Header.php";
 ?>
<!--?php
$connection = new mysqli("localhost", "", "", "db_lab3 (1)");
if ($connection->connect_error) {
    die("Connection failed: " . $connection->connect_error);
}
?--><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <!--script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></--script-->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
    <script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
    <div class="container" style="width:100%";>
        <h2> Список всех доступных помещений </h2>
        <table class="table table-striped table-bordered" id="sortTable">
            <thead>
            <tr>
                <th>Название</th>
                <th>Вид</th>
                <th>Адрес</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Супер-помещение</td>
                <td>Коворкинг</td>
                <td>г. Большой Улуй, ул. Пригородный, д.73</td>
            </tr>
            <tr>
                <td>Точка</td>
                <td>Офис</td>
                <td>г. Емельяново, ул. Бумажная просека, д.37</td>
            </tr>
            <tr>
                <td>Кочка</td>
                <td>Коворкинг</td>
                <td>г. Бутурлино, ул. Школьная, д.11</td>
            </tr>
            </tbody>
        </table>
    </div>
    <script>
        $('#sortTable').DataTable();
    </script>
<?php
include "Templates/Footer.php";
?>