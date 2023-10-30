<%@page import="pkrent4u.schema.Car"%>
<%@page import="pkrent4u.dao.CarDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList, pkrent4u.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Contact us</title>
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&">
<link rel="stylesheet" href="css/Animetion.css">
<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/Bootstrap.css">
</head>
<body>
	<%@ include file="./components/Nav.jsp" %>
	<section class="ftco-section  pt-3 pb-3">
  <div class="container dashboard-fade">
    <div class="row justify-content-center pt-5 pb-5">
      <div class="col-md-7 heading-section text-center ftco-animate">
        <h1>ติดต่อเรา </h1>
      </div>
    </div>
    <div class="col-md-12">
      <p>
        สถานที่ตั้ง :
      </p><h2 class="d-inline">บริษัท rent4u จำกัด</h2>
      <p></p>
      <p>145 หมู่บ้านCIS ถนนคอนกรีด แขวงเหล็กเส้น เขตสี่เหลี่ยม หนองคาย 43000</p>
      <h2>
        ช่องทางการติดต่อ
      </h2>
      <p>
      </p><h3 class="d-inline">
        อีเมลล์
      </h3>
      : car@rent4u.co.th
      <p></p>
      <p>
      </p><h3 class="d-inline">
        เบอร์โทรศัพท์
      </h3>
      : 02-344-4452
      <p></p>

      <p>
      </p><h3 class="d-inline">
        Line
      </h3>
      : @rent4u
      <p></p>

      <p>
      </p><h3 class="d-inline">
        Facebook
      </h3>
      : rent4u
      <p></p>
    </div>
  </div>
</section>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</html>