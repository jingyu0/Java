function check(){
	   var myForm=document.forms["form1"];
	   var elementName=myForm.elements["stuName"];
	   var elementPassword=myForm.elements["stuPassword"];
	   if(elementName.value.length<=0){
		   alert("��������Ϊ�գ�");
		   elementName.focus();
		   return false;
	   }
	   if(elementPassword.value.length<=0){
		   alert("���벻��Ϊ�գ�");
		   elementPassword.focus();
		   return false;
	   }
}
