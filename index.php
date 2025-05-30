<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Encuestas Integración V7.0.2</title>
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
                    'logoConsultora' => $datos[4],
                    'alumnos' => $datos[5]
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
                <h3> <small>Encuesta Clima Laboral <sub>V7.0.2</sub></small></h3>

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
$empresas = ["Tienda Balbi", "Los Troncos", "Autoservicio Myriam", "Fase Electricidad"];

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
        echo '<a class="btn-iniciar" href="encuestas.php?id=' . $id . '&nombre=' . $empresa . '&logo=' . $datos['logo'] . '&logoConsultora=' . $datos['logoConsultora'].'">Iniciar Encuesta <small><sup>V7.0.2</sup></small></a>';
        echo '</div>';
    }
}
?>

<script>
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
        empresaDiv.innerHTML = "";

        const clonado = contenido.cloneNode(true);
        clonado.style.display = "block";

        empresaDiv.appendChild(clonado);

        const inputEntrevistas = document.createElement("div");
        inputEntrevistas.id = "selector-entrevistas";
        inputEntrevistas.innerHTML = `
            <label for="total_entrevistas" style="font-weight: bold; display: block;">¿Cuántas encuestas desea realizar?</label>
            <input type="number" id="total_entrevistas" min="1" value="1" class="form-control clave-input" style="margin: 10px 0 20px 0; max-width: 250px;">
        `;

        const btnIniciar = clonado.querySelector(".btn-iniciar");
        btnIniciar.parentNode.insertBefore(inputEntrevistas, btnIniciar);

        btnIniciar.addEventListener("click", function (e) {
            const total = parseInt(document.getElementById("total_entrevistas").value);
            if (isNaN(total) || total <= 0) {
                e.preventDefault(); 
                alert("Ingrese un número válido de entrevistas.");
                return;
            }

            localStorage.setItem("total_entrevistas", total);
            localStorage.setItem("entrevistas_realizadas", 0);
        });

        empresaDiv.style.display = "block";
    }
}


function iniciarEncuestas(id) {
    const total = parseInt(document.getElementById("total_entrevistas").value);
    if (isNaN(total) || total <= 0) {
        alert("Ingrese un número válido de entrevistas.");
        return;
    }
    localStorage.setItem("total_entrevistas", total);
    localStorage.setItem("entrevistas_realizadas", 0); 

    const link = document.querySelector(`#empresa${id} .btn-iniciar`).getAttribute("href");
    window.location.href = link;
}


</script>
</body>
</html>
