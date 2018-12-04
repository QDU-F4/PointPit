// JScript 文件

 String.prototype.realLength = function()
 {
   return this.replace(/[^\x00-\xff]/g,"**").length;
 }
function MemberloginIn()
{    
    var sCheckValue=document.getElementById("UserName").value;   
    var sLen=sCheckValue.realLength();                                            
    if (sLen<=0 || sLen>50) 
    {
       document.getElementById("UserName").className="reg_input2";             
       return false;
    }            
    
    sCheckValue=sCheckValue.replace(/(^\s*)|(\s*$)/g, ""); 	
    if (sLen>0)
    {
        var reg = /^(\w|[\u4E00-\u9FA5]|\s|['.&-_@])*$/; 
        if(sCheckValue.match(reg)) 
        { 
        document.getElementById("UserName").value=sCheckValue;		
        } 
        else 
        { 			        
	       document.getElementById("UserName").className="reg_input2";                  
           return false;
       
        }          		
    }	
    
    sCheckValue=document.getElementById("PassWord").value;
    sLen=sCheckValue.realLength();                                  
    if (sLen<=0 || sLen>50) 
    {
       document.getElementById("PassWord").className="reg_input2";             
       return false;
    } 
    sCheckValue=sCheckValue.replace(/(^\s*)|(\s*$)/g, ""); 	
    if (sLen>0)
    {
        var reg = /^(\w|[\u4E00-\u9FA5]|\s|[~!@#$%^&*().])*$/; 
        if(sCheckValue.match(reg)) 
        { 
        document.getElementById("PassWord").value=sCheckValue;		
        } 
        else 
        { 			        
	       document.getElementById("PassWord").className="reg_input2";                      
           return false;
        }          		
    }
    
    
    document.getElementById("PassWord").value=$.md5(document.getElementById("PassWord").value+document.getElementById("UserName").value);      
    
    document.getElementById("form1").submit();

}

function changeInputOnfocus(str)
{        
    document.getElementById(str).className="reg_input";        
}

function changeInputOnblur(str)
{        
    document.getElementById(str).className="reg_input";                
}

function openwin(url) 
{ 
window.open (url, "newwindow", "height=380, width=670, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no, alwaysRaised=yes, depended=yes") ;
}    


function CheckKeyPressLogin(evt)
{
    evt = (evt) ? evt : ((window.event) ? window.event : "") //兼容IE和Firefox获得keyBoardEvent对象
    var key = evt.keyCode?evt.keyCode:evt.which; //兼容IE和Firefox获得keyBoardEvent对象的键值
    if(key == 13){ //同时按下了Ctrl和回车键
        MemberloginIn(); //do something;
    }
}