<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>商品信息</title>
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
new CommDAO().update(request,response,"shangpinxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shangpinxinxi"); 
//lixanxdoxngcxhaxifxen
%>
  <form  action="shangpinxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改商品信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>商品编号：</td><td><input name='shangpinbianhao' type='text' id='shangpinbianhao' value='<%= mmm.get("shangpinbianhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>商品名称：</td><td><input name='shangpinmingcheng' type='text' id='shangpinmingcheng' value='<%= mmm.get("shangpinmingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>商品类别：</td><td><%=Info.getselect("shangpinleibie","shangpinleibie","leibie")%></td></tr><script language="javascript">document.form1.shangpinleibie.value='<%=mmm.get("shangpinleibie")%>';</script>     <tr><td>新旧程度：</td><td><select name='xinjiuchengdu' id='xinjiuchengdu'><option value="全新">全新</option><option value="9成新">9成新</option><option value="8成新">8成新</option><option value="7成新">7成新</option><option value="6成新">6成新</option></select></td></tr><script language="javascript">document.form1.xinjiuchengdu.value='<%=mmm.get("xinjiuchengdu")%>';</script>     <tr><td>图片：</td><td><input name='tupian' type='text' id='tupian' size='50' value='<%= mmm.get("tupian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='上传' onClick="up('tupian')" style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>价格：</td><td><input name='jiage' type='text' id='jiage' value='<%= mmm.get("jiage")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>库存数量：</td><td><input name='kucunshuliang' type='text' id='kucunshuliang' value='<%= mmm.get("kucunshuliang")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>发布人：</td><td><input name='faburen' type='text' id='faburen' value='<%= mmm.get("faburen")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onclick="return check();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


