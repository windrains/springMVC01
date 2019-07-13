<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<!-- 引入JQuery -->
  <script type="text/javascript" src="./easyui/jquery.min.js"></script>
  <!-- 引入EasyUI -->
  <script type="text/javascript" src="./easyui/jquery.easyui.min.js"></script>
  <!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
  <script type="text/javascript" src="./easyui/locale/easyui-lang-zh_CN.js"></script>
  <!-- 引入EasyUI的样式文件-->
  <link rel="stylesheet" href="./easyui/themes/default/easyui.css" type="text/css"/>
  <!-- 引入EasyUI的图标样式文件-->
  <link rel="stylesheet" href="./easyui/themes/icon.css" type="text/css"/>
	
	
  <!-- <script type="text/javascript" src="js/index.js" charset="UTF-8"></script> -->
	
	
	<script type="text/javascript">
      $(function(){
          //console.info($('#dd2'));
          /*使用JavaScript动态创建EasyUI的Dialog的步骤：
          1、定义一个div，并给div指定一个id
          2、使用Jquery选择器选中该div，然后调用dialog()方法就可以创建EasyUI的Dialog
          */
          $('#dd2').dialog();//使用默认的参数创建EasyUI的Dialog
          //使用自定义参数创建EasyUI的Dialog
          $('#dd3').dialog({
              title: '使用JavaScript创建的Dialog',
              width: 400,
              height: 200,
              closed: false,
              cache: false,
              modal: true
          });
      });
  </script>
  
	
  </head>
  
  <body>
    This is my JSP page with easyui . <br>
    
     <%--使用纯html的方式创建创建EasyUI的Dialog的步骤：
      1、定义一个div
      2、将div的class样式属性设置成easyui-dialog，这样就可以将普通的div变成EasyUI的Dialog了
       --%>
    <div class="easyui-dialog" id="dd1" title="EasyUI Dialog" style="width: 500px;height: 300px;">
        Hello World!
    </div>
    <div id="dd2">Dialog Content</div>
    <div id="dd3">Dialog Content</div>
  </body>
</html>
