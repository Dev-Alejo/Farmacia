<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['user_name'])) {

 ?>
<!DOCTYPE html>
<html>
<head>
	<title>HOME</title>
	<link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<br/>
<div class="container">
    <br/>
    <br/>
<form action="" method="get">
    <div class="input-group rounded">
      <input type="search" class="form-control rounded" placeholder="Search" aria-label="Search" aria-describedby="search-addon" name = "search" />
      <span class="input-group-text border-0" id="search-addon">
        <i class="fas fa-search"><button type="submit">Buscar</button></i>
      </span>
    </div>
</form>
    <br/>
    <br/>
<body>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col"># Referencia</th>
      <th scope="col">Farmacia</th>
      <th scope="col">Medicamento</th>
      <th scope="col">Unidades Disponibles</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1234</th>
      <td>Mara Plus SEDE PRINCIPAL</td>
      <td>OMEPRAZOL 20MG</td>
      <td>15</td>
    </tr>
    <tr>
      <th scope="row">2345</th>
      <td>Mara Plus LA COROMOTO </td>
      <td>ACETAMINOFEN</td>
      <td>8</td>
    </tr>
    <tr>
      <th scope="row">3456</th>
      <td>Mara Plus CABIMAS</td>
      <td>DICLOFENAC SODICO</td>
      <td>7</td>
    </tr>
    <tr>
      <th scope="row">3457</th>
      <td>Mara Plus CABIMAS</td>
      <td>DICLOFENAC SODICO</td>
      <td>7</td>
    </tr>
    <tr>
      <th scope="row">3468</th>
      <td>Mara Plus CABIMAS</td>
      <td>DICLOFENAC SODICO</td>
      <td>7</td>
    </tr>
    <tr>
      <th scope="row">3479</th>
      <td>Mara Plus CABIMAS</td>
      <td>DICLOFENAC SODICO</td>
      <td>7</td>
    </tr>
    <tr>
      <th scope="row">1357</th>
      <td>Mara Plus SEDE PRINCIPAL</td>
      <td>ASPIRINA 15MG</td>
      <td>15</td>
    </tr>
    <tr>
    <tr>
      <th scope="row">1224</th>
      <td>Mara Plus SEDE PRINCIPAL</td>
      <td>DOLL 20MG</td>
      <td>15</td>
    </tr>
    <tr>
    <tr>
      <th scope="row">1271</th>
      <td>Mara Plus SEDE PRINCIPAL</td>
      <td>OMEPRAZOL 20MG</td>
      <td>4</td>
    </tr>
    <tr>
    <tr>
      <th scope="row">1251</th>
      <td>Mara Plus SEDE PRINCIPAL</td>
      <td>OMEPRAZOL 20MG</td>
      <td>3</td>
    </tr>
    <tr>
    <tr>
      <th scope="row">1334</th>
      <td>Mara Plus SEDE PRINCIPAL</td>
      <td>OMEPRAZOL 20MG</td>
      <td>10</td>
    </tr>
    <tr>
    <tr>
      <th scope="row">1234</th>
      <td>Mara Plus SEDE PRINCIPAL</td>
      <td>OMEPRAZOL 20MG</td>
      <td>11</td>
    </tr>
    <tr>
    <tr>
      <th scope="row">1234</th>
      <td>Mara Plus SEDE PRINCIPAL</td>
      <td>OMEPRAZOL 20MG</td>
      <td>7</td>
    </tr>
    <tr>                  
    
  </tbody>
</table>
</div>
<br/>
<br/>
     <a href="logout.php">Logout</a>
</body>
</html>

<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>