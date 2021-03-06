<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <link rel="stylesheet" href="./css/estilos.css">

    <script src="https://kit.fontawesome.com/6a95bc84be.js" crossorigin="anonymous"></script>
    <title>bbdd articulos</title>
</head>

<body>
    <!-- N A V B A R -->
    <nav class="navbar fixed-top">
        <div class="container-fluid d-flex justify-content-center align-items-center">
            <a href="#carrusel" class="navbar-brand mb-0 h1">
                <h1>Librería San Borges</h1>
            </a>
        </div>
    </nav>

    <!-- C A R R U S E L -->
    <section id="carrusel" class="mt-5">
        <div id="carouselExampleControls" class="carousel slide d-flex justify-content-center align-items-center"
            data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="./img/1.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="./img/2.png" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="./img/3.png" class="d-block w-100" alt="...">
                </div>
            </div>

            <div class="carousel-box">
                <div class="carrusel-butons">
                    <a href="AdminArticulos?action=nuevo" type="button" class="btn btn-outline-light me-2">Añadir
                        articulo</a>
                    <a href="AdminArticulos?action=mostrar" target="_blank" type="button" class="btn btn-success">Ver
                        stock</a>
                </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <section class="ubicacion">
        <div class="row d-flex justify-content-center align-items-center">
            <div class="col-sm-7 text-start">
                <h3>Nuestra historia</h3>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Porro commodi iusto sed libero
                    dignissimos
                    quam deserunt aut mollitia alias hic ullam, doloribus voluptatibus sequi atque. Adipisci nisi
                    modi
                    laborum. Magnam!</p>
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Porro commodi iusto sed libero
                    dignissimos
                    quam deserunt aut mollitia alias hic ullam, doloribus voluptatibus sequi atque. Adipisci nisi
                    modi
                    laborum. Magnam!</p>
            </div>
            <div class="col-sm-5">
                <div class="map-responsive">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d6568.278060156818!2d-58.510933434188765!3d-34.60064571825368!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2sar!4v1643428984033!5m2!1ses!2sar"
                        width="350" height="350" style="border:1px solid #D0D1D1; border-radius: 20%;"
                        allowfullscreen="" loading="lazy"></iframe>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer mt-4">
        <div class=" footer-container">
            <div class="footer-title">
                <h2>Gabriela Soruco</h2>
                <span class="footer-subtitle">FullStack Developer</span>
            </div>

            <div class="footer-socials">
                <a href="https://www.facebook.com" target="_blank" class="footer-social"><i
                        class="fab fa-facebook-f"></i></a>
                <a href="https://www.twitter.com" target="_blank" class="footer-social"><i
                        class="fab fa-twitter"></i></a>
                <a href="https://www.instagram.com" target="_blank" class="footer-social"><i
                        class="fab fa-instagram"></i></a>
            </div>
            <div class="footer-footer">
                <span class="footer-text">Made with <i class="fas fa-heart"></i> and <i class="fas fa-coffee"></i> in
                    Buenos Aires,
                    Argentina
                </span>
                <span class="footer-copy"><i class="far fa-copyright"></i> All right reserved</span>
            </div>
        </div>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
</body>

</html>