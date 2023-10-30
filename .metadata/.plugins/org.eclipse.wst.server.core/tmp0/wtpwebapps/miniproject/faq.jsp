<%@page import="pkrent4u.schema.Car"%>
<%@page import="pkrent4u.dao.CarDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList, pkrent4u.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>FAQ</title>
<link rel="icon" type="image/x-icon"
	href="https://cdn.discordapp.com/attachments/965375341071847434/1160730098618601482/image.png?ex=6535b924&is=65234424&hm=02edc80e5cc1c9b7937bdbc00efe262fb24180a3850827d298d32e71ee6a8d8b&">
<link rel="stylesheet" href="css/Animetion.css">
<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/Bootstrap.css">
<style type="text/css">
.rank-math-seo-score {
	font-family: sans-serif;
	position: relative;
	display: inline-block;
	height: 96px;
	width: 96px;
	margin: 20px 20px 30px;
	text-align: center;
	color: #fff;
	border: none;
	border-radius: 50%;
	background: #eee;
	-webkit-box-shadow: 1px 1px 1px #bbb;
	box-shadow: 1px 1px 1px #bbb
}

.rank-math-seo-score.before-content {
	margin: 0 0 30px 20px;
	float: right
}

.rank-math-seo-score.after-content {
	margin: 20px 0 30px 20px
}

.rank-math-seo-score.as-shortcode {
	display: inline-block
}

.rank-math-seo-score .label {
	font-size: 12px;
	position: absolute;
	top: 100px;
	left: 0;
	display: block;
	width: 100%;
	color: #979ea5
}

.rank-math-seo-score .score {
	font-size: 42px;
	font-weight: bold;
	line-height: 42px;
	display: block
}

.rank-math-seo-score .outof {
	font-size: 12px;
	font-weight: normal;
	line-height: 12px;
	display: block;
	color: rgba(255, 255, 255, 0.7)
}

.rank-math-seo-score .backlink {
	font-size: 12px;
	position: absolute;
	top: -94px;
	left: -12px;
	display: block;
	visibility: hidden;
	width: 120px;
	padding: 8px 10px;
	-webkit-transition: .25s all ease;
	transition: .25s all ease;
	-webkit-transition-delay: .25s;
	transition-delay: .25s;
	opacity: 0;
	color: #a8a8a8;
	border: none;
	border-radius: 8px;
	background: #fff;
	-webkit-box-shadow: 0 4px 14px rgba(60, 60, 90, 0.2);
	box-shadow: 0 4px 12px rgba(60, 60, 90, 0.15)
}

.rank-math-seo-score .backlink:after {
	position: absolute;
	bottom: -8px;
	left: calc(50% - 7px);
	width: 0;
	height: 0;
	content: '';
	border-width: 8px 7.5px 0 7.5px;
	border-style: solid;
	border-color: #fff transparent transparent transparent
}

.rank-math-seo-score:hover .backlink {
	top: -74px;
	visibility: visible;
	opacity: 1
}

.rank-math-seo-score .poweredby {
	font-size: 13px;
	color: #a8a8a8
}

.rank-math-seo-score .poweredby a {
	display: block;
	font-weight: normal;
	text-decoration: none;
	color: #6372b6;
	border: none
}

