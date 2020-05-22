<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>莆田理工学校</title>
<style type="text/css">
<!--
@import url("index.css");
-->
</style>
</head>

<body>
<!--第一部分-->
<div class="a">
  <div id="a1"></div>


</div>
<!--第一部分结束-->


<!--第二部分-->
<div class="b">
<ul>
	<li style="border-style:none; display:block; width:100px;"><a href="index.asp ">网站首页</a></li>
	<li style="display:block; width:99px; "><a href="ia1.asp"target="_blank">学校概况</a></li>
	<li style="display:block; width:99px;"><a href="ia2.asp"target="_blank">新闻中心</a></li>
	<li style="display:block; width:99px;"><a href="#">专业设置</a></li>
	<li style="display:block; width:99px;"><a href="#">招生专栏</a></li>
	<li style="display:block; width:99px;"><a href="#">就业信息</a></li>
	<li style="display:block; width:99px;"><a href="#">校园生活</a></li>
	<li style="display:block; width:99px;"><a href="#">在线报名</a></li>
	<li style="display:block; width:99px;"><a href="#">在线留言</a></li>
	<li style="display:block; width:99px;"><a href="#">乘车路线</a></li>

</ul>
</div>
<!--第二部分结束-->

<!--第三部分-->
<div class="c">
  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1005" height="295">
    <param name="movie" value="lg.swf" />
    <param name="quality" value="high" /><param name="SCALE" value="exactfit" />
    <embed src="lg.swf" width="1005" height="295" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="exactfit"></embed>
  </object>
</div>
<!--第三部分结束-->

<!--第四部分-->
<div class="d">
<!--第四部分第一小部分-->
  <div id="d1">
    <div id="d11">
	  <ul>
	    <li id="d111"><a href="#" style=" color:#EEEEEE;line-height:28px; font-size:9px; padding-left:4px; float:left;">专业设置</a><a href="#" style="color:#eee; line-height:28px; font-size:9px; float:right; padding-right:10px;">更多</a></li>
		<li id="d112">
		<ul>
				  <%'1、打开数据库
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2、打开表
exec="select top 12 * from b order by id desc"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 
%>

  <%do while not rs.eof%>


		  <li><a href="ib1.asp?id=<%=rs("id")%>" target="_blank"><span><%=rs("fnog")%></span></a></li>
<%rs.movenext
loop
'1、关闭表
rs.close
set rs=nothing
'2、关闭数据库
conn.close
set conn=nothing

%>

		</ul>		  
		</li>
	  </ul>
	</div>
	<div id="d12">
	  <ul>
	    <li id="d121"><span>QQ客服</span></li>
		<li id="d122">
		  <ul>
		    <li><img src ="lgimg/QQ.jpg"/></li>
			<li id="d1221">在线咨询</li>
		  </ul>
		  </li>
	  </ul>
	</div>
  </div>
  <!--第四部分第一小部分结束-->
  
  <!--第四部分第二小部分-->
  <div id="d2">
    <div id="d21">
	  <ul>
	    <li id="d211">
		  <ul>
		    <li id="d2111"><span>学校概况</span></li>
			<li id="d2112">
			  <ul>
			    <li id="d21121">
				<!-- 文章图片轮播 -->

