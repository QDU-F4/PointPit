<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>



	<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;
 </script>
 <style type="text/css">
 body,td,th {
	color: #000000;
}
 </style>
 
 




<TABLE cellSpacing=0 cellPadding=0 width=1120 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD height=5></TD>
    <TD height=5></TD>
    <TD height=5></TD></TR>
  <TR>
    <TD width=5>&nbsp;</TD>
    <TD height=74>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=20><img height=74 alt="" 
            src="qtimages/B0003.gif" 
width=183></TD>
          <TD style="BACKGROUND-IMAGE: url(qtimages/B0002.gif)" 
          width=30>&nbsp;</TD>
          <TD style="BACKGROUND-IMAGE: url(qtimages/B0002.gif)" vAlign=top>&nbsp;</TD></TR></TBODY></TABLE></TD>
    <TD width=5>&nbsp;</TD></TR>
  <TR>
    <TD>&nbsp;</TD>
    <TD>
      <TABLE style="BACKGROUND-IMAGE: url(qtimages/B0005.gif)" cellSpacing=0 
      cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD width=8><IMG height=32 alt="" 
            src="qtimages/B0004.gif" width=8></TD>
          <TD vAlign=center align=middle><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0" class="red">
           <tr>
               <td align="center"><strong><a href="index.jsp"><font  class="STYLE1">��ҳ</font></a></strong></td>
              <td align="center"><strong><a href="lyblist.jsp"><font  class="STYLE1">��������</font></a></strong></td>
              <td align="center"><strong><a href="userreg.jsp"><font  class="STYLE1">�û�ע��</font></a></strong></td>
              <td align="center"><strong><a href="shangpinxinxilist.jsp"><font  class="STYLE1">��Ʒ��Ϣ</font></a></strong></td>
              <td align="center"><strong><a href="login.jsp"><font  class="STYLE1">��̨</font></a></strong></td>
            </tr>
          </table></TD>
          <TD align=right width=5><IMG height=32 alt="" 
            src="qtimages/B0006.gif" 
        width=8></TD></TR></TBODY></TABLE></TD>
    <TD>&nbsp;</TD></TR>
  <TR>
    <TD height=5></TD>
    <TD height=147 background="qtimages/banner.jpg"><table width="48%" height="51" border="0" align="left">
      <tr>
        <td><div style="font-family:����; color:#FFFFFF; WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 35px; margin-top:5pt">
            <div align="center" >������У԰���ֽ�����</div>
        </div></td>
      </tr>
    </table></TD>
    <TD height=5></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=1120 align=center bgColor=#ffffff 
border=0>
  <TBODY>
  <TR>
    <TD width=5>&nbsp;</TD>
    <TD width=5><IMG height=52 alt="" 
      src="qtimages/B0082.gif" width=11></TD>
    <TD style="BACKGROUND-IMAGE: url(qtimages/B0084.gif)">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
        <FORM id=searchform name=searchform 
        onsubmit="" action=news.jsp
        method=post>
        <TBODY>
        <TR>
          <TD width=71 height="40" align=middle style="color: #000000">վ������</TD>
          <TD width=127><select name="lb" style="width:80px; height:20px; border:solid 1px #000000; color:#666666">
           <%
						    for(HashMap m:new CommDAO().select("select distinct(leibie) as ss from xinwentongzhi")){
							%>
							<option value="<%=m.get("ss") %>"><%=m.get("ss") %></option>
							<%
							}
						   %>
          </select></TD>
          <TD width=341><span style="color: #000000">�ؼ���</span>��
<input 
            name=keyword class=fourline-BDBDBD id="keyword" size=25 maxlength=30 /></TD>
          <TD width=109><INPUT 
            style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px" 
            type=image src="qtimages/B0042.gif" 
            name=imageField> &nbsp;</TD>
          <TD width=436>&nbsp;&nbsp;&nbsp;</TD>
        </TR></FORM></TABLE></TD>
    <TD align=right width=8><IMG height=52 alt="" 
      src="qtimages/B0083.gif" width=11></TD>
    <TD width=5>&nbsp;</TD></TR></TBODY></TABLE>