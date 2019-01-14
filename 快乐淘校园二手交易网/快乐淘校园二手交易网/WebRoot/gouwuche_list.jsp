<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>购物车</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有购物车列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  商品编号：<input name="shangpinbianhao" type="text" id="shangpinbianhao" style='border:solid 1px #000000; color:#666666' size="12" />  商品名称：<input name="shangpinmingcheng" type="text" id="shangpinmingcheng" style='border:solid 1px #000000; color:#666666' size="12" />  商品类别：<input name="shangpinleibie" type="text" id="shangpinleibie" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="导出EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='gouwuche_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>商品编号</td>
    <td bgcolor='#CCFFFF'>商品名称</td>
    <td bgcolor='#CCFFFF'>商品类别</td>
    <td bgcolor='#CCFFFF'>新旧程度</td>
    <td bgcolor='#CCFFFF'>价格</td>
    <td bgcolor='#CCFFFF'>库存数量</td>
    <td bgcolor='#CCFFFF'>发布人</td>
    <td bgcolor='#CCFFFF'>购买数量</td>
    <td bgcolor='#CCFFFF'>购买人</td>
    <td bgcolor='#CCFFFF'>金额</td>
    <td bgcolor='#CCFFFF' width='80' align='center'>是否审核</td>
	<!--dpinglun1-->
 
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
  <% 
  	double jinez=0;
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"gouwuche"); 
    String url = "gouwuche_list.jsp?1=1"; 
    String sql =  "select * from gouwuche where 1=1";
	
if(request.getParameter("shangpinbianhao")=="" ||request.getParameter("shangpinbianhao")==null ){}else{sql=sql+" and shangpinbianhao like '%"+request.getParameter("shangpinbianhao")+"%'";}
if(request.getParameter("shangpinmingcheng")=="" ||request.getParameter("shangpinmingcheng")==null ){}else{sql=sql+" and shangpinmingcheng like '%"+request.getParameter("shangpinmingcheng")+"%'";}
if(request.getParameter("shangpinleibie")=="" ||request.getParameter("shangpinleibie")==null ){}else{sql=sql+" and shangpinleibie like '%"+request.getParameter("shangpinleibie")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	jinez=jinez+Float.valueOf((String)map.get("jine")).floatValue();

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
    <td width='80' align='center'><a href="sh.jsp?id=<%=map.get("id")%>&yuan=<%=map.get("issh")%>&tablename=gouwuche" onclick="return confirm('您确定要执行此操作？')"><%=map.get("issh")%></a></td>
	<!--dpinglun2-->

    <td width="60" align="center"><a href="gouwuche_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="gouwuche_list.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <a href="gouwuchedetail.jsp?id=<%=map.get("id")%>" target="_blank">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
共计金额:<%=jinez%>； <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