<link href="newspiclb_dolphin.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="newspiclb_dolphin.js"></script>
<div id="imgADPlayer" style="display: block; width: 300; height: 160px; position: relative; overflow: hidden;"><a href="news/html/431.html" title="" target="_blank" style="display: block; text-decoration: none; width: 200px; height: 160px; background: url(&quot;news/pics/20130808/1375955974.jpg&quot;) center center no-repeat;"></a>
  <ul style="margin:0;width:200px;position:absolute;z-index:999;right:5px;FILTER:Alpha(Opacity=50,FinishOpacity=50, Style=1);overflow: hidden;bottom:0px;height:16px; border-right:1px solid #fff;"><li style="margin:0;list-style-type: none; margin:0;padding:0; float:right;"><span onmouseover="PImgPlayer.mouseOver(this);" onmouseout="PImgPlayer.mouseOut(this);" style="clear:both; display:block; width:23px;line-height:14px; font-size:12px; FONT-FAMILY:'????'; opacity: 0.6;border:1px solid #fff;border-right:0;border-bottom:0;color:#fff;text-align:center; cursor:pointer; background:#000;" onclick="PImgPlayer.play(5);return false;" herf="javascript:;" title="">6</span></li><li style="margin:0;list-style-type: none; margin:0;padding:0; float:right;"><span onmouseover="PImgPlayer.mouseOver(this);" onmouseout="PImgPlayer.mouseOut(this);" style="clear:both; display:block; width:23px;line-height:14px; font-size:12px; FONT-FAMILY:'????'; opacity: 0.6;border:1px solid #fff;border-right:0;border-bottom:0;color:#fff;text-align:center; cursor:pointer; background:#000;" onclick="PImgPlayer.play(4);return false;" herf="javascript:;" title="">5</span></li><li style="margin:0;list-style-type: none; margin:0;padding:0; float:right;"><span onmouseover="PImgPlayer.mouseOver(this);" onmouseout="PImgPlayer.mouseOut(this);" style="clear:both; display:block; width:23px;line-height:14px; font-size:12px; FONT-FAMILY:'????'; opacity: 0.6;border:1px solid #fff;border-right:0;border-bottom:0;color:#fff;text-align:center; cursor:pointer; background:#000;" onclick="PImgPlayer.play(3);return false;" herf="javascript:;" title="">4</span></li><li style="margin:0;list-style-type: none; margin:0;padding:0; float:right;"><span onmouseover="PImgPlayer.mouseOver(this);" onmouseout="PImgPlayer.mouseOut(this);" style="clear:both; display:block; width:23px;line-height:14px; font-size:12px; FONT-FAMILY:'????'; opacity: 0.6;border:1px solid #fff;border-right:0;border-bottom:0;color:#fff;text-align:center; cursor:pointer; background:#000;" onclick="PImgPlayer.play(2);return false;" herf="javascript:;" title="">3</span></li><li style="margin:0;list-style-type: none; margin:0;padding:0; float:right;"><span onmouseover="PImgPlayer.mouseOver(this);" onmouseout="PImgPlayer.mouseOut(this);" style="clear:both; display:block; width:23px;line-height:14px; font-size:12px; FONT-FAMILY:'????'; opacity: 0.6;border:1px solid #fff;border-right:0;border-bottom:0;color:#fff;text-align:center; cursor:pointer; background:#ff0000;" onclick="PImgPlayer.play(1);return false;" herf="javascript:;" title="">2</span></li><li style="margin:0;list-style-type: none; margin:0;padding:0; float:right;"><span onmouseover="PImgPlayer.mouseOver(this);" onmouseout="PImgPlayer.mouseOut(this);" style="clear:both; display:block; width:23px;line-height:14px; font-size:12px; FONT-FAMILY:'????'; opacity: 0.6;border:1px solid #fff;border-right:0;border-bottom:0;color:#fff;text-align:center; cursor:pointer; background:#000;" onclick="PImgPlayer.play(0);return false;" herf="javascript:;" title="">1</span></li></ul></div>		

<script> 
PImgPlayer.addItem( "", "", "img2/1375889295.jpg"); 
 </script>

<script> 
PImgPlayer.addItem( "", "", "img2/1375955974.jpg"); 
 </script>

<script> 
PImgPlayer.addItem( "", "n", "img2/1375889179.jpg"); 
 </script>

<script> 
PImgPlayer.addItem( "", "", "img2/1375889154.jpg"); 
 </script>

<script> 
PImgPlayer.addItem( "", "", "img2/1375888911.jpg"); 
 </script>

<script> 
PImgPlayer.addItem( "", "", "img2/1376023393.jpg"); 
 </script>

<script>
PImgPlayer.init( "imgADPlayer", 200, 160 );
</script>
				</li>
				<li id="d21122">
				<br />				莆田市理工技术学校是经福建省人社厅批准的一所全日制综合性中等职业技术学校，列入国家统一招生计划。学校位于莆田市区西南交通枢纽沟头圆圈福厦公路旁，交通便捷，且位于莆田市市区万达广场附近，毗邻莆田市第一中学，办学地理位置十分优越。<br />
学校师资力量雄厚，具有一支结构合理、专业技术过硬的“双师型”师资队伍；学校设施完善，拥有数百台全新液晶电脑的各种计算机类课程的教学实训室、电脑设计实训室、网络教室，和电子商务教学实训室、多媒体教室、美术教学实训室、会计真帐模拟实训室、幼儿教育实训室等，是一所集教学、实训为一体的专业技术学校。
				</li>
			  </ul>
			</li>
		  </ul>
		</li>
		<li id="d212">
		  <div id="d2121">最新新闻<span>更多>></span></div>
		  <div id="d2122">
		    <div id="d21221">
			<%'1、打开数据库
set conn=server.createobject("adodb.connection")
conn.open "driver={microsoft access driver (*.mdb)};dbq="&server.mappath("lg.mdb")
'2、打开表
exec="select top 9 * from c order by id desc"
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 
%>

			  <ul>
			  <%do while not rs.eof%>
			    <li><a href="ib2.asp?id=<%=rs("id")%>"><%=left(rs("usub"),12)%></a></li>
				<%rs.movenext
