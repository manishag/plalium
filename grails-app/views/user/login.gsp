<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Plalium :: Login</title>
    <link rel="shortcut icon" type="image/x-icon" href="/plalium/images/favicon.ico" />
    <link href="/plalium/css/style.css" rel="stylesheet" type="text/css" />
    <script src="/js/formcheck.js" language="javascript" type="text/javascript"></script>
    <script src="/js/chrome.js" language="javascript" type="text/javascript"></script>
</head>
<body>
    <div class="main">
        <div class="modal">
            <div class="top">
                <div class="logo">
                    <a href="/Users/Login.gsp" title="Plalium">
                        <img src="/plalium/images/logo1.gif" alt="Plalium" /></a></div>
                <div class="toplink" style="float: right; padding: 20px 71px 0 0;">
                    <div class="clr">
                    </div>
                </div>
                <div class="bodytxt">
                    <div class="lefttxt">
                        <h1>
                            Share your toys and books recommendations<br />
                            with new friends around the world.</h1>
                        <p>
                            (See video to know How it Works?)</p>
                        <g:form action="authenticate" method="post">
					        <div class="dialog">
					          <table>
					            <tbody>            
					              <tr class="prop">
					                <td class="name">
					                  <label for="login">Login:</label>
					                </td>
					                <td>
					                  <input type="text" id="login" name="login"/>
					                </td>
					              </tr> 
					          
					              <tr class="prop">
					                <td class="name">
					                  <label for="password">Password:</label>
					                </td>
					                <td>
					                  <input type="password" id="password" name="password"/>
					                </td>
					              </tr> 
					            </tbody>
					          </table>
					        </div>
					        <div class="buttons">
					          <span class="button">
					            <input class="save" type="submit" value="Login" />
					          </span>
					        </div>
                         </g:form>
                         <p>
                         	Don't have an account?
					        <g:link controller="user" action="create">Sign up now!</g:link>
					      </p>
                    </div>
                    <div class="righttxt">
                        <div class="video">
                            <img src="/plalium/images/vd.gif" alt="" />
                        </div>
                        <div class="clr">
                        </div>
                    </div>
                    <div class="clr">
                    </div>
                    <div class="footer">
                        &copy; 2012 plalium. All rights reserved.</div>
                    <div class="clr">
                    </div>
                </div>
                <div class="clr">
                </div>
            </div>
        </div>
    </div>
</body>
</html>
