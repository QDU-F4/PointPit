<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=dingdan.xls");
%>
<html>
  <head>
    <title>订单</title>
  </head>

  <body >
  <p>已有订单列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>订单号</td>
    <td bgcolor='#CCFFFF'>金额</td>
    <td bgcolor='#CCFFFF'>购买人</td>
    <td bgcolor='#CCFFFF'>收货地址</td>
    <td bgcolor='#CCFFFF'>邮编</td>
    <td bgcolor='#CCFFFF'>联系手机</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>

    

  </tr>
  <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
    String url = "dingdan_list.jsp?1=1"; 
    String sql =  "select * from dingdan where 1=1";
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
    <td><%=map.get("dingdanhao") %></td>
    <td><%=map.get("jine") %></td>
    <td><%=map.get("goumairen") %></td>
    <td><%=map.get("shouhuodizhi") %></td>
    <td><%=map.get("youbian") %></td>
    <td><%=map.get("lianxishouji") %></td>
    
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=dingdan" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>

  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

