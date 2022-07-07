<?php
$bookingId = $_GET['bookingId'];
header('Expires: Sun, 01 Jan 2014 00:00:00 GMT');
header('Cache-Control: no-store, no-cache, must-revalidate');
header('Cache-Control: post-check=0, pre-check=0', FALSE);
header('Pragma: no-cache');
require('../assets/fpdf/fpdf.php');
//หน้าปก จากซ้าย,จากบน
$pdf = new FPDF('P','mm','A4');
$pdf->AddFont('THSarabunNew_b', '', 'THSarabunNew_b.php');
$pdf->AddFont('THSarabunNew', '', 'THSarabunNew.php');
$pdf->SetAutoPageBreak(false);
$pdf->AddPage('P' ,'A4');
$pdf->SetFont('THSarabunNew_b', '', 20);
$pdf->Image('../assets/images/logo_show.png',10,10,-500);
$pdf->setXY(0, 25);
$pdf->Cell(0, 0, iconv('UTF-8', 'cp874', "แบบฟอร์มการขอรับเข้าบริการห้เองประชุม"), 0 , 1 , 'C');
$pdf->SetFont('THSarabunNew', '', 18);
$pdf->setXY(20, 45);
$pdf->Cell(0, 0, iconv('UTF-8', 'cp874', "ห้องประชุม"));

$pdf->Output();
?>