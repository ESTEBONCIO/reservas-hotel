<?php

global $empleado;
global $horasTrabajadas;
global $sueldoBruto;
global $sueldoNeto;

try {
    if (isset($_POST["calcula"])) {
        if (!empty($_POST["empleado"]) or!empty($_POST["htrabajadas"])) {
            $empleado = $_POST["empleado"];
            $horasTrabajadas = $_POST["htrabajadas"];
            $categoria = $_POST["cat"];

            if ($categoria == 'JEFE') {
                $sueldoBruto = $horasTrabajadas * 50;
            } else {
                if ($categoria == 'ADMINISTRATIVO') {
                    $sueldoBruto = $horasTrabajadas * 30;
                } else {
                    if ($categoria == 'OPERARIO') {
                        $sueldoBruto = $horasTrabajadas * 15;
                    } else {
                        $sueldoBruto = $horasTrabajadas * 5;
                    }
                }
            }
            $descuento = $sueldoBruto * 0.15;
            $sueldoNeto = $sueldoBruto - $descuento;
            //formatos de moneda
            $sueldoBruto = "$ " . number_format($sueldoBruto, 2, ".", ",");
            $sueldoNeto = "$ " . number_format($sueldoNeto, 2, ".", ",");
        }
    }
} catch (Exception $ex) {
    
}
?>
