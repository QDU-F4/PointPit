<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD>
<TITLE>购物车</TITLE>
<!--bixanjxiqxi-->
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="qtimages/style.css" type=text/css rel=stylesheet>


<META content="MSHTML 6.00.2900.6058" name=GENERATOR>
</HEAD>
<script language=javascript src='js/popup.js'></script>
<script language=javascript> 
function hsgpinglun(nbiao,nid){ 
popheight=450;
pop('hsgpinglun.jsp?biao='+nbiao+'&id='+nid,'在线评论',550,250) ;
}
</script> 
<%
	String id=request.getParameter("id");
	HashMap mqt = new CommDAO().getmap(id,"gouwuche");
	//ldlbfz
     %>
<BODY>


<%@ include file="qttop.jsp"%>

<TABLE cellSpacing=0 cellPadding=0 width=1120 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD width=5>&nbsp;</TD>
    <TD vAlign=top width=230>
     <%@ include file="qtleft.jsp"%>
      </TD>
    <TD vAlign=top width=10>&nbsp;</TD>
    <TD vAlign=top>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=bottom height=40>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD width=50 height=40><IMG height=35 
                  src="qtimages/B0039.gif" 
                  width=30></TD>
                <TD width=817><span class="red"><strong>购物车</strong></span></TD>
                </TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD bgColor=#dadada height=1></TD></TR>
        <TR>
          <TD bgColor=#f6f6f6 height=4></TD></TR>
        <TR>
          <TD bgColor=#ffffff height=6>
		  
		 
   <table width="100%" border="0" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse"  class="newsline">  
      <tr>
		 <td width='11%'>商品编号：</td><td width='39%'><%=mqt.get("shangpinbianhao")%></td><td width='11%'>商品名称：</td><td width='39%'><%=mqt.get("shangpinmingcheng")%></td></tr><tr><td width='11%'>商品类别：</td><td width='39%'><%=mqt.get("shangpinleibie")%></td><td width='11%'>新旧程度：</td><td width='39%'><%=mqt.get("xinjiuchengdu")%></td></tr><tr><td width='11%'>价格：</td><td width='39%'><%=mqt.get("jiage")%></td><td width='11%'>库存数量：</td><td width='39%'><%=mqt.get("kucunshuliang")%></td></tr><tr><td width='11%'>发布人：</td><td width='39%'><%=mqt.get("faburen")%></td><td width='11%'>购买数量：</td><td width='39%'><%=mqt.get("goumaishuliang")%></td></tr><tr><td width='11%'>购买人：</td><td width='39%'><%=mqt.get("goumairen")%></td><td width='11%'>金额：</td><td width='39%'><%=mqt.get("jine")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" /><input type=button name=Submit52 value=打印 onClick="javascript:window.print()"  /></td></tr>
    
  </table>
						
						
						
		  </TD>
        </TR></TBODY></TABLE>
      </TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>
<%@ include file="qtdown.jsp"%>
<!-- dfexnxxiaxng -->
</BODY></HTML>

<!--suxilxatxihuxan-->
