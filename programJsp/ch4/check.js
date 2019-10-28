function check(){
	   var myForm=document.forms["form1"];
	   var elementName=myForm.elements["stuName"];
	   var elementPassword=myForm.elements["stuPassword"];
	   if(elementName.value.length<=0){
		   alert("姓名不能为空！");
		   elementName.focus();
		   return false;
	   }
	   if(elementPassword.value.length<=0){
		   alert("密码不能为空！");
		   elementPassword.focus();
		   return false;
	   }
}
