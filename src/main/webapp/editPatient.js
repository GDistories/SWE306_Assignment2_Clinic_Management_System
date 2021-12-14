function validate(){
	let ICNo = document.getElementById("IC");
	let Patient_name = document.getElementById("patient_name");
	let Gender = document.getElementsByName("gender");
	let Phone_number = document.getElementById("phone_number");
	let Birthday = document.getElementById("birthday").value;
	let Visit_Date = document.getElementById("date").value;
	let status = 0;
	if(ICNo.value=="")
	{
		alert("IC No. Can Not Be Empty!");
		return false;
	}
	if(Patient_name.value=="")
	{
		alert("Patient Name Can Not Be Empty!");
		return false;
	}
	
	for(let temp in Gender)
	{
		if(Gender[temp].checked)
		{
			status = 1;
		}
	}
	
	if(status==0)
	{
		alert("The Choice of Gender Can Not Be Empty!");
		return false;
	}
	
	if(!(Birthday.length==8 || Birthday.length==10))
	{
		alert("Fomat of Birthday is Error!");
		return false;
	}
	
	if(Phone_number.value=="")
	{
		alert("Phone Number Can Not Be Empty!");
		return false;
	}
	

	if(!(Visit_Date.length==8 || Visit_Date.length==10))
	{
		alert("Fomat of Visit Date is Error!");
		return false;
	}
	return true;
}
