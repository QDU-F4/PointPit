<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������ϸ</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"dingdan");
     %>
  ������ϸ:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>�����ţ�</td><td width='39%'><%=m.get("dingdanhao")%></td><td width='11%'>��</td><td width='39%'><%=m.get("jine")%></td></tr><tr><td width='11%'>�����ˣ�</td><td width='39%'><%=m.get("goumairen")%></td><td width='11%'>�ջ���ַ��</td><td width='39%'><%=m.get("shouhuodizhi")%></td></tr><tr><td width='11%'>�ʱࣺ</td><td width='39%'><%=m.get("youbian")%></td><td width='11%'>��ϵ�ֻ���</td><td width='39%'><%=m.get("lianxishouji")%></td></tr><tr><td width='11%'>�������ݣ�</td><td width='39%'><%=m.get("dingdanneirong")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=���� onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=��ӡ onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


