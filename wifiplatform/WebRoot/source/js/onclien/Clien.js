//搜索			
function querybymac(pcode){
	if(pcode==null){
		alert("请先选择要搜索的地区");
	}else{
var mac = $("#searchbymac").val();
var user_status = $('input[name="optionsRadios"]').filter(':checked').val();
$.ajax({     
			type : "POST",
			dataType : "json",
			url : "onclien!querybycode",
			data : "mac="+ mac+"&code="+pcode+"&user_status="+user_status,
			success : function(json) {
				var htmlStr = "";
						htmlStr += " <table width='100%' border='0' cellspacing='0' cellpadding='0' class='AP_table'  id='data_table'>";
						htmlStr += " <tr style='background:#61E4B5;'>";
						htmlStr += "<td width='10%'><div ali gn='center'>终端MAC</div></td>";				
						htmlStr += "<td width='10%'><div align='center'>AP MAC</div></td>";
						htmlStr += "<td width='15%'><div align='center'>区域</div></td>";
						htmlStr += "</tr>";
						for ( var i = 0; i < json.length; i++) {
						htmlStr += "<tr style='background:#FCFDFD'>"
							htmlStr += "<td width='10%'><div align='center'>"
									+ json[i].mac
									+ "</div></td>";
							
								var n = json[i].outgoing;
							if(n%Math.pow(1024,2)!=n){
								n = n / Math.pow(1024,2);
								var num = Math.round(n * 10) / 10;
								var outgoing = num+"GB"
							}
							else{
								if(n%1024!=n){
									n = n/1024;
									var num = Math.round(n * 10) / 10;
									var outgoing = num+"MB"
								}else{
									var outgoing = n+"KB"
								}
							}
							
									
							var n = json[i].incoming;
							if(n%Math.pow(1024,2)!=n){
								n = n / Math.pow(1024,2);
								var num = Math.round(n * 10) / 10;
								var incoming = num+"GB"
							}
							else{
								if(n%1024!=n){
									n = n/1024;
									var num = Math.round(n * 10) / 10;
									var incoming = num+"MB"
								}else{
									var incoming = n+"KB"
								}
							}
							
							
							var s = "";
							if(json[i].device.toUpperCase().indexOf("ANDROID") != -1){
								s = "android";
							}else if(json[i].device.toUpperCase().indexOf("IPHONE") != -1){
									s = "iphone";
							}else if(json[i].device.toUpperCase().indexOf("WINDOWS") != -1){
									s =  "pc";
							}else if(json[i].device.toUpperCase().indexOf("MAC OS") != -1){
									s =  "pc";
							}else if(json[i].device.toUpperCase().indexOf("IPAD") != -1){
									s = "ipad";
							}else {
									s = json[i].device;
							}
															
									
							htmlStr += "<td width='10%'><div align='center'>"
									+ json[i].access_mac
									+ "</div></td>";					
							
							
									
							var c = "";
							if(json[i].pname == json[i].cname){
								json[i].cname = c;
							}	
							htmlStr += "<td width='15%'><div align='center'>"
									+ json[i].pname+""
									+ "</div></td>";
							
							htmlStr += "</tr>";
						}
						htmlStr += "</table>";
						$("#data_table").html(htmlStr);
					},
					error : function() {
						if (!confirm('该地区没有数据，请重新选择!'))
							return;
						window.location = '${ctx}/onclien!initAccountManage.do';
					}
				});
	}
};

