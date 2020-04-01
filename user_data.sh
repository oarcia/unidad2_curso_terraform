#!/bin/bash
export Path=$PATH:/usr/local/bin
sudo -1
exec > >(tee /var/log/user-data.log logger -t user-data -s 2>/dev/console) 2>&1
yum install -y httpd
echo "<!--Tipo de documento a mostrar-->
<!doctype html>
<html>
    <head>
        <!--Definimos el titulo de nuestra página a mostrar-->
        <title>Superpagina.com</title>
        <!--Definimos la codificación de nuestro documento HTML-->
        <meta charset="UTF-8">
        <!--Descripción de nuestra página-->
        <meta name="description" content="Una página chida">
        <!--Autor de la página-->
        <meta name="author" content="platzi">
        
        <!--html5shiv Script que nos permite utilizar HTML5
            en Internet Explorer 9 para atras
        -->
        <!--[if lt IE 9]>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
        <![endif]-->
    </head>
    <body>
        <article>
            <h1>Clase de introducción</h1>
            <p>Escrito por Oscr Arcia<br />
            1/04/2020 </p>
            <p>En la primera clase vimos muchas cosas interesantes</p>
        </article>
        <article>
            <h1>Clase de HTML</h1>
            <p>Oscar Arcia<br />
            1/04/2020  </p>
            <p>En esta clase debemos de ver como enviar un email y conectarnos con Google Maps</p>
        </article>

        <h2>Lo siguiente es de la etiqueta aside</h2>
        <aside>
            <h3>Un titulo bien bueno</h3>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed et purus sollicitudin, 
                convallis libero fermentum, sodales quam. Donec quis faucibus ante. Aliquam quis velit
                sollicitudin, porta turpis vitae, ultricies eros. Ut et lectus vehicula dui accumsan 
                volutpat vitae tincidunt sapien. Donec ac sapien elementum, egestas tellus at, 
                lacinia turpis. Aliquam porttitor leo vitae porta venenatis. 
                <br/>
                Pellentesque cursus velit vel ipsum pharetra ultrices. 
                Morbi nisl enim, feugiat porttitor neque at, vulputate maximus quam. 
                Nunc id facilisis sapien. Nunc imperdiet felis et mauris posuere placerat.
                Donec at suscipit sem, convallis tempus mi. Sed convallis magna sed est hendrerit molestie.
                Sed pretium blandit eleifend. 
            </p>
        </aside>    
        
        <figure>
            <a href="https://duckduckgo.com/" target="_blank">
                <img src="assets/images/duckduck.png" width="304" height="228" alt="El mejor navegador">
            </a>
        </figure>

        <h2>Mostraremos unas barras de proceso</h2>
        <meter value="2" min="0" max="10"></meter>
        <meter value="5" min="0" max="10"></meter>
        <meter value="8" min="0" max="10"></meter>
        <p> Tu puntaje es:
            <meter value="39" min="0" max="100" low="40" high="90" optimum="100">
            </meter>
        </p>
        <p> Año nuevo es en: 
            <meter value="35" min="1" max="366" title="days">
            </meter> 
            331 dias
        </p>
        
        <a href="media.html" target="_blank">Veamos multimedia</a>
    
    </body>
</html>" > /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
echo "aprendiendo terraform en platzi" > hola.txt