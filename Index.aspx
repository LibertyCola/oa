﻿<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Index.aspx.cs" Inherits="_Default" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
    <head runat="server">
        <title>企业内部办公系统</title>
        <META CONTENT=0 HTTP-EQUIV=Expires> 
        <META CONTENT=no_cache HTTP-EQUIV=Pragma> 
        <Link href="zts.ico" rel="Shortcut Icon"> 
        <META CONTENT="7 days" name=revisit-after>   
    </head>
    <frameset rows="100,*" cols="*" frameborder="YES" border="1" framespacing="0">
        <frame src="indexFrame/topTitle.aspx" name="topFrame" scrolling="no" noresize>
        <frameset cols="21%,*" frameborder="NO" border="0" framespacing="0">
            <frame src="indexFrame/leftEmployee.aspx" name="leftFrame" scrolling="yes" noresize>
            <frame src="indexFrame/righyNotice.aspx" name="rightFrame" scrolling="yes" noresize >
        </frameset>
    </frameset>
    <noframes><body>
              </body></noframes>
</html>