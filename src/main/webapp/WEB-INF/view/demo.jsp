<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Movies Recommendation System</title>
	<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/resources/css/htmleaf-demo.css">
	<link rel="stylesheet" href="/resources/css/index.css">

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="/resources/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="/resources/css/style.css"> <!-- Resource style -->
	<script src="/resources/js/modernizr.js"></script> <!-- Modernizr -->
	<link rel="stylesheet" href="/resources/css/font-awesome.min.css" />
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.2/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<div class="htmleaf-container">
<!-- 		<header class="htmleaf-header">
		</header> -->
		<header class="cd-main-header animate-search">
			<!-- <div class="cd-logo"><a href="#0"><img src="img/cd-logo.svg" alt="Logo"></a></div> -->

			<nav class="cd-main-nav-wrapper">
				<a href="#search" class="cd-search-trigger cd-text-replace">Search</a>

				<ul class="cd-main-nav">
					<li><a href="#0">Home</a></li>
					<li><a href="#0">About</a></li>
					<li><a href="#0">Contact</a></li>
				</ul> <!-- .cd-main-nav -->
			</nav> <!-- .cd-main-nav-wrapper -->

			<a href="#0" class="cd-nav-trigger cd-text-replace">Menu<span></span></a>
		</header>

		<!-- **************************** Start - Search Detail Window **************************** -->
		<div id="search" class="cd-main-search">
			<form>
				<input type="search" class="filtr-search" placeholder="Search..." name="filtr-search" data-search>

				<div class="cd-select">
					<span>in</span>
					<select name="select-category">
						<option value="all-categories">All Categories</option>
						<option value="category1">Action</option>
						<option value="category2">Adventure</option>
						<option value="category3">Animation</option>
						<option value="category4">Children's</option>
						<option value="category5">Comedy</option>
						<option value="category6">Crime</option>
						<option value="category7">Documentary</option>
						<option value="category8">Drama</option>
						<option value="category9">Fantasy</option>
						<option value="category10">Film-Noir</option>
						<option value="category11">Horror</option>
						<option value="category12">Musical</option>
						<option value="category13">Mystery</option>
						<option value="category14">Romance</option>
						<option value="category15">Sci-Fi</option>
						<option value="category16">Thriller</option>
						<option value="category17">War</option>
						<option value="category18">Western</option>
					</select>
					<span class="selected-value">All Categories</span>
				</div>
			</form>

			<div class="cd-search-suggestions">
				<div class="news">
					<h3>New Movies</h3>
					<ul>
						<li>
							<a class="image-wrapper" href="#0"><img src="/resources/img/Cabin Boy.jpg" alt="News image"></a>
							<h4><a class="cd-nowrap" href="#0">Cabin Boy</a></h4>
							<time datetime="2016-01-12">1994</time>
						</li>

						<li style="margin-top: 30px;">
							<a class="image-wrapper" href="#0"><img src="/resources/img/Die Macht der Bilder Leni Riefenstahl.jpg" alt="News image"></a>
							<h4><a class="cd-nowrap" href="#0">Die Macht der Bilder: Leni Riefenstahl</a></h4>
							<time datetime="2016-01-12">1993</time>
						</li>

						<li style="margin-top: 30px;">
							<a class="image-wrapper" href="#0"><img src="/resources/img/220px-Geronimo_film.jpg" alt="News image"></a>
							<h4><a class="cd-nowrap" href="#0">Geronimo: An American Legend</a></h4>
							<time datetime="2016-01-12">1993</time>
						</li>
					</ul>
				</div> <!-- .news -->

				<div class="quick-links">
					<h3>Quick Links</h3>
					<ul>
						<li><a href="#0">Home</a></li>
						<li><a href="#0">About</a></li>
						<li><a href="#0">Contact us</a></li>
					</ul>
				</div> <!-- .quick-links -->
			</div> <!-- .cd-search-suggestions -->

			<a href="#0" class="close cd-text-replace">Close Form</a>
		</div> <!-- .cd-main-search -->
		<div class="cd-cover-layer"></div> <!-- cover main content when search form is open -->
		<!-- **************************** End - Search Detail Window **************************** -->


		<!-- **************************** Main Content **************************** -->
		<div class="container">
			<!-- Filter Controls - Simple Mode -->
	        <div class="row">
	            <!-- A basic setup of simple mode filter controls, all you have to do is use data-filter="all"
	            for an unfiltered gallery and then the values of your categories to filter between them -->
	            <ul class="simplefilter">
	            	<div class="table-responsive">
			            <table class="table table-bordered">
			            	<tr>
			            		<td><li class="active" data-filter="all">All</li></td>
			            		<td><li data-filter="1">Action</li></td>
			            		<td><li data-filter="2">Adventure</li></td>
			            		<td><li data-filter="3">Animation</li></td>
			            		<td><li data-filter="4">Children's</li></td>
			            		<td><li data-filter="5">Comedy</li></td>
			            		<td><li data-filter="6">Crime</li></td>
			            		<td><li data-filter="7">Documentary</li></td>
			            		<td><li data-filter="8">Drama</li></td>
			            		<td><li data-filter="9">Fantasy</li></td>
			            	</tr>
			            	<tr>
			            		<td></td>
			            		<td><li data-filter="10">Film-Noir</li></td>
			            		<td><li data-filter="11">Horror</li></td>
			            		<td><li data-filter="12">Musical</li></td>
			            		<td><li data-filter="13">Mystery</li></td>
			            		<td><li data-filter="14">Romance</li></td>
			            		<td><li data-filter="15">Sci-Fi</li></td>
			            		<td><li data-filter="16">Thriller</li></td>
			            		<td><li data-filter="17">War</li></td>
			            		<td><li data-filter="18">Western</li></td>
			            	</tr>
			            </table>
			        </div>
		        </ul>
	        </div>

	        <div class="row">
	        	<!-- left side ==> start -->

	            <!-- This is the set up of a basic gallery, your items must have the categories they belong to in a data-category
	            attribute, which starts from the value 1 and goes up from there -->
	            <div class="filtr-container col-md-8">
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="1, 5, 8, 9" data-sort="Busy streets">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">111Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="2, 5, 9, 14" data-sort="Luminous night">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">222Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="1, 4, 7, 5, 16" data-sort="City wonders">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">333Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="3, 18, 11, 15, 6" data-sort="In production">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">444Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="3, 4, 10, 17, 8" data-sort="Industrial site">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">555Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="2, 17, 12, 11, 7" data-sort="Peaceful lake">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">1144Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="16, 5, 14, 6" data-sort="City lights">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">1155Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="2, 4, 15, 13, 7" data-sort="Dreamhouse">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">2255Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	                <div class="col-xs-6 col-sm-4 col-md-3 filtr-item" data-category="3, 14, 13, 18, 6" data-sort="Restless machines">
	                    <img class="img-responsive" src="/resources/img_movies/r4.jpg" alt="sample image">
	                    <div class="item-desc-detail">
	                    	<div class="item-desc-detail-1"><a href="#">3311Fear of a Black Hat</a></div>
	                    	<div class="item-desc-detail-2">1993</div>
	                    </div>
	                    <div class="download-btn"><a href="#">Download</a></div>
	                </div>
	            </div>
	            <!-- left side ==> end -->

	            <!-- right side ==> start -->
		        <div class="right-bar col-md-4">
		        	<div class="right-side-bar">
						<div class="top-movies-in-india">
							<h4>Top Movies List</h4>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>77%</li>
								<li><a href="movie-single.html">Jurassic World (3D) (U/A)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>80%</li>
								<li><a href="movie-single.html">Jurassic World (3D Hindi) (U/A)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>69%</li>
								<li><a href="movie-single.html">Dil Dhadakne Do (U/A)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>65%</li>
								<li><a href="movie-single.html">Hamari Adhuri Kahani (U)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>83%</li>
								<li><a href="movie-single.html">Premam (U)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>87%</li>
								<li><a href="movie-single.html">Tanu Weds Manu Returns (U/A)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>71%</li>
								<li><a href="movie-single.html">Romeo Juliet (U)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>81%</li>
								<li><a href="movie-single.html">Jurassic World (IMAX 3D) (U/A)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>80%</li>
								<li><a href="movie-single.html">Jurassic World (2D Hindi) (U/A)</a></li>
							</ul>
							<ul class="mov_list">
								<li><i class="fa fa-star"></i></li>
								<li>89%</li>
								<li><a href="movie-single.html">Kaaka Muttai (U)</a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"></div>
		        </div>
		        <!-- right side ==> end -->
	        </div>
	    </div>
	</div>

	<script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="/resources/js/jquery-2.1.1.min.js"><\/script>')</script>
	<script src="/resources/js/jquery.filterizr.min.js"></script>
    	<script src="/resources/js/controls.js"></script>
    	<script type="text/javascript">
	    $(function() {
	        //Initialize filterizr with default options
	        $('.filtr-container').filterizr();
	    });
	</script>

	<script src="/resources/js/main.js"></script> <!-- Resource jQuery -->
</body>
</html>