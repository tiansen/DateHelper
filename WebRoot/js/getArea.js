function getArea(){
	var areaId=0;
	var provId=$("#seachprov").val();
	var cityId=$("#seachcity").val();
	var districtId=$("#seachdistrict").val();
	areaId=provId;
	if(cityId!=0){
		if(districtId!=0){
			areaId=districtId;
		}
		else{
			areaId=cityId;
		}
	}
	var areaName=getAreaNamebyID(areaId);
	$("#areaStr").val(areaName);
}