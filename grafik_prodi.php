<?php
	include_once 'top.php';
    include_once 'db/base/DBConn.php';
	include_once 'db/tabel/Prodi.php';
	$obj = new prodi();
$rs = $obj->getStatistik();
$ar_data = [];
foreach($rs as $row){
	$ar['label']=$row['nama'];
	$ar['y']=(int)$row['jumlah'];
	$ar_data[]=$ar;
}
$out = array_values($ar_data);
?>

<script type="text/javascript">
window.onload = function() {
	var chart = new CanvasJS.Chart("chartContainer", {
		theme: "dark2", // "light2", "dark1", "dark2"
		animationEnabled: true, // change to true
		title:{
			text: "Statistik Prodi yang diambil Mahasiswa"
		},
		data: [
		{
			type: "bar",
			dataPoints:<?php echo json_encode($out) ?>
		}
		]
	});
chart.render();
}
</script>
</head>
<body>

<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js">
</script>

<?php
    include_once 'bottom.php'
?>