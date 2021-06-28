<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.AccountInfo"%>
<%
AccountInfo loginUser = (AccountInfo) session.getAttribute("loginUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Aチャンネル</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Potta+One&display=swap"
	rel="stylesheet">
<body id="home">
	<header class="page-header">
		<h1 class="site_title">
			<a href="/A_channel/Login">Aちゃんねる</a>
		</h1>
		<div class="container-fluied">
			<div class="header_home">
				<ul>
					<li><a href="/A_channel/Login"><i
							class="fas fa-home fa-2x"></i></a></li>
					<li><a><i class="fas fa-newspaper fa-2x"></i></a></li>
					<li><a><i class="fas fa-users fa-2x"></i></a></li>
					<li><a><i class="fas fa-gamepad fa-2x"></i></a></li>
				</ul>
			</div>
		</div>
	</header>
	<div class="container-fluid home_container">
		<div class="left_contents col">
			<ul>
				<li><span style="font-weight: bold"><%=loginUser.getName()%></span>さん<br>今日も良い日になりますように。</li>
				<li>メールアドレス：<br><%=loginUser.getEmail()%></li>
			</ul>
			<div class="menubutton">
				<a class="btn btn-lg" href="/A_channel/Logout" role="button">ログアウト</a><br>
				<button type="button" class="btn btn-danger" data-toggle="modal"
					data-target="#exampleModal">アカウントを削除する</button>
			</div>
		</div>
		<div class="center_contents col-7">
			<p>テキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキストテキスト</p>
		</div>
		<div class="right_contents col">
			<div class="season_flower text-center">
				<div class="january">
					<div class="month">1月の花</div>
					<div class="flower_name">カーネーション</div>
					<div class="picture">
						<img src="/A_channel/image/january.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「母への愛」「無垢で深い愛」「純粋な愛」「女性の愛」「美しい仕草」</p>
				</div>
				<div class="january">
					<div class="month">2月の花</div>
					<div class="flower_name">梅</div>
					<div class="picture">
						<img src="/A_channel/image/february.jpg" style="width: 100%;">
					</div>
					<p>花言葉：「上品」「高潔」「忍耐」「忠実」</p>
				</div>
				<div class="january">
					<div class="month">3月の花</div>
					<div class="flower_name">チューリップ</div>
					<div class="picture">
						<img src="/A_channel/image/march.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「思いやり」「愛の告白」「不滅の愛」</p>
				</div>
				<div class="january">
					<div class="month">4月の花</div>
					<div class="flower_name">アルストロメリア</div>
					<div class="picture">
						<img src="/A_channel/image/april.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「持続」「エキゾチック」</p>
				</div>
				<div class="january">
					<div class="month">5月の花</div>
					<div class="flower_name">鈴蘭</div>
					<div class="picture">
						<img src="/A_channel/image/may.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「再び幸せが訪れる」「純粋」</p>
				</div>
				<div class="january">
					<div class="month">6月の花</div>
					<div class="flower_name">薔薇</div>
					<div class="picture">
						<img src="/A_channel/image/june.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「愛」「美」「しとやか」「上品」「感銘」</p>
				</div>
				<div class="january">
					<div class="month">7月の花</div>
					<div class="flower_name">蓮</div>
					<div class="picture">
						<img src="/A_channel/image/july.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「清らかな心」「休養」「神聖」「離れゆく愛」</p>
				</div>
				<div class="january">
					<div class="month">8月の花</div>
					<div class="flower_name">向日葵</div>
					<div class="picture">
						<img src="/A_channel/image/august.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「私はあなただけを見つめる」「愛慕」「崇拝」</p>
				</div>
				<div class="january">
					<div class="month">9月の花</div>
					<div class="flower_name">ダリア</div>
					<div class="picture">
						<img src="/A_channel/image/september.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「華麗」「優雅」「気品」「移り気」「不安定」</p>
				</div>
				<div class="january">
					<div class="month">10月の花</div>
					<div class="flower_name">ガーベラ</div>
					<div class="picture">
						<img src="/A_channel/image/october.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「神秘」「燃える神秘の愛」「希望」「律儀」</p>
				</div>
				<div class="january">
					<div class="month">11月の花</div>
					<div class="flower_name">シクラメン</div>
					<div class="picture">
						<img src="/A_channel/image/november.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「遠慮」「気後れ」「内気」「はにかみ」</p>
				</div>
				<div class="january">
					<div class="month">12月の花</div>
					<div class="flower_name">ポインセチア</div>
					<div class="picture">
						<img src="/A_channel/image/december.jpg" style="width: 100%;">
					</div>
					<p>花言葉:「思いやり」「清純」「慕われる人」「あなたの祝福を祈る」</p>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">アカウントを削除する</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="DeleteAccount" method="post">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="username"
								name="username">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-envelope"></i></span>
							</div>
							<input type="email" class="form-control" placeholder="eamil"
								name="email">
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control"
								placeholder="password" name="password">
						</div>
						<div class="form-group">
							<input type="submit" value="アカウントを削除する"
								class="btn float-right delete_btn">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript" src="style.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>