<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>订单</title>
	<!--bixanjxiqxi-->
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

<!--hxsglxiangdxongjxs-->
  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 
//wxfladd
new CommDAO().update(request,response,"dingdan",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"dingdan"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="dingdan_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改订单:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>订单号：</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%= mmm.get("dingdanhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>金额：</td><td><input name='jine' type='text' id='jine' value='<%= mmm.get("jine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>购买人：</td><td><input name='goumairen' type='text' id='goumairen' value='<%= mmm.get("goumairen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>收货地址：</td><td><input name='shouhuodizhi' type='text' id='shouhuodizhi' value='<%= mmm.get("shouhuodizhi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>邮编：</td><td><input name='youbian' type='text' id='youbian' value='<%= mmm.get("youbian")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>联系手机：</td><td><input name='lianxishouji' type='text' id='lianxishouji' value='<%= mmm.get("lianxishouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>订单内容：</td><td><textarea name='dingdanneirong' cols='50' rows='5' id='dingdanneirong' style='border:solid 1px #000000; color:#666666'><%=mmm.get("dingdanneirong")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


