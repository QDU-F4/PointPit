<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>����</title>
	<!--bixanjxiqxi-->
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
//xuxyaxodenxglxu
  String id="";
 String jine=request.getParameter("jine");
 //islbd1q HashMap mlbdq = new CommDAO().getmap(id,"melieibaoduqubiaoiguo");
 //islbd2q HashMap mlbdq = new CommDAO().getmaps("hsgzhujian",(String)request.getSession().getAttribute("username"),"melieibaoduqubiaoiguo");
 //islbdq gogogogogo
 //islbdq lelelelelele
 String shanpianxinxiz="";
  String sql2=  "select * from gouwuche where goumairen='"+request.getSession().getAttribute("username")+"' and issh='��'";
  ArrayList<HashMap> list = PageManager.getPages("",15,sql2, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	//wxflzhistri
	
	shanpianxinxiz=shanpianxinxiz+"��Ʒ���ƣ�"+(String)map.get("shangpinmingcheng")+", ����������"+(String)map.get("goumaishuliang")+";";
	}

 
 

   %>
<script language="javascript">

function gow()
{
	document.location.href="dingdan_add.jsp?id=<%=id%>";
}
</script>
<!--hxsglxiangdxongjxs-->
 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){
//wxfladd
//qiuji
ext.put("issh","��");
//youzhifu
//jitihuan

String sql="update gouwuche set issh='��' where goumairen='"+request.getSession().getAttribute("username")+"' ";
	new CommDAO().commOper(sql); 



}
new CommDAO().insert(request,response,"dingdan",ext,true,false,""); 
%>

  <body >
 <form  action="dingdan_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  ��Ӷ���:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">�����ţ�</td><td><input name='dingdanhao' type='text' id='dingdanhao' value='<%=Info.getID()%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">��</td><td><input name='jine' type='text' id='jine' value='<%=jine%>' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�����ˣ�</td><td><input name='goumairen' type='text' id='goumairen' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>
		<tr><td  width="200">�ջ���ַ��</td><td><input name='shouhuodizhi' type='text' id='shouhuodizhi' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">�ʱࣺ</td><td><input name='youbian' type='text' id='youbian' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>
		<tr><td  width="200">��ϵ�ֻ���</td><td><input name='lianxishouji' type='text' id='lianxishouji' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabellianxishouji' />�����ֻ���ʽ</td></tr>
		<tr><td  width="200">�������ݣ�</td><td><textarea name='dingdanneirong' cols='50' rows='5' id='dingdanneirong' onblur='' style='border:solid 1px #000000; color:#666666' ><%=shanpianxinxiz%></textarea></td></tr>
		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="����" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<!--suxilxatxihuxan-->


<script language=javascript src='js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var lianxishoujiobj = document.getElementById("lianxishouji"); if(lianxishoujiobj.value!=""){ if(/^1[3|4|5|8|7][0-9]\d{4,8}$/.test(lianxishoujiobj.value)){document.getElementById("clabellianxishouji").innerHTML=""; }else{document.getElementById("clabellianxishouji").innerHTML="&nbsp;&nbsp;<font color=red>�����ֻ���ʽ</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


