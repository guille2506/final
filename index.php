<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Encuestas Integración V6</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"> <!-- dejar este primero para que cargue despues los estilos tk -->
    <link rel="stylesheet" href="css/style.css"> 
</head>
<?php
session_start();
error_reporting(0);
function obtenerDatosEmpresa($id) {
    $archivo = fopen("csvfiles/empresas.csv", "r");
    if ($archivo !== FALSE) {
        fgetcsv($archivo); // Saltar cabecera
        while (($datos = fgetcsv($archivo, 1000, ",")) !== FALSE) {
            if ($datos[0] == $id) {
                fclose($archivo);
                return [
                    'nombre' => $datos[1],
                    'logo' => $datos[3],
                    'alumnos' => $datos[4]
                ];
            }
        }
        fclose($archivo);
    }
    return null;
}

function leerDatosGenerales($archivo) {
    $datos = [];
    if (($handle = fopen($archivo, "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
            $datos[] = $data[0];
        }
        fclose($handle);
    }
    return $datos;
}

function obtenerAlumnos($idempresa) {
    return leerDatosGenerales($idempresa . '/csvfiles/alumnos.csv');
}
?>

<body class="style_2">

<!-- Preloader -->
<!-- <div id="preloader"><div data-loader="circle-side"></div></div> -->

<header>
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-6">
            </div>
            <div class="col-6 text-end">
            </div>
        </div>
    </div>
</header>

        <div class="container">
            <div class="row justify-content-center">
<div class="wrapper_centering">
  <div class="full_center_container">
    <div class="container_centering">
      <div class="centered-content">
        <div class="container">
          <div class="row justify-content-center">

            <!-- Formulario Clave -->
            <div class="index-box" id="contrasena_container">
              <form class="form" onsubmit="event.preventDefault(); verificarClave();">
                <img src="images/Logo2.png" alt="Logo" style="height: 100px; margin-bottom: 20px;">
                <h3>Encuestas Clima Laboral</h3>

                <input required type="password" id="clave" class="form-control clave-input" placeholder="Contraseña de la Empresa">

                <button type="submit" class="btn_1 full-width">Ingresar</button>
                <p id="mensaje" style="color: red;"></p>

                <small id="creditos">
                  Tecnicatura Superior en Recursos Humanos<br>
                  Tecnicatura en Desarrollo de Software
                </small>
              </form>
            </div>

            <!-- Contenido Empresa dinámico -->
            <div class="index-box" id="empresa" style="display: none;"></div>

          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<?php
$empresas = ["AGC", "Los Troncos", "Castellanas", "Gaudium", "DelParque"];

foreach ($empresas as $index => $empresa) {
    $id = $index + 1;
    $datos = obtenerDatosEmpresa($id);
    if ($datos) {
        echo '<div id="empresa' . $id . '" style="display:none">';
        echo '<h2 class="bienvenidos">Bienvenidos a ' . $empresa . '</h2>';
        echo '<img src="' . $datos['logo'] . '" alt="Logo" class="img-fluid mb-3" height="100">';
        echo '<h5 class="equipo-trabajo">Equipo de trabajo:</h5><ul>';
        $alumnos = obtenerAlumnos($id);
        foreach ($alumnos as $i => $alumno) {
            if ($i > 0) echo '<li>' . htmlspecialchars($alumno) . '</li>';
        }
        echo '</ul><hr>';
        echo '<a class="btn-iniciar" href="encuestas.php?id=' . $id . '&nombre=' . $empresa . '&logo=' . $datos['logo'] . '">Iniciar Encuesta <small><sup>V6.2</sup></small></a>';
        echo '</div>';
    }
}
?>

<script>
// window.onload = function () {
//     const preloader = document.getElementById("preloader");
//     preloader.classList.add("fade-out");
// };

function verificarClave() {
    const clave = document.getElementById("clave").value;
    const mensaje = document.getElementById("mensaje");
    const xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function () {
        if (this.readyState === 4 && this.status === 200) {
            try {
                const respuesta = JSON.parse(this.responseText);
                if (respuesta.encontrado) {
                    mostrarEmpresa(respuesta.empresa);
                } else {
                    mensaje.textContent = "Clave incorrecta. Intenta de nuevo.";
                }
            } catch (e) {
                mensaje.textContent = "Error de respuesta del servidor.";
            }
        }
    };
    xhttp.open("GET", "get_empresa.php?clave=" + encodeURIComponent(clave), true);
    xhttp.send();
}

function mostrarEmpresa(id) {
    document.getElementById("contrasena_container").style.display = "none";
    const empresaDiv = document.getElementById("empresa");
    const contenido = document.getElementById("empresa" + id);
    if (contenido) {
        empresaDiv.innerHTML = contenido.innerHTML;
        empresaDiv.style.display = "block";
    }
}
</script>
<!-- <script>
  window.addEventListener("load", () => {
    const preloader = document.getElementById("preloader");
    if (preloader) {
      preloader.classList.add("fade-out"); 
      setTimeout(() => {
        preloader.remove(); 
      }, 1000); 
    }
  });
</script> -->



</body>
</html>
