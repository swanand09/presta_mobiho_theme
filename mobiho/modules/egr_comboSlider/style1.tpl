@charset "utf-8";
/* CSS Document */

/* slider layout */

#container{ width:100%; float:left; margin-bottom:10px;}

.lof-slidecontent{ width:100%; float:left; margin-bottom:10px; height:340px;}
.lof-slidecontent { position:relative;	overflow:hidden;	border:#F4F4F4 solid 1px;}
.lof-slidecontent .preload{	height:100%;	width:100%;	position:absolute;	top:0;	left:0;	z-index:100000;	text-align:center;	background:#FFF}
.lof-slidecontent .preload div{	height:100%;	width:100%;	background:transparent url(../images/load-indicator.gif) no-repeat scroll 50% 50%;}
.lof-slidecontent  .sliders-wrapper{	position:relative;	height:100%;	width:900px;	z-index:3px;	overflow:hidden; }
.lof-slidecontent  ul.sliders-wrap-inner{overflow:hidden;	background:transparent url(../images/load-indicator.gif) no-repeat scroll 50% 50%;	padding:0px;	margin:0;	position:absolute;	overflow:hidden;}
.lof-slidecontent  ul.sliders-wrap-inner li{overflow:hidden;	padding:0px;margin:0px;	float:left;	position:relative;}
.lof-slidecontent  .lof-opacity  li{position:absolute;	top:0;	left:0;	float:inherit; }
.lof-slidecontent  .navigator-content {	bottom: 15px; height: 32px; padding: 10px 0;  position: absolute;  right: 10px; }
.lof-slidecontent  .navigator-wrapper{	position:relative;	z-index:10;	height:180px;width:310px;overflow:hidden;color:#FFF;float:left}
.lof-slidecontent  ul.navigator-wrap-inner{ top:0;padding:0; margin:0; position:absolute;width:100%; }
.lof-slidecontent  ul.navigator-wrap-inner li{ cursor:hand; cursor:pointer;list-style:none;padding:0;margin-left:0px;overflow:hidden;float:left;display:block;text-align:center;}

/*******************************************************/
 
ul.sliders-wrap-inner li img{	padding:0px;	}

.lof-slidecontent .slider-description a.readmore{color:#58B1EA; font-size:95%; }
.lof-slidecontent .slider-description a{ color:#FFF; }
.lof-slidecontent .slider-description{z-index:100px;position:absolute;top:3px;right:0px;width:50%;height:240px;padding:10px;color:#000;}
.lof-slidecontent .slider-description .divHead {    font-size: 50px; font-weight:normal; margin:0; padding:30px 0 20px 0; }
.lof-slidecontent .slider-description .desc{ padding-left:35px; font-family:Arial, Helvetica, sans-serif; line-height:20px; font-size:13px; background-color:[[SLIDE1-TEXT-BACKGROUND]];}
.lof-slidecontent .slider-description .slider-meta a{margin:0;background:#C01F25;font-size:75%;padding:2px 3px;font-family:"Trebuchet MS",Trebuchet,Arial,Verdana,sans-serif;	text-transform:uppercase;text-decoration:none}
.lof-slidecontent  .item-meta a:hover{	text-decoration:underline;}
.lof-slidecontent  .item-meta i {	font-size:70%; }

/* item navigator */

.lof-slidecontent ul.navigator-wrap-inner li img{
	border:[[SLIDE1-THUMB-BORDER]] solid 1px;	
}
.lof-slidecontent ul.navigator-wrap-inner li.active img, 
.lof-slidecontent ul.navigator-wrap-inner li:hover img {
	border:[[SLIDE1-THUMB-BORDER-HOVER]] solid 1px;
}
.lof-slidecontent .navigator-content .button-next, 
.lof-slidecontent .navigator-content .button-previous{
	display:block;
	width:22px;
	height:30px;
	color:#FFF;
	cursor:pointer;

}
.lof-slidecontent .navigator-content .button-next {
	float:left;	
	text-indent:-999px;
	margin-right:5px;
	background:url(../images/arrow1-l.png) no-repeat right center;
}
.lof-slidecontent .navigator-content .button-previous {	float:left; text-indent:-999px;	margin-left:5px; background:url(../images/arrow1-r.png) no-repeat left center;}

.lof-slidecontent .button-control {  position:absolute;  top:10px; right:10px;  height: 20px; width: 20px; cursor:hand; cursor:pointer;	background:url(../images/transparent_bg.png) repeat;}

.lof-slidecontent .button-control span { display:block;  width:100%; height:100%;}
.lof-slidecontent .action-start span  {	background:url(../images/play.png) no-repeat center center; }
.lof-slidecontent .action-stop span { background:url(../images/pause.png) no-repeat center center; }