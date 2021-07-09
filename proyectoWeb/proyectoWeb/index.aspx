<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="proyectoWeb.index" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml" lang="en">

    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>GoGo Co. - Heladerías</title>

        <link rel="icon" type="image/x-icon" href="Include/images/nieveiconoarriba.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" ></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="Include/css/styles.css" rel="stylesheet" />
        <!-- Bootstrap core JS-->
        <script src="Include/js/jquery-3.4.1.min.js"></script>
        <script src="Include/bootstrap-4.4.1-dist/js/bootstrap.min.js"></script>
        <script src="Include/bootstrap-4.4.1-dist/js/bootstrap.bundle.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
       <!-- <script src="assets/mail/contact_me.js"></script>-->
        <!-- Core theme JS-->
        <script src="Include/js/scripts.js"></script>
        <script src="Include/js/Ciudad.js"></script>
        
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top"><img src="Include/images/logo.png" alt="" />GoGo Co.</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu<i class="fas fa-bars ml-1"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#services">Servicios</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">Menu</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Nosotros</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#team">Equipo</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#encuentra">Encuentranos</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Contactanos.aspx">Contactanos</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="Login.aspx">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">¡Bienvenidos a GoGo Heladerías!</div>
                <div class="masthead-heading text-uppercase">Los mejores sabores del mundo en un solo lugar</div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Conócenos</a>
                
            </div>
        </header>
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Servicios</h2>
                    <h3 class="section-subheading text-muted">No dude en usar uno de nuestros servicios.</h3>
                </div>
                <div class="row text-center">
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x"><i class="fas fa-circle fa-stack-2x text-primary"></i><i class="fas fa-ice-cream fa-stack-1x fa-inverse"></i></span>
                        <h4 class="my-3">Tienda</h4>
                        <p class="text-muted">Nuestras sucursales te esperan con las puertas abiertas. Localiza la más cercana a ti y ven a visitarnos. Horarios: Lunes - Viernes 10:00 a.m. - 9:00 p.m. Sabados y Domingos 10:00 a.m. - 11:30 p.m. ¡Te esperamos!</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x"><i class="fas fa-circle fa-stack-2x text-primary"></i><i class="fas fa-birthday-cake fa-stack-1x fa-inverse"></i></span>
                        <h4 class="my-3">Cumpleaños</h4>
                        <p class="text-muted">¿Deseas celebrar tu cumpleaños en GoGo heladería? ¡Es muuuuy fácil! Solo tienes que contactarnos en la sucursal en la que desees celebrar y escoge el paquete que más te guste</p>
                    </div>
                    <div class="col-md-4">
                        <span class="fa-stack fa-4x"><i class="fas fa-circle fa-stack-2x text-primary"></i><i class="fas fa-truck fa-stack-1x fa-inverse"></i></span>
                        <h4 class="my-3">Domicilio</h4>
                        <p class="text-muted">¿Te gustaría que GoGo heladería este presente en tu evento? ¡Es muuuuy sencillo! Llamanos al (662) 888 8888 y reserva nuestro camión de helados</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Menú</h2>
                    <h3 class="section-subheading text-muted">Los favoritos de todos.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/cono-naranja.jpg" alt=""/></a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Clásicos</div>
                                <div class="portfolio-caption-subheading text-muted">Vainilla, Chocolate, Fresa, Pistache</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/cono-negro.jpg" alt=""/></a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Exóticos</div>
                                <div class="portfolio-caption-subheading text-muted">Arcoiris, Carbón, Algodón, Caviar</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/cono-rojo.jpg" alt=""/></a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Conos</div>
                                <div class="portfolio-caption-subheading text-muted">Pre-empaquetados</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-lg-0">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/malteada.jpg" alt=""/></a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Malteadas</div>
                                <div class="portfolio-caption-subheading text-muted">Tradicionales o Salvajes</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 mb-4 mb-sm-0">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/soft-serve.jpg" alt=""/></a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Cremosos</div>
                                <div class="portfolio-caption-subheading text-muted">Clásicos o Deslactosados</div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6">
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="assets/img/portfolio/litros.jpg" alt=""/></a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading">Litros</div>
                                <div class="portfolio-caption-subheading text-muted">Medio Litro, Litro, Galón</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About-->
        <section class="page-section" id="about">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Nosotros</h2>
                    <h3 class="section-subheading text-muted">Conoce nuestra historia.</h3>
                </div>
                <ul class="timeline">
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="Include/images/muchos.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>2015-2017</h4>
                                <h4 class="subheading">Nuestro Humilde Inicio</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted text-justify">
                                GOGO CO. inicia como un proyecto de recreación al querer compartir con la localidad los sabores de helado inovadores que el equipo habia creado. Se decide abrir una pequeña tienda física en un rincon de la ciudad e inicia este viaje.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="Include/images/local.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>Febrero 2018</h4>
                                <h4 class="subheading">Creación de Sucursales</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted text-justify">
                                Muy pronto el pequeño local no es suficiente para la demanda, se necesita de un espacio más grande por lo que se decide abrir una sucursal en un área estratégica de la ciudad. Pronto esa sucursal se convierte en sucursales.</p></div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="Include/images/local2.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>Mayo 2019</h4>
                                <h4 class="subheading">Reconocimiento Nacional</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted text-justify">
                                Se decide que es hora de expondernos fuera de nuestra zona de confort y se abre una sucursal en otro estado del país. Antes de darnos cuenta ya existen sucursales de GOGO CO. en 15 estados del país. Se nos reconoce como empresa importante para el pais. </p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="Include/images/nino.jpg" alt="" /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4>Enero 2020</h4>
                                <h4 class="subheading">Empresa Internacional</h4>
                            </div>
                            <div class="timeline-body"><p class="text-muted text-justify">
                                Este año hemos decidido enfrentarnos a un nuevo reto y expander GOGO CO. a nivel internacional, como en todo se han tenido altas y bajas pero creemos firmemente en la calidad de nuestros productos.</p></div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image">
                            <h4>¡Se parte<br />de nuestro<br />Equipo!</h4>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <!-- Team-->
        <section class="page-section bg-light" id="team">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Nuestro Equipo</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="Include/images/naomi.JPG" alt="" />
                            <h4>Naomi Cerón</h4>
                            <a class="btn btn-dark btn-social mx-2" href="https://twitter.com/naomiceronb"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://facebook.com/naomi.ceronblanco"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://www.instagram.com/naomiceronb/?hl=es-la"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="Include/images/andrea.JPG" alt="" />
                            <h4>Andrea Zayas</h4>
                            <a class="btn btn-dark btn-social mx-2" href="https://twitter.com/AndreaZayasB"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://www.facebook.com/AndreaZayasB"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://www.instagram.com/andreazayasb/?hl=es-la"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="Include/images/arlene.JPG" alt="" />
                            <h4>Arlene Samaniego</h4>
                            <a class="btn btn-dark btn-social mx-2" href="https://twitter.com/ArleneSgo15"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://www.facebook.com/arlene.samaniego.3"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-dark btn-social mx-2" href="https://www.instagram.com/arlennesgo/?hl=es-la"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Encuentranos-->
        <section class="page-section" id="encuentra">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Encuéntranos</h2>
                </div>
               <div class="container-fluid map-container-2">
                    <div class="map-responsive">
                  
                     <iframe src="https://www.google.com/maps/d/embed?mid=1iMUKl2EoBoYmI0kBMBXbu2tjxIGR1H6x"  width="800" height="450"  frameborder="0" style="border:0" allowfullscreen></iframe>
                 
                    </div>
               </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="footer py-4 bg-light">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-left">Copyright © GOGO CO. 2020</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-twitter"></i></a><a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-facebook-f"></i></a><a class="btn btn-dark btn-social mx-2" href="#!"><i class="fab fa-instagram"></i></a>
                    </div>
                    <div class="col-lg-4 text-lg-right"><a class="mr-3" href="#!">Privacy Policy</a><a href="#!">Terms of Use</a></div>
                </div>
            </div>
        </footer>
        <!-- Portfolio Modals--><!-- Modal 1-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Clásicos</h2>
                                   
                                    <img class="img-fluid d-block mx-auto" id="imagen" src="assets/img/portfolio/cono-naranja.jpg" alt="" />
                                   
                                   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

                                    <select name="clasicos" id="dropDownId" class="seleccionar bootstrap-select mb-3" onchange="desplegarClasicos()" >
                                      <option value="Vainilla">Vainilla</option>
                                      <option value="Chocolate">Chocolate</option>
                                      <option value="Fresa">Fresa</option>
                                      <option value="Pistache">Pistache</option>
                                    </select>

                                     
                                    <div>
                                      <p id="first">Nieve artesanal sabor vainilla hecha con vainilla natural sudamericana, leche descremada, nata, azúcar, Benzoato de Sodio como conservador. <br /> Precios: vaso o cono chico $20MXN, vaso o cono mediano $30MXN, vaso o cono grande $40MXN </p>
                                    </div>
                                    <div>
                                      <p id="second" style="display: none;">Nieve artesanal sabor chocolate hecha con cocoa sudamericana, agua, leche descremada, nata, azúcar, Benzoato de Sodio como conservador. <br /> Precios: vaso o cono chico $22MXN, vaso o cono mediano $33MXN, vaso o cono grande $44MXN </p>
                                    </div>
                                    <div>
                                      <p id="third" style="display: none;">Nieve artesanal sabor fresa hecha con fresas organicas rebanadas cosechadas sin violencia, ácido citrico, leche descremada, nata, azúcar, colorante rojo #40, Benzoato de Sodio como conservador. <br /> Precios: vaso o cono chico $23MXN, vaso o cono mediano $33MXN, vaso o cono grande $43MXN </p>
                                    </div>
                                    <div>
                                      <p id="fourth" style="display: none;">Nieve artesanal sabor pistache hecha con pistaches sin cascara y sin sal, extracto de almendra, leche descremada, nata, azúcar, colorante verde #20, Benzoato de Sodio como conservador. <br /> Precios: vaso o cono chico $25MXN, vaso o cono mediano $35MXN, vaso o cono grande $45MXN </p>
                                    </div>

                                      <div class="mt-3">
                                          <button class="btn btn-primary" data-dismiss="modal" type="button"><i class="fas fa-times mr-1"></i>Volver</button>
                                      </div>
                                    
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
        <!-- Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Exóticos</h2>
                                    
                                    <img class="img-fluid d-block mx-auto imagen" id="imagen2" src="assets/img/portfolio/cono-negro.jpg" alt="" />
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

                                    <select name="exoticos" id="dropDownId2" class="seleccionar bootstrap-select mb-3" onchange="desplegarExoticos()" >
                                      <option value="Arcoiris">Arcoiris</option>
                                      <option value="Carbón">Carbón</option>
                                      <option value="Algodón">Algodón</option>
                                      <option value="Caviar">Caviar</option>
                                    </select>

                                     
                                    <div>
                                      <p id="first2">
                                        Ingredientes: Agua, azúcar, jarabe de maíz, crema, leche descremada, base de sorbete de naranja, base de sorbete de lima, base de sorbete de frambuesa, leche en polvo sin grasa, suero de leche, ácido cítrico, enzoato de sodio y sorbato de potasio como conservantes.
                                          <br /> Precios: vaso o cono chico $25MXN, vaso o cono mediano $35MXN, vaso o cono grande $45MXN</p>
                                    </div>
                                    <div>
                                      <p id="second2" style="display: none;">Ingredientes: Crema espesa, leche, azúcar, extracto de menta, colorante negro #2, carbón activado (10 g), hielo seco, leche en polvo sin grasa, suero de leche, ácido cítrico, enzoato de sodio y sorbato de potasio como conservantes.<br /> Precios: vaso o cono chico $25MXN, vaso o cono mediano $35MXN, vaso o cono grande $45MXN</p>
                                    </div>
                                    <div>
                                      <p id="third2" style="display: none;">Ingredientes: Crema, Leche Descremada, Agua, Azúcar, Jarabe de Maíz, Suero, Agua, Propilenglicol, Sabores Naturales y Artificiales, Azul # 1, Agua, Propilenglicol, Sabores Naturales y Artificiales, Rojo # 3, Estabilizador (mono y diglicéridos, Celulosa). <br /> Precios: vaso o cono chico $27MXN, vaso o cono mediano $37MXN, vaso o cono grande $47MXN</p>
                                    </div>
                                    <div>
                                      <p id="fourth2" style="display: none;">Ingredientes: Leche, yemas de huevo, jugo de limón, hojas de eneldo, azúcar, gelatina, vid de champán, caviar rojo o negro, enzoato de sodio y sorbato de potasio como conservantes.<br /> Precios: vaso o cono chico $30MXN, vaso o cono mediano $40MXN, vaso o cono grande $50MXN</p>
                                    </div>

                                    <div class="mt-3">
                                          <button class="btn btn-primary" data-dismiss="modal" type="button"><i class="fas fa-times mr-1"></i>Volver</button>
                                      </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 3-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Conos</h2>
                                   
                                    <img class="img-fluid d-block mx-auto imagen" id="imagen3" src="assets/img/portfolio/cono-rojo.jpg" alt="" />
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

                                    <select name="conos" id="dropDownId3" class="seleccionar bootstrap-select mb-3" onchange="desplegarConos()" >
                                      <option value="Unicornio">Cono Unicornio</option>
                                      <option value="Oreo">Cono Oreo</option>
                                      <option value="Chocollage">Cono Chocollage</option>
                                      <option value="Hershey">Cono Hershey´s</option>
                                    </select>

                                     
                                    <div>
                                      <p id="first3">¡Prueba la magia! Combinación de helado de malvavisco y algodón de azúcar. Perlas de chocolate blanco y jarabe de fresa con riquísima punta de chocolate.<br /> Precio: $25MXN</p>
                                    </div>
                                    <div>
                                      <p id="second3" style="display: none;">Una deliciosa combinación de galleta Oreo con el clásico Cornetto que ya conoces, envuelto en un crujiente cono sabor chocolate, que te encantará desde la primer mordida.<br /> Precios: $30MXN</p>
                                    </div>
                                    <div>
                                      <p id="third3" style="display: none;">Cremoso helado de vainilla con chocolate y cacahuate, envuelto en un crujiente cono sabor vainilla, que te encantará desde la primer mordida hasta la deliciosa punta de chocolate. <br /> Precios: $35MXN</p>
                                    </div>
                                    <div>
                                      <p id="fourth3" style="display: none;">Cremoso helado de chocolate hecho con cocoa de Hershey’s, un swirl de chocolate amargo en el centro y un topping de chispas de chocolate. Todo envuelto en un crujiente cono sabor vainilla, que te encantará desde la irresisitible primer mordida hasta la deliciosa punta de chocolate<br /> Precios: $32MXN</p>
                                    </div>

                                    <div class="mt-3">
                                          <button class="btn btn-primary" data-dismiss="modal" type="button"><i class="fas fa-times mr-1"></i>Volver</button>
                                      </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 4-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Malteadas</h2>
                                    
                                    <img class="img-fluid d-block mx-auto imagen" id="imagen4" src="assets/img/portfolio/malteada.jpg" alt="" />
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

                                    <select name="malteadas" id="dropDownId4" class="seleccionar bootstrap-select mb-3" onchange="desplegarMalteadas()" >
                                      <option value="Tradicional">Tradicional</option>
                                      <option value="Salvaje">Salvaje</option>
                                    </select>

                                     
                                    <div>
                                      <p id="first4">Malteadas tradicionales de sabores clásicos entre vainilla, chocolate, fresa y oreo. De 350 ml o 450ml, incluye crema batida y popote comestible.<br /> Precio: $60MXN</p>
                                    </div>
                                    <div>
                                      <p id="second4" style="display: none;">Malteadas salvajes de sabores unicornio, dragon, arcoiris, galactica y cholada. De 350 ml o 450ml, incluye crema batida, popote comestible y toppings diferentes segun el sabor.<br /> Precios: $100MXN</p>
                                    </div>
                                    

                                    <div class="mt-3">
                                          <button class="btn btn-primary" data-dismiss="modal" type="button"><i class="fas fa-times mr-1"></i>Volver</button>
                                      </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 5-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Cremosos</h2>
                                    
                                    <img class="img-fluid d-block mx-auto imagen" id="imagen5" src="assets/img/portfolio/soft-serve.jpg" alt="" />
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

                                    <select name="cremosos" id="dropDownId5" class="seleccionar bootstrap-select mb-3" onchange="desplegarCremosos()" >
                                      <option value="Clasicos">Clásicos</option>
                                      <option value="Deslactosados">Deslactosados</option>
                                    </select>

                                     
                                    <div>
                                      <p id="first5">Postre lácteo congelado, similar al helado pero más suave y menos denso como resultado de la introducción de aire durante la congelación. Disponible en sabor vainilla, chocolate y combinado.<br /> Precio: vaso o cono chico $20MXN, vaso o cono mediano $30MXN, vaso o cono grande $40MXN</p>
                                    </div>
                                    <div>
                                      <p id="second5" style="display: none;">Helado suave y poco denso sin lactosa debido a su elaboración con leche deslactosada. Disponible en sabor vainilla, chocolate y combinado.<br /> Precios: vaso o cono chico $22MXN, vaso o cono mediano $33MXN, vaso o cono grande $44MXN</p>
                                    </div>
                                    

                                    <div class="mt-3">
                                          <button class="btn btn-primary" data-dismiss="modal" type="button"><i class="fas fa-times mr-1"></i>Volver</button>
                                      </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal 6-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal"><img src="assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project Details Go Here-->
                                    <h2 class="text-uppercase">Litros</h2>
                                    
                                    <img class="img-fluid d-block mx-auto imagen" id="imagen6" src="assets/img/portfolio/litros.jpg" alt="" />
                                    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

                                    <select name="cremosos" id="dropDownId6" class="seleccionar bootstrap-select mb-3" onchange="desplegarLitros()" >
                                      <option value="Medio">Medio Litro</option>
                                      <option value="Litro">Litro</option>
                                      <option value="Galon">Galon</option>
                                    </select>

                                     
                                    <div>
                                      <p id="first6">Medio litro de tu nieve favorita para disfrutar donde quieras. Disponible en los sabores clasicos o salvajes.<br /> Precio: clasico $80MXN, salvaje $120MXN</p>
                                    </div>
                                    <div>
                                      <p id="second6" style="display: none;">Un litro de tu nieve favorita para disfrutar donde quieras. Disponible en los sabores clasicos o salvajes<br /> Precios: clasico $120MXN, salvaje $180MXN</p>
                                    </div>
                                     <div>
                                      <p id="third6" style="display: none;">Galon de tu nieve favorita para disfrutar donde quieras. Disponible en los sabores clasicos o salvajes<br /> Precios: clasico $200MXN, salvaje $300MXN</p>
                                    </div>

                                    <div class="mt-3">
                                          <button class="btn btn-primary" data-dismiss="modal" type="button"><i class="fas fa-times mr-1"></i>Volver</button>
                                      </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </body>

   

</html>



