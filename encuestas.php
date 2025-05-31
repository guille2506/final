<?php
include_once("classes/Session.php");
$s = new user_session;

error_reporting(0);
// $s->destroySession();

$id_empresa = $_GET["id"];
$nombre_empresa = $_GET["nombre"];
$logo_empresa = $_GET["logo"];
$logo_consultora = $_GET["logoConsultora"];
$colores = ['color: red;','color: orange;','color: gold;','color: lightgreen;','color: green;'];
$emojies = ['😠','😕','😐','🙂','😄'];

include_once ('classes/Questions.php');
include_once ('classes/Surveyed.php');
$ques = new Questions();
$fun = new Surveyed();

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

function obtenerOraciones($idempresa, $nro_bloque) {
    return leerDatosGenerales($idempresa . '/csvfiles/oraciones' . $nro_bloque . '.csv');
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Encuesta Empresa</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/vendors.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
</head>
<body class="style_2">
<div id="popup_clave" class="popup_fondo">
  <div class="popup_contenido">
    <div class="popup_logo">
      <?php if (!empty($logo_empresa)): ?>
        <img src="<?= htmlspecialchars($logo_empresa) ?>" alt="Logo Empresa" style="max-height: 100px;">
      <?php endif; ?>
    </div>
    <h4>Ingrese la clave de acceso</h4>
    <input type="password" id="clave_acceso" class="form-control" placeholder="Clave" />
    <button class="btn btn-primary mt-3" onclick="verificarClave()">Ingresar</button>
    <p id="error_clave" style="color:red; display:none; margin-top:10px;">Clave incorrecta. Intente nuevamente.</p>
  </div>
</div>

<script>
  window.addEventListener("load", () => {
    document.getElementById("popup_clave").style.display = "flex";
    document.getElementById("clave_acceso").focus();
  });

  function verificarClave() {
    const clave = document.getElementById("clave_acceso").value.trim();
    const mensaje = document.getElementById("error_clave");

    fetch("get_empresa.php?clave=" + encodeURIComponent(clave))
      .then(response => response.json())
      .then(data => {
        if (data.encontrado) {
          document.getElementById("popup_clave").style.display = "none";

          localStorage.setItem("id_empresa", data.empresa);

        } else {
          mensaje.style.display = "block";
        }
      })
      .catch(() => {
        mensaje.textContent = "Error al verificar la clave.";
        mensaje.style.display = "block";
      });
  }
</script>


<div id="preloader"><div data-loader="circle-side"></div></div>
<header>
    <div class="container">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-6 text-end"></div>
            </div>
        </div>
    </div>
</header>
<div class="wrapper_centering">
    <div class="container_centering">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-xl-6 col-lg-6 d-flex align-items-center">
                    <div class="main_title_1">
                        <h3>
                        <!-- Logo consultora de recursos humanos -->
                        <?php if (!empty($logo_consultora)): ?>
                            <div style="margin: 10px 0;">
                                <img src="<?= htmlspecialchars($logo_consultora) ?>" alt="Logo Consultora" style="max-height: 80px;">
                            </div>
                        <?php endif; ?>
                            Encuesta Clima Laboral
                        </h3>
                        <p>El objetivo de esta encuesta es identificar áreas de mejora en la empresa y aumentar la satisfacción del equipo. Sus respuestas son totalmente anónimas.</p>
                        <p>ESCALA DE RESPUESTAS</p> 
                        <ul style="list-style: none; padding-left: 0; margin-top: 1rem;">
                            <?php
                            $valor = -1;                            
                            $getData2 = $ques->getScales($id_empresa . '/csvfiles/escalas.csv');
                            foreach ($getData2 as $arrayescalas) {
                                foreach ($arrayescalas as $escala) {
                                    $valor++;
                                    ?>
                                    <li><strong style="<?= htmlspecialchars($colores[$valor]) ?>">
                                        <?= htmlspecialchars($emojies[$valor]) ?>  
                                        <?= htmlspecialchars(strtoupper($escala)) ?></strong></li>
                                    <?php
                                }
                            }
                            ?>
                        </ul> 
                        <div id="contador-entrevistas" style="margin-top: 20px; font-size: 16px; font-weight: bold;">
                            Entrevistas realizadas: <span id="realizadas">0</span> / <span id="total">0</span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-5">
                    <div id="wizard_container" class="separacion-arriba">
                        <div id="top-wizard">
                            <div id="progressbar" style="background: #e9ecef; border-radius: 4px; height: 10px; width: 100%; margin-bottom: 20px;">
                                <div id="progressbar-value" style="background: #28a745; height: 100%; width: 0%; border-radius: 4px; transition: width 0.3s;"></div>
                            </div>
                        </div>
                        <div class="scrooling">
                        <form id="wrapped" method="POST">
                            <input type="hidden" id="idempresa" value="<?= htmlspecialchars($id_empresa) ?>">
                            <input type="hidden" id="nombreempresa" value="<?= htmlspecialchars($nombre_empresa) ?>">
                            <div id="middle-wizard">
                                <div class="step">
                                    <h3 class="main_question"><strong>1</strong> DATOS DEL ENCUESTADO</h3>
                                    <?php
                                    function renderSelect($id, $label, $options) {
                                        echo "<div class='form-group'>";
                                        echo "<label for='{$id}'>{$label}</label>";
                                        echo "<select id='{$id}' name='{$id}' class='form-control required' onchange='SetValueSession(this.id,this.value)'>";
                                        echo "<option value=''>Seleccione una opción</option>";
                                        foreach ($options as $array) {
                                            foreach ($array as $val) {
                                                echo "<option value='" . htmlspecialchars($val) . "'>" . htmlspecialchars($val) . "</option>";
                                            }
                                        }
                                        echo "</select></div>";
                                    }
                                    renderSelect('sexo', 'Género', $fun->leergeneros($id_empresa.'/csvfiles/generos.csv'));
                                    renderSelect('edad', 'Edad', $fun->leeredades($id_empresa.'/csvfiles/edades.csv'));
                                    if ($id_empresa == 3) {
                                        echo "<input type='hidden' id='area' name='area' value='-'>";
                                    } else {
                                        renderSelect('area', 'Área', $fun->leerareas($id_empresa.'/csvfiles/areas.csv'));
                                    }
                                    renderSelect('antiguedad', 'Antigüedad', $fun->leerantiguedad($id_empresa.'/csvfiles/antiguedad.csv'));
                                    renderSelect('niveleducativo', 'Nivel educativo', $fun->leerniveleducativo($id_empresa.'/csvfiles/niveleducativo.csv'));
                                    ?>
                                </div>
                                <?php
                                $nro_bloque = 0;
                                $stepCount = 2;
                                $getBloques = $ques->getQuestions($id_empresa . '/csvfiles/bloques.csv');
                                if ($getBloques) {
                                    foreach ($getBloques as $bloque) {
                                        foreach ($bloque as $titulo) {
                                            $nro_bloque++;
                                            $oraciones = obtenerOraciones($id_empresa, $nro_bloque);
                                            
                                            $oraciones = array_slice($oraciones, 1);
                                           
                                            $chunked = array_chunk($oraciones,8);
                                            foreach ($chunked as $grupo) {
                                                echo "<div class='step'>";
                                                echo "<h3 class='main_question'><strong>$stepCount</strong> $titulo</h3>";
                                                $i = 0;
                                                foreach ($grupo as $oracion) {
                                                    $i++;
                                                    $name = "bloque{$nro_bloque}_pregunta{$stepCount}_{$i}";
                                                    if (substr($oracion, -1) == "?") {
                                                        
                                                        echo "<div class='form-group'><label>$oracion</label><textarea name='texta_$name' class='form-control required' rows='3' onchange='SetValueSession(this.name,this.value)'></textarea></div>";
                                                        
                                                        
                                                        $i = $i + 1;
                                                        $name = "bloque{$nro_bloque}_pregunta{$stepCount}_{$i}";
                                                        echo "<input type='radio' id='$id_radio' name='$name' value='-' disabled style='visibility:collapse;' checked>";
                                                        
                                                    }else {
                                                        echo "<div class='form-group'><label>$oracion</label><div class='review_block_smiles scrollable-smiles'><ul class='clearfix'>";
                                                        $valor = 0;
                                                        foreach ($ques->getScales($id_empresa . '/csvfiles/escalas.csv') as $escalas) {
                                                            foreach ($escalas as $escala) {
                                                                $valor++;
                                                                if ($valor == 1) {$primera=$escala;} if ($valor == 5) {$ultima=$escala;} 
                                                                $id_radio = "{$name}_{$valor}";
                                                                echo "<li><div class='container_smile'>";
                                                                echo "<input type='radio' id='$id_radio' name='$name' value='$valor' 
                                                                class='required' onchange='SetValueSession(this.id,this.value)'>";
                                                                echo "<label class='radio smile_$valor' for='$id_radio'><span>$escala</span></label>";
                                                                echo "</div></li>";
                                                            }
                                                        }
                                                        echo "</ul><div class='row justify-content-between add_bottom_25'>
                                                        <div class='col-4'><em>".$primera."</em></div>
                                                        <div class='col-4 text-end'><em>".$ultima."</em></div>
                                                        </div></div></div>";
                                                    }
                                                }
                                                echo "</div>";
                                                $stepCount++;
                                            }
                                        }
                                    }
                                }
                                ?>
                                <div class="step">
                                    <h3 class="main_question">¡Gracias por su participación!</h3>
                                    <p>Toca ENVIAR para finalizar.</p>
                                </div>
                            </div>
                            <div id="bottom-wizard">
                                <button type="button" name="backward" class="backward">Anterior</button>
                                <button type="button" name="forward" class="forward">Siguiente</button>
                                <button type="submit" name="process" class="submit">Enviar</button>
                            </div>
                        </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.7.1.min.js"></script>
<script src="js/common_scripts.min.js"></script>
<script src="js/functions.js"></script>
<script>
function actualizarContador() {
    const realizadas = parseInt(localStorage.getItem("entrevistas_realizadas") || "0");
    const total = parseInt(localStorage.getItem("total_entrevistas") || "0");
    document.getElementById("realizadas").textContent = realizadas;
    document.getElementById("total").textContent = total;
}
</script>
<script>
function BuscarActivarSelect(id, data){
    if(id == "id_empresa"){
        const formData = new FormData();
        formData.append('d', id +"_"+ data);

        fetch('classes/Session.php', {
            method: 'POST',
            body: formData
        });  
    }else{
        select = document.querySelectorAll("#"+id);
        select.value = data
        select[0].childNodes.forEach(child => {
            if(child.value == data){
                child.setAttribute("selected","selected");
            }
        });
    }
}
function BuscarActivarOption(id,data){
    elem = document.querySelectorAll("#"+id);
    elem[0].value = data
    elem[0].setAttribute("checked","checked");
}
function BuscarActivarTextArea(id,data){
    elem = document.getElementsByName(id);
    elem[0].value = data
}
function setDataForms(){
    var optionData;
    const formData = new FormData();
        formData.append('gall', "a");

        fetch('classes/Session.php', {
            method: 'POST',
            body: formData
        })
        .then(response => response.json()) 
        .then(result => {
        optionData = result.data;
        

        var filasArr = optionData.split("//");
        var arrAllData = [];
        filasArr.forEach(element => { 
            if(element != "||" && element != ""){
                elem = element.split("||")
                if(! elem[0].includes("bloque") && ! elem[0].includes("texta")){
                    BuscarActivarSelect(elem[0],elem[1])
                }else if (elem[0].includes("texta")){
                    BuscarActivarTextArea(elem[0],elem[1])
                }else{
                    BuscarActivarOption(elem[0],elem[1])
                }
            } 
        });
    });
}

$(document).ready(function () {
    let currentStep = 0;
    const steps = $(".step");

    function updateProgressBar(index) {
        const total = steps.length;
        const percent = Math.round((index + 1) / total * 100);
        $("#progressbar-value").css("width", percent + "%");
    }

    function showStep(index) {
        steps.hide().eq(index).fadeIn();
        $(".backward").toggle(index > 0);
        $(".forward").toggle(index < steps.length - 1);
        $(".submit").toggle(index === steps.length - 1);
        updateProgressBar(index); // 
    }

    function validateStep(index) {
        let valid = true;
        const current = steps.eq(index);
        current.find("select.required, textarea.required, input.required").each(function () {
            if ($(this).is(":radio")) {
                const name = $(this).attr("name");
                if (!$(`input[name='${name}']:checked`).length) valid = false;
            } else if (!$(this).val()) {
                valid = false;
            }
        });
        if (!valid) alert("Por favor complete todos los campos obligatorios antes de continuar.");
        return valid;
    }

    $(".forward").click(function () {
        if (validateStep(currentStep)) {
            currentStep++;
            showStep(currentStep);
        }
    });

    $(".backward").click(function () {
        currentStep--;
        showStep(currentStep);
    });

    showStep(currentStep);
    
    setDataForms();
});
</script>
<script>
  window.addEventListener("load", () => {
    const preloader = document.getElementById("preloader");
    if (preloader) {
      preloader.classList.add("fade-out");
      setTimeout(() => {
        preloader.remove();
      }, 1000);
    }

    actualizarContador();
  });
</script>


<script>
document.getElementById("wrapped").addEventListener("submit", function (e) {
    alert("Encuesta guardada. A continuación, se abrirá una nueva entrevista.");
    e.preventDefault();

    const datos = {
        idempresa: document.getElementById("idempresa").value,
        nombreempresa: document.getElementById("nombreempresa").value,
        sexo: document.getElementById("sexo").value,
        edad: document.getElementById("edad").value,
        area: document.getElementById("area").value,
        antiguedad: document.getElementById("antiguedad").value,
        niveleducativo: document.getElementById("niveleducativo").value
    };

    fetch("saveSurveyed.php", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: new URLSearchParams(datos)
    }).then(() => {
        const bloquesRespuestas = {};
        const pasos = document.querySelectorAll(".step");

        //console.log(pasos);

        pasos.forEach((bloque) => {
            const titulo = bloque.querySelector("h3.main_question")?.textContent.trim() || "";
            const match = titulo.match(/^\d+\s+(.*)/);
            const nombreBloque = match ? match[1] : null;

            if (!nombreBloque || nombreBloque === "Datos del encuestado") return;

            if (!bloquesRespuestas[nombreBloque]) {
                bloquesRespuestas[nombreBloque] = { respuestas: [], texto: "" };
            }

            const radios = bloque.querySelectorAll("input[type='radio']:checked");
            radios.forEach(r => bloquesRespuestas[nombreBloque].respuestas.push(r.value));

            const textarea = bloque.querySelector("textarea");
            if (textarea && textarea.value.trim()) {
                bloquesRespuestas[nombreBloque].texto = textarea.value.trim();
            }
        });

        const promesas = Object.entries(bloquesRespuestas).map(([nombreBloque, datosBloque]) => {
            
            if(nombreBloque == "DATOS DEL ENCUESTADO"){
                return;
            }
            return fetch("saveAnswers.php", {
                method: "POST",
                headers: { "Content-Type": "application/x-www-form-urlencoded" },
                body: new URLSearchParams({
                    nombrebloque: nombreBloque,
                    bloque: JSON.stringify(datosBloque.respuestas),
                    respLibre: datosBloque.texto
                })
            });
        });

        Promise.all(promesas).then(() => {
            fetch('classes/Session.php', {
                method: 'POST',
                body: new URLSearchParams({ d: "1" })
            });

            let realizadas = parseInt(localStorage.getItem("entrevistas_realizadas") || "0");
            let total = parseInt(localStorage.getItem("total_entrevistas") || "0");
            realizadas++;
            localStorage.setItem("entrevistas_realizadas", realizadas);

            window.onbeforeunload = null;

            if (realizadas < total) {
                window.location.href = window.location.pathname + window.location.search;
                
            } else {
                alert("¡Gracias! Se han completado todas las encuestas.");
                localStorage.removeItem("total_entrevistas");
                localStorage.removeItem("entrevistas_realizadas");
                
                window.location.href = "index.php";
            }

        });
    });
});

</script>
<script>
    
function SetValueSession(id,data){
const formData = new FormData();
    formData.append('s', id +"-"+ data);

    fetch('classes/Session.php', {
        method: 'POST',
        body: formData
    });   
}
</script>


<style>
.popup_fondo {
  position: fixed;
  top: 0; left: 0; right: 0; bottom: 0;
  background-color: rgba(0,0,0,0.6);
  z-index: 9999;
  display: flex;
  justify-content: center;
  align-items: center;
}

.popup_contenido {
  background-color: white;
  padding: 30px;
  border-radius: 10px;
  text-align: center;
  max-width: 400px;
  width: 100%;
}

.popup_contenido input {
  width: 100%;
  padding: 10px;
}
</style>

</body>
</html>
