function  getAreaID() {
            var area = 0;          
            if ($("#seachdistrict").val() != "0") {
                area = $("#seachdistrict").val();                
            }
            else if ($("#seachcity").val() != "0") {
                area = $("#seachcity").val();
            }
            else {
                area = $("#seachprov").val();
            }
            
            return area;
        }

        function showAreaID() {
            //������
            var areaID = getAreaID();
            //������
            var areaName = getAreaNamebyID(areaID) ;
            alert("��ѡ��ĵ����룺" + areaID + "      ��������" + areaName);            
        }

        //���ݵ������ѯ������
        function getAreaNamebyID(areaID) {
            var areaName = "";
            if (areaID.length == 2) {
                areaName = area_array[areaID];
            }
            else if (areaID.length == 4) {
                var index1 = areaID.substring(0, 2);
                areaName = area_array[index1] + " " + sub_array[index1][areaID];
            }
            else if (areaID.length == 6) {
                var index1 = areaID.substring(0, 2);
                var index2 = areaID.substring(0, 4);
                areaName = area_array[index1] + " " + sub_array[index1][index2] + " " + sub_arr[index2][areaID];
            }
            return areaName;
        }