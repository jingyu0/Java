//���溯����������Ƿ���һ���Ϸ���ʵ��
function isValidDouble(str)
{
	flag=true;
	dotNum=0;
	for (i=0;i<str.length;i++)
	{
		ch=str.charAt(i);
		if (ch=='.')
		{
			dotNum=dotNum+1;
			if (dotNum>1) 
			{
				flag=false;
				break;
			}
		}
		else if (!isNumeric(ch))
		{
			flag=false;
			break;
		}
	}
	return flag;
}
//���溯���ж��Ƿ���һ���Ϸ�������
function isValidINT(str)
{
	flag=true;
	for (i=0;i<str.length;i++)
	{
		ch=str.charAt(i);
		if (!isNumeric(ch))
		{
			flag=false;
			break;
		}
	}
	return flag;
}
//���溯���ж��Ƿ���һ������ 
 function isNumeric(ch)
 {
	flag=false;
	if (ch<='9'&&ch>='0')
	{
		flag=true;
	}
	return flag;
}
