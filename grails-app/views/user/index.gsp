
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
	<div class="tpinner">
    <div class="logo">
        <a href="/plalium/user/index" title="Plalium">
            <img src="/plalium/images/logo1.gif" alt="Plalium" />
        </a>
    </div>
    <div class="tplnk">
        <div class="tp1">
            <div id="menubar">
                <div id="menu-content">
                    <ul>
                        <li><a href="../item/create" title="Add Item">Add Item<img src="/plalium/images/plus.jpg" alt="add Item" /></a></li>
                    </ul>
                    <div class="clr">
                    </div>
                </div>
                <script type="text/javascript">cssdropdown.startchrome("menubar")</script>
                <div id="dropmenu1" class="dropmenudiv">
                    <a href="../Users/EditItems.aspx" title="Edit Item">Edit Item</a>
                    <!--<a href="settings.html"
                        title="Settings">Settings</a> <a href="logout.html" title="Logout">Logout</a> -->
                </div>
            </div>
        </div>
        <div class="clr">
        </div>
    </div>
</div>
<div class="top2">
	<g:form controller="user" action="index"  method="post" >
    
    <div class="cat">
        <g:select name="itemTypeFilter" from="${ItemType.values()}" optionKey="key">
		</g:select>

    </div>
    <div class="cat">
        <g:select name="ageFilter" from="${Age.values()}" optionKey="key">
		</g:select>
    </div>
    <div class="buttons">
        <span class="button"><input class="save" type="submit" value="Search" /></span>
    </div>
   </g:form>	
</div>


	    <div class="mainblock">
	    
		<table style="border-collapse:collapse;">		    
		    <g:each in="${list}" var="item">
			    <g:link controller="Item" action="itemDetail" id='${item.ident()}'>
			    	<div class="box1">
		                <g:if test="${item.image}">
		                
		  					<img class="box1_img" src="${createLink(controller:'Item', action:'get_item_image', id:item.ident())}" width="207" height="189"/>
	  					
						</g:if>
		                <h1>${item.title}</h1>
		                <p>${item.summary}</p>
		                <br></br>
		                <p>link: ${item.url}</p>
		                <div class="clr">
		                </div>
		            </div>
		            <div class="clr">
		            </div>
	            </g:link>
		    </g:each>
		</table>
    </div>
	</body>
</html>
