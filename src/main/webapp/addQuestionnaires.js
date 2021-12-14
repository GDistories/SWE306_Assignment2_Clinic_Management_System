function validate(){
	let Q1 = document.getElementsByName("choice");
	let Q2 = document.getElementsByName("vaccinated");
	let Q3 = document.getElementsByName("symptoms");
	let Q4 = document.getElementsByName("clusters");
	let Q5 = document.getElementsByName("close_contact");
	let status = 0;
	for(let temp in Q1)
	{
		if(Q1[temp].checked)
		{
			status = 1;
		}
	}
	if(status==0)
	{
		alert("The choice of Question 1 is Empty!");
		return false;
	}
	status=0;
		
	for(let temp in Q2)
	{
		if(Q2[temp].checked)
		{
			status = 1;
		}
	}
	if(status==0)
	{
		alert("The choice of Question 2 is Empty!");
		return false;
	}
	status=0;
	
	for(let temp in Q3)
	{
		if(Q3[temp].checked)
		{
			status = 1;
		}
	}
	if(status==0)
	{
		alert("The choice of Question 3 is Empty!");
		return false;
	}
	status=0;
	
	for(let temp in Q4)
	{
		if(Q4[temp].checked)
		{
			status = 1;
		}
	}
	if(status==0)
	{
		alert("The choice of Question 4 is Empty!");
		return false;
	}
	status=0;
	
	for(let temp in Q5)
	{
		if(Q5[temp].checked)
		{
			status = 1;
		}
	}
	if(status==0)
	{
		alert("The choice of Question 5 is Empty!");
		return false;
	}
	status=0;
	
	return true;
}
