
<%@ page import="plalium.User" %>
<%@ page import="plalium.ItemType" %>
<%@ page import="plalium.Age" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
   	<rateable:resources/>
    <title>Plalium :: home</title>
    <link rel="shortcut icon" type="image/x-icon" href="/plalium/images/favicon.ico" />
    <link href="/plalium/css/style.css" rel="stylesheet" type="text/css" />
    <script src="/js/formcheck.js" language="javascript" type="text/javascript"></script>
    <script src="/js/chrome.js" language="javascript" type="text/javascript"></script>
</head>
<body>
   <div class="mainblock">
        <div class="item_detail">
            <div class="item_detail_left">
                <div class="item_detail_box">
                    <div id="gallery" class="ad-gallery">
                        <div class="ad-image-wrapper">
							<div class="box1_img" style="vertical-align:central; flex-align:center">
                                <img id="cphBody_imgItem" src="${createLink(controller:'Item', action:'get_item_image', id:item.ident())}" align="middle" style="height:400px;width:460px;" />
                            </div>
                            <div class="clr">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item_detail_right">
                <div class="item_detail_top">
		                <h1>${item.title}</h1>
		                <p>link: ${item.url}</p>
		                <p>${item.summary}</p>
		                <rateable:ratings bean='${item}'/>
		                <comments:render bean="${item}">
						</comments:render>
		                <br></br>
		                
		                <div class="clr">
		                </div>                </div>
             </div>
		</div>
	</div>
</body>