loop
'1、关闭表
rs.close
set rs=nothing
'2、关闭数据库
conn.close
set conn=nothing

%>
							  </ul>
			</div>
		  </div>
		</li>
	  </ul>
	</div>
	<div id="d22">
	  <div id="d221">校园生活<span>更多>></span></div>
	  <div id="d222">
	  
				
				<div id="pdv_13614" class="pdv_class" title="校园生活" style="width:720px;height:135px;top:302px;left:277px; z-index:7">
<div id="spdv_13614" class="pdv_content" style="overflow:hidden;width:100%;height:100%">
<div class="pdv_border" style="border: 1px solid rgb(226, 226, 226); height: 171px; padding: 0px; margin: 0px; background: rgb(255, 255, 255);">

<div style="padding:0px">

<link href="photopic_roll.css" type="text/css" rel="stylesheet">
<script src="email-decode.min.js"></script><script src="photopic_roll.js" type="text/javascript"></script>
<div class="photopicx">
	<div class="rollphotopics">
		<div class="blkphotopicx">
			<div class="LeftButton" id="LeftArr1"></div>
			<div class="Cont" id="ISL_Cont_11" style="width: 675px; overflow: hidden;"><div style="overflow: hidden; zoom: 1; width: 32766px;"><div style="float: left;">

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/163.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/163.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/162.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/162.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/161.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/161.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/160.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/160.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/159.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/159.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/158.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/158.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/157.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/157.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/156.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/156.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/155.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/155.html" target="_self" class="prodtitle">“情暖夕阳，关爱老人”三</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/154.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/154.html" target="_self" class="prodtitle">“情暖夕阳，关爱老人”三</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/153.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/153.html" target="_self" class="prodtitle">“情暖夕阳，关爱老人”三</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/152.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/152.html" target="_self" class="prodtitle">“情暖夕阳，关爱老人”三</a>
					</div>

			</div><div style="float: left;">

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/163.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/163.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/162.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/162.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/161.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/161.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/160.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/160.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/159.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/159.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/158.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/158.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/157.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/157.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/156.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/156.html" target="_self" class="prodtitle">“缅怀革命先烈，弘扬爱国</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/155.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/155.html" target="_self" class="prodtitle">“情暖夕阳，关爱老人”三</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/154.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/154.html" target="_self" class="prodtitle">“情暖夕阳，关爱老人”三</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/153.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/153.html" target="_self" class="prodtitle">“情暖夕阳，关爱老人”三</a>
					</div>

					<div class="box">
						<div class="fang" style="width:125px;height:95px">
							<div class="picFit" style="width:125px;height:95px">
							<a href="photo/html/152.html" target="_self"><img height="95px" src="img2/1461654341.jpg" width="125px" border="0" style="height: 95px;"></a>
							</div>
						</div>
						<a href="photo/html/152.html" target="_self" class="prodtitle">“情暖夕阳，关爱老人”三</a>
					</div>

			</div></div></div>
			<div class="RightButton" id="RightArr1"></div>
<script language="javascript" type="text/javascript">
<!--//--><![CDATA[//><!--
var scrollPic_03 = new ScrollPic();
scrollPic_03.scrollContId   = "ISL_Cont_11"; //内容容器ID
scrollPic_03.arrLeftId      = "LeftArr1";//左箭头ID
scrollPic_03.arrRightId     = "RightArr1"; //右箭头ID

scrollPic_03.frameWidth     = 675;//显示框宽度
scrollPic_03.pageWidth      = 136; //翻页宽度

scrollPic_03.speed          = 10; //移动速度(单位毫秒，越小越快)
scrollPic_03.space          = 10; //每次移动像素(单位px，越大越快)
scrollPic_03.autoPlay       = true; //自动播放
scrollPic_03.autoPlayTime   = 3; //自动播放间隔时间(秒)

scrollPic_03.initialize(); //初始化
							
		//--><!]]>
</script>
		</div>
	</div>
</div>
<script>
$(function() {
$().picFit("auto");
});
</script>
</div>
</div>
</div>
</div>

	  
	  </div>
	</div>
  
  </div>  
  <!--第四部分第二小部分结束-->
</div>
<!--第四部分结束-->
<!--第五部分-->
<div class="e">
  <div id="e1">关于我们| 最新公告| 联系方式| 在线报名| 咨询留言| 人才招聘| 友情链<br />
  学校地址：莆田城厢区霞林沟头居委会前面一号（万达广场旁）   招生热线：0594-2299998  2285222          邮编：351100
版权所有 Copyright(C)2013-2015 莆田市理工技术学校 [闽ICP备13009473号-14] 
</div>

</div>
<!--第五部分结束-->

</body>
</html>
