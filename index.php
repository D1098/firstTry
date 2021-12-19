<?php
 include "Templates/Header.php";
?>
    <div class="container-fluid">
        <p></p>
    </div>

    <div class="row row-cols-1 row-cols-md-3">
        <div class="col mb-4">
            <div class="card text-white bg-secondary mb-3" style="margin-left: 3%">
                <img src="Images/coworking_sl4.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                <h5 class="card-title">Помещение</h5>
                <p class="card-text">Супер помещение в центре Москвы. Замечательные тарифы!</p>
                <a href="spaceExample.php" class="btn btn-primary">Подробнее</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card text-white bg-dark mb-3">
                <img src="Images/post_6814.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Помещение</h5>
                    <p class="card-text">Супер помещение в центре Москвы. Замечательные тарифы!</p>
                    <a href="#" class="btn btn-primary">Подробнее</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card text-white bg-secondary mb-3">
                <img src="Images/wework-2-e1564134566829.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Помещение</h5>
                    <p class="card-text">Супер помещение в центре Москвы. Замечательные тарифы!</p>
                    <a href="#" class="btn btn-primary">Подробнее</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card text-white bg-dark mb-3" style="margin-left: 3%;">
                <img src="Images/tog-1-e1564134520325.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Помещение</h5>
                    <p class="card-text">Супер помещение в центре Москвы. Замечательные тарифы!</p>
                    <a href="#" class="btn btn-primary">Подробнее</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card text-white bg-secondary mb-3">
                <img src="Images/SOI-38027.png" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Помещение</h5>
                    <p class="card-text">Супер помещение в центре Москвы. Замечательные тарифы!</p>
                    <a href="#" class="btn btn-primary">Подробнее</a>
                </div>
            </div>
        </div>
        <div class="col mb-4">
            <div class="card text-black bg-light mb-3">
                <div class="card-body">
                    <h5 class="card-title">Новое помещение</h5>
                    <p class="card-text"></p>
                    <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal3">Добавить</a>
                </div>
            </div>
        </div>
        <div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Добавить помещение</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Название:</label>
                                <input type="text" class="form-control" id="recipient-name">
                            </div>
                            <div class="form-floating">
                                <select class="form-select" id="floatingSelect" aria-label="Floating label select example">
                                    <option selected>Коворкинг</option>
                                    <option value="1">Офис</option>
                                </select>
                                <label for="floatingSelect">Выберите тип помещения</label>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                        <button type="button" class="btn btn-success">Создать</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
include "Templates/Footer.php";
?>