<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>���ﳵ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>���й��ﳵ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ��Ʒ��ţ�<input name="shangpinbianhao" type="text" id="shangpinbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  ��Ʒ���ƣ�<input name="shangpinmingcheng" type="text" id="shangpinmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  ��Ʒ���<input name="shangpinleibie" type="text" id="shangpinleibie" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>��Ʒ���</td>
    <td bgcolor='#CCFFFF'>��Ʒ����</td>
    <td bgcolor='#CCFFFF'>��Ʒ���</td>
    <td bgcolor='#CCFFFF'>�¾ɳ̶�</td>
    <td bgcolor='#CCFFFF'>�۸�</td>
    <td bgcolor='#CCFFFF'>�������</td>
    <td bgcolor='#CCFFFF'>������</td>
    <td bgcolor='#CCFFFF'>��������</td>
    <td bgcolor='#CCFFFF'>������</td>
    <td bgcolor='#CCFFFF'>���</td>
   <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ��ѽ���</td>

    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	double jinez=0;
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"gouwuche"); 
    String url = "gouwuche_list2.jsp?1=1"; 
    String sql =  "select * from gouwuche where goumairen='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("shangpinbianhao")=="" ||request.getParameter("shangpinbianhao")==null ){}else{sql=sql+" and shangpinbianhao like '%"+request.getParameter("shangpinbianhao")+"%'";}
if(request.getParameter("shangpinmingcheng")=="" ||request.getParameter("shangpinmingcheng")==null ){}else{sql=sql+" and shangpinmingcheng like '%"+request.getParameter("shangpinmingcheng")+"%'";}
if(request.getParameter("shangpinleibie")=="" ||request.getParameter("shangpinleibie")==null ){}else{sql=sql+" and shangpinleibie like '%"+request.getParameter("shangpinleibie")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	if (map.get("issh").equals("��"))
	{
	jinez=jinez+Float.valueOf((String)map.get("jine")).floatValue();
}
//txixgihxngjs
//youzuiping2
     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("shangpinbianhao") %></td>
 <td><%=map.get("shangpinmingcheng") %></td>
 <td><%=map.get("shangpinleibie") %></td>
 <td><%=map.get("xinjiuchengdu") %></td>
 <td><%=map.get("jiage") %></td>
 <td><%=map.get("kucunshuliang") %></td>
 <td><%=map.get("faburen") %></td>
 <td><%=map.get("goumaishuliang") %></td>
 <td><%=map.get("goumairen") %></td>
 <td><%=map.get("jine") %></td>
 <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="60" align="center"><a href="gouwuche_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="gouwuche_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="gouwuchedetail.jsp?id=<%=map.get("id")%>" target="_blank">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
���ƽ��:<%=jinez%>�� <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  <input type="button" name="Submit22" onClick="javascript:location.href='dingdan_add.jsp?jine=<%=jinez%>';" value="����" style='border:solid 1px #000000; color:#666666' />
  </body>
</html>

