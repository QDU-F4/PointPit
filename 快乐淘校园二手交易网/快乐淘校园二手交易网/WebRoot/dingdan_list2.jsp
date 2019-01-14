<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>订单</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>

<!--hxsglxiangdxongjxs-->
  <body >
  <p>已有订单列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  订单号：<input name="dingdanhao" type="text" id="dingdanhao" style='border:solid 1px #000000; color:#666666' size="12" />  金额：<input name="jine" type="text" id="jine" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

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
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	//difengysfiqfgieuheze
//youzuiping1
//txixixngdy
  	 new CommDAO().delete(request,"dingdan"); 
    String url = "dingdan_list2.jsp?1=1"; 
    String sql =  "select * from dingdan where goumairen='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("dingdanhao")=="" ||request.getParameter("dingdanhao")==null ){}else{sql=sql+" and dingdanhao like '%"+request.getParameter("dingdanhao")+"%'";}
if(request.getParameter("jine")=="" ||request.getParameter("jine")==null ){}else{sql=sql+" and jine like '%"+request.getParameter("jine")+"%'";}
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
 
 <td width='80' align='center'><%=map.get("issh")%></td>
    <td width="60" align="center"><a href="dingdan_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="dingdan_list2.jsp?scid=<%=map.get("id") %>" onclick="return confirm('真的要删除？')">删除</a> <a href="dingdan_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
<!--yoxugonxgzitoxnxgjxi--> <!--youzuiping3--> 
${page.info }

  <%
//yoxutixinxg if(kucddduntx>0)
//yoxutixinxg{
//yoxutixinxg tsgehxdhdm
//yoxutixinxg}
%>
  </body>
</html>