.rank-math-seo-score.unknown-seo {
	background: #eee;
	background: linear-gradient(135deg, #b9b9b9 0%, #989898 100%);
	-webkit-box-shadow: 1px 1px 1px #bbb;
	box-shadow: 1px 1px 1px #bbb
}

.rank-math-seo-score.bad-seo {
	background: #f8b0a2;
	background: linear-gradient(135deg, #f8b0a2 0%, #f1938c 100%);
	-webkit-box-shadow: 1px 1px 1px #e48982;
	box-shadow: 1px 1px 1px #e48982;
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f8b0a2',
		endColorstr='#f1938c', GradientType=1)
}

.rank-math-seo-score.good-seo {
	background: #fdd07a;
	background: linear-gradient(135deg, #fdd07a 0%, #fcbe6c 100%);
	-webkit-box-shadow: 1px 1px 1px #efb463;
	box-shadow: 1px 1px 1px #efb463;
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fdd07a',
		endColorstr='#fcbe6c', GradientType=1)
}

.rank-math-seo-score.great-seo {
	background: #99d484;
	background: linear-gradient(135deg, #99d484 0%, #83c97f 100%);
	-webkit-box-shadow: 1px 1px 1px #5ba857;
	box-shadow: 1px 1px 1px #5ba857;
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#99d484',
		endColorstr='#83c97f', GradientType=1)
}

.rank-math-seo-score.template-circle .score {
	margin-top: 22px !important
}

.rank-math-seo-score.template-square {
	height: 80px;
	width: 110px;
	border-radius: 12px
}

.rank-math-seo-score.template-square .score {
	margin: 10px 12px;
	text-align: left
}

.rank-math-seo-score.template-square .outof {
	display: inline-block;
	margin-left: -8px
}

.rank-math-seo-score.template-square .label {
	font-size: 13px;
	top: 52px;
	left: 14px;
	text-align: left;
	color: rgba(255, 255, 255, 0.8)
}

.rank-math-seo-score.template-square .backlink {
	left: -5px
}

.rank-math-seo-score.template-square.before-content {
	margin-bottom: 20px
}

.rank-math-seo-score.template-square.after-content {
	margin-bottom: 0
}

.theme-twentytwenty .rank-math-seo-score {
	width: 96px !important
}

.theme-twentytwenty .rank-math-seo-score.template-square {
	width: 110px !important
}

.theme-twentytwenty .rank-math-seo-score.before-content {
	margin: 0 auto 30px auto;
	display: inherit;
	float: none
}

.theme-twentytwenty .rank-math-seo-score.template-circle .score,
	.theme-twentytwenty .rank-math-seo-score.template-square .score {
	transform: translateY(22px)
}
</style>
</head>
<body>
	<%@ include file="./components/Nav.jsp"%>
	<div class="container dashboard-fade pt-4 pb-4">
		<h2>รถเช่าคืออะไร</h2>
		<p>รถเช่า เป็นบริการให้เช่ารถยนต์เพื่อขับใช้
			โดยมีการตกลงระยะเวลาในการเช่า และราคาเช่ารถ การมัดจำ การรับ-ส่งคืนรถ
			พร้อมทั้งมีเอกสารประกอบการเช่ารถ
			เพื่อให้เกิดความมั่นใจได้ทั้งผู้เช่ารถและผู้ให้เช่ารถ</p>
		<h2>ใครที่จองรถเช่าได้บ้าง</h2>
		<p>ผู้ที่จองรถเช่า ต้องเป็นไปตามข้อตกลงของการเช่ารถ
			คือมีอายุถึงตามกำหนดที่ทางผู้ให้บริการรถเช่ากำหนดไว้ เช่น
			บางที่กำหนดไว้ที่อายุ 21 ปี บางที่กำหนดไว้ที่ 23 ปี เป็นต้น</p>
		<h2>การเช่ารถระยะสั้น ระยะยาว ต่างกันอย่างไร</h2>
		<p>การเช่ารถระยะสั้น เป็นการเช่ารถโดยผู้ใช้รถทั่วไป
			อาจมีการเช่ารถเป็นจำนวนวัน เช่น 1 วัน 3 วัน เป็นต้น
			ส่วนการเช่ารถระยะยาวมักเป็นการเช่ารถกับในองค์กรใหญ่ๆ
			ที่มีการตกลงเช่าเป็นระยะเวลาหนึ่ง เช่น หนึ่งเดือน สามเดือน หนึ่งปี
			เป็นต้น</p>
		<h2>รถเช่าระหว่างซ่อมคืออะไร</h2>
		<p>รถเช่าระหว่างซ่อม เป็นการให้บริการรถเช่าในระหว่างที่นำรถไปซ่อม
			โดยในการตกลงเช่ารถชนิดนี้ จะต้องมีเอกสารการซ่อมรถ เอกสารการเคลมประกัน
			เพื่อใช้ประกอบการเช่ารถระหว่างซ่อม
			ซึ่งผู้เช่าจะมีรถไว้ใช้งานในระหว่างที่รถกำลังซ่อมอยู่นั่นเอง</p>
		<h2>การบล็อกวงเงินบัตรเครดิตคืออะไร</h2>
		<p>เป็นการกันวงเงินบัตรเครดิตเอาไว้ในระหว่างที่เช่ารถ
			เหมือนเป็นการมัดจำรถเช่าเอาไว้ก่อน
			ซึ่งยอดที่บล็อกนั้นจะไม่สามารถใช้ได้จนกว่าจะได้วงเงินคืน
			โดยอัตราการบล็อกวงเงินบัตรเครดิตนั้นขึ้นอยู่กับเงื่อนไขแต่ละบริษัท
			รวมถึงรถเช่าที่ใช้ เมื่อถึงกำหนดคืนรถเช่าแล้ว
			ทางธนาคารจะมีการคืนวงเงินเครดิตดังกล่าว ซึ่งใช้เวลาประมาณ 1-2 สัปดาห์
			แล้วแต่ธนาคารของบัตรเครดิตนั้นๆ</p>
		<h2>การคิดราคารถเช่า</h2>
		<p>การคิดราคารถเช่า โดยส่วนใหญ่จะคิดเป็นวันคือ 24 ชั่วโมง
			ส่วนราคาเท่าไหร่นั้น จะแล้วแต่รุ่นรถที่ใช้งาน มีตั้งแต่ระดับ เล็กๆ
			อีโคคาร์ รถเก๋ง รถครอบครัว แล้วแต่ว่าจะเช่าแบบไหน
			ราคาก็ไล่ระดับขึ้นไป ตั้งแต่หลักร้อยถึงหลักพันนิดๆ ต่อวัน</p>
		<h2>จะไปรับรถเช่าได้ที่ไหน</h2>
		<p>ขณะนี้ Rent4U มีสาขารถเช่าให้ท่านไปรับรถมากถึง 13 สาขา
			ซึ่งครอบคลุมทั้งในพื้นที่กรุงเทพฯ และปริมณฑล
			รวมไปถึงสาขารถเช่าในสนามบินหลาจุดทั่วประเทศ
			เพื่อให้ท่านเลือกสาขาที่ใกล้ที่สุดและสะดวกที่สุดในการไปรับรถเช่า</p>
		<h2>จะตกลงเช่ารถต้องทำอย่างไร</h2>
		<ul>
			<li>เลือกชนิดของรถ รุ่นรถ สถานที่วันเวลาที่รับรถและส่งคืนรถเช่า
				ผ่านแบบฟอร์มในหน้าเว็บไซต์</li>
			<li>เมื่อเจ้าหน้าที่ตรวจสอบรถที่ลูกค้าต้องการก็จะยืนยันกลับไปพร้อมแจ้งค่าใช้จ่ายทั้งหมด</li>
			<li>ลูกค้าส่งสำเนาเอกสารการเช่ารถเช่น สำเนาบัตรประจำตัวประชาชน
				สำเนาใบขับขี่</li>
			<li>ชำระเงินตามเงื่อนไขที่ทางศูนย์บริการรถเช่าได้แจ้งไว้
				อาจมีค่ามัดจำ หรือบล็อกวงเงินบัตรเครดิต
				ซึ่งต้องดูเงื่อนไขของแต่ละรถเช่าว่าเป็นอย่างไร</li>
			<li>สามารถไปรับรถเช่าได้ตามกำหนดเวลาที่ตกลงไว้</li>
		</ul>
		<h2>เช่ารถกับ Rent4U ดีกว่ายังไง?</h2>
		<p>Rent4U ของเรามีความพร้อม
			ทั้งด้านความเชี่ยวชาญในการจัดการเรื่องรถเช่าให้คุณ
			พร้อมทั้งคำแนะนำและดูแลคุณทุกขั้นตอน
			ด้วยมาตรฐานการบริการที่ครอบคลุมและตอบโจทย์ทุกความต้องการของคุณได้อย่างแน่นอน</p>
	</div>
</body>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</html>