<?php
 include "Templates/Header.php";
?>
<div class="container">
    <h1> Пример описания помещения</h1>
    <p class="text-monospace"> Слова слова слова слова слова слова слова</p>
</div>
<div class="container">
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Images/tog-1-e1564134520325.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Images/post_6814.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="Images/wework-2-e1564134566829.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
    </div>

    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Какие-нибудь данные из БД</th>
            <th scope="col">Last</th>
            <th scope="col">Handle</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
        </tr>
        <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td colspan="2">Larry the Bird</td>
            <td>@twitter</td>
        </tr>
        </tbody>
    </table>
    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
    <button type="button" class="btn btn-warning " data-bs-toggle="modal" data-bs-target="#exampleModal">Редактировать</button>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Подтверждение действия</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Вы уверены что хотите войти в режим редактирования?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                        <button type="button" class="btn btn-primary">Да</button>
                    </div>
                </div>
            </div>
        </div>
        <button type="button" class="btn btn-danger " data-bs-toggle="modal" data-bs-target="#exampleModal2">Удалить</button>
        <div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Подтверждение действия</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Вы уверены что хотите удалить элемент?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                        <button type="button" class="btn btn-danger">Удалить</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include "Templates/Footer.php";
?>