@charset "utf-8";
/* CSS Document */

/*body 	   { margin:0px; font-family:Arial, Helvetica, sans-serif;  }*/
#container { width:100%; margin:0px 0px 0px;  padding:10px; font-size:12px; margin-top:50px; }
a  	   { text-transform:none;color:#333;	}

/* slider layout */
.lof-slidecontent { position:relative;	overflow:hidden;	border:#F4F4F4 solid 1px;}
.lof-slidecontent .preload{	height:100%;	width:90%;	position:absolute;	top:0;	left:0;	z-index:100000;	text-align:center;	background:#FFF}
.lof-slidecontent .preload div{	height:100%;	width:90%;	background:transparent url(../images/load-indicator.gif) no-repeat scroll 50% 50%;}

.lof-slidecontent  .sliders-wrapper{	position:relative;	height:100%;	width:90%;	z-index:3px;	overflow:hidden; }
.lof-slidecontent  ul.sliders-wrap-inner{overflow:hidden;	background:transparent url(../images/load-indicator.gif) no-repeat scroll 50% 50%;	padding:0px;	margin:0;	position:absolute;	overflow:hidden;}
.lof-slidecontent  ul.sliders-wrap-inner li{overflow:hidden;	padding:0px;margin:0px;	float:left;	position:relative;}
.lof-slidecontent  .lof-opacity  li{position:absolute;	top:0;	left:0;	float:inherit; }


.lof-slidecontent  .navigator-content {
	position:absolute;
	right:0;
	top:00px;
	z-index:9;
	height:342px;
	width:320px;
	overflow:hidden;
	color:#FFF
}
.lof-slidecontent  .navigator-wrapper{	position:relative;	z-index:10;
	height:180px;
	width:310px;
	overflow:hidden;
	color:#FFF;
	float:left
}
.lof-slidecontent  ul.navigator-wrap-inner{	top:0;	padding:0;	margin:0;	position:absolute;	width:100%; }
.lof-slidecontent  ul.navigator-wrap-inner li{ cursor:hand; 	cursor:pointer;	list-style:none;	padding:0;	margin-left:0px;	overflow:hidden;	float:left;	display:block;	text-align:center;}

/*******************************************************/
 
ul.sliders-wrap-inner li img{	padding:0px;	}

.lof-slidecontent .slider-description a.readmore{color:#58B1EA; font-size:95%; }
.lof-slidecontent .slider-description a{ color:#FFF; }
.lof-slidecontent .slider-description{
	z-index:100px;
	position:absolute;
	bottom:66px;
	left:0px;
	width:200px;
	background:url(../images/bg_trans.png);
	height:100px;
	padding:10px;
	color:#FFF;
}
.lof-slidecontent .slider-description h4 {    font-size: 14px;    margin: 10px 0;    padding: 0; }
.lof-slidecontent .slider-description .slider-meta a{	
	margin:0;
	background:#C01F25;
	font-size:75%;
	padding:2px 3px;
	font-family:"Trebuchet MS",Trebuchet,Arial,Verdana,sans-serif;
	text-transform:uppercase;
	text-decoration:none
}
.lof-slidecontent  .item-meta a:hover{	text-decoration:underline;}
.lof-slidecontent  .item-meta i {	font-size:70%; }

/* item navigator */
.lof-slidecontent ul.navigator-wrap-inner  li.active{
	background:url(../images/navigationArrow2.png) no-repeat scroll left center; 
	color:#FFF
}
.lof-slidecontent ul.navigator-wrap-inner  li >  div{
	background:url(../images/transparent_bg.png);
	color:#FFF;
	height:100%;
	position:relative;
	font-family:Arial, Helvetica, sans-serif;
	font-size:12px;
	margin-left:15px;
	padding-left:15px;
	border-top:1px solid [[SLIDE2-THUMB-BORDER]];
	text-align:left
}
.lof-slidecontent ul.navigator-wrap-inner  li h3{ font-size:18px; padding:15px 0 0 0; margin:0;}

.lof-slidecontent ul.navigator-wrap-inner li.active div{
	background:url(../images/navigationBg2.gif) left bottom;
	color:#000;
}
.lof-slidecontent ul.navigator-wrap-inner li img{
	height:60px;
	width:60px;
	margin:15px 15px 10px 0px;
	float:left;
	padding:3px;
	border:[[SLIDE2-THUMB-INNER-BORDER]] solid 1px;
}
.lof-slidecontent ul.navigator-wrap-inner li.active img, 
.lof-slidecontent ul.navigator-wrap-inner li:hover img {
	border:#6C8E5C  solid 1px;
}
.lof-slidecontent  .button-next, 
.lof-slidecontent .button-previous{
	display:block;
	width:40px;
	color:#FFF;
	cursor:pointer;
	position:absolute;
	height:100%;
	z-index:40;
	top:0;
	text-indent:-999px;

}
.lof-slidecontent   .button-next {
	right:310px;
	background:url(../images/arrow2-l.png) no-repeat right center;
	opacity:0.4;
	filter:alpha(opacity=40);
}
.lof-slidecontent   .button-next1 {
	right:310px;
	background:url(../images/arrow2-r.png) no-repeat right center;
	opacity:0.4;
	filter:alpha(opacity=40);
}
.lof-slidecontent  .button-previous {
	left:0px;
	background:url(../images/arrow2-l.png) no-repeat left center;
	opacity:0.4;
	filter:alpha(opacity=40);
}
.lof-slidecontent   .button-next:hover {
	right:310px;
	background:url(../images/arrow2-r.png) no-repeat right center;
	opacity:1;
	filter:alpha(opacity=100);
}
.lof-slidecontent  .button-previous:hover {
	left:0px;
	background:url(../images/arrow2-l.png) no-repeat left center;
	opacity:1;
	filter:alpha(opacity=100);
}


.lof-slidecontent .button-control {
	position:absolute;  top:10px;  right:48%;  height: 20px;  width: 20px;  cursor:hand; cursor:pointer;
	background:url(../images/transparent_bg.png) repeat;
}

.lof-slidecontent .button-control span { display:block;  width:100%; height:100%;}
.lof-slidecontent .action-start span  {
	background:url(../images/play.png) no-repeat center center;
}
.lof-slidecontent .action-stop span {
	background:url(../images/pause.png) no-repeat center center;
}


/**************/

ul.lof-main-wapper li {
	position:relative;	
}