<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php 
require './calculos.php';
$pagina = "http://" . $_SERVER['HTTP_HOST'] . $_SERVER['SCRIPT_NAME'];
?>


<html>
    <head>
        <meta charset="UTF-8">
        <title>Bienvenido</title>
        <?php require './cabecera.html'; ?>
    </head>
    <body>
        <?php
        
        ?>
        <form action="<?php echo $pagina ?>" method="POST">
            <table border="0" width="600" cellspacing="10" cellpadding="3">
                
                <tbody>
                    <tr>
                        <td id="emple"><h3>EMPLEADO<h3/></td>
                        <td>  <input type="text" name="empleado"  /> </td>
                    </tr>
                    <tr>
                        <td><h3>HORAS TRABAJADAS<h3/></td>
                        <td> <input type="text" name="htrabajadas" /> </td>
                    </tr>
                    <tr>
                        <td><h3>CATEGORÍA<h3/></td>
                        <td> <select id="combo" name="cat">
                                <option>JEFE</option>
                                <option>ADMINISTRATIVO</option>
                                <option>OPERARIO</option>
                                <option>PRACTICANTE</option>
                            </select> </td>
                    </tr>
                    <tr>
                        <td> <input type="submit" value="CALCULAR" name="calcula" /> </td>
                        <td> <input type="reset" value="LIMPIAR" name="limpia" /> </td>
                    </tr>
                </tbody>
            </table>

        </form>
        <br><br>
        <form action="<?php echo $pagina ?>" method="POST">
            <table border="10" width="400" cellspacing="10" cellpadding="3">
               
                <tbody >
                    <tr >
                        <td ><h3>EMPLEADO<h3/></td>
                        <td width="200"><h3><?php  echo $empleado?><h3/></td>
                    </tr>
                    <tr>
                        <td><h3>SUELDO BRUTO<h3/></td>
                        <td><h3><?php echo $sueldoBruto ?><h3/></td>
                    </tr>
                    <tr>
                        <td><h3>SUELDO NETO<h3/></td>
                        <td><h3><?php echo $sueldoNeto ?><h3/></td>
                    </tr>
                </tbody>
            </table>

        </form>
        <a href="<?php echo $pagina ?>"><h3>Realizar nueva operación<h3/></a>
    </body>
</html>
