<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=gouwuche.xls");
%>
<html>
  <head>
    <title>���ﳵ</title>
  </head>

  <body >
  <p>���й��ﳵ�б�</p>
  

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
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ����</td>

    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "gouwuche_list.jsp?1=1"; 
    String sql =  "select * from gouwuche where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	//zoxngxetxoxngjxvi
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
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=gouwuche" onclick="return confirm('��ȷ��Ҫִ�д˲�����')"><%=map.get("issh")%></a></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
�������ݹ�<%=i %>��
  </body>
</html>

