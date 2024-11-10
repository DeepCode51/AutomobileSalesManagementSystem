<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">

<link href="css/uploadfile.css" rel="stylesheet"> 
<script src="js/jquery.uploadfile.js"></script>

<script type="text/javascript" charset="utf-8" src="js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="roleEditForm" class="roleForm" method="post">
		<input id="roleId" type="hidden" name="roleId"/>
	    <span>角色名:</span>
	    <input class="easyui-textbox" type="text" name="roleName" data-options="required:true"/><br><br>
	    <span >状&nbsp态:</span>
		<select class="easyui-combobox" name="available" panelHeight="auto" data-options="width:150, editable:false">
			<option value="1">有效</option>
			<option value="2">锁定</option>
		</select><br><br>
        <span >权限:</span><br><br>
        <input type="hidden" name="permission" />
        <span style="font-weight: bold;">订单管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="11" />订单新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="12" />订单修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="13" />订单删除 </label> 
		<br><br>
        <span style="font-weight: bold;">客户管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="21" />客户新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="22" />客户修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="23" />客户删除 </label> 
		<br><br>
        <span style="font-weight: bold;">车辆信息管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="31" />产品新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="32" />产品修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="33" />产品删除 </label> 
		<br><br>
		<span style="font-weight: bold;">车辆增删改查：</span>
		<label><input name="permissionOption1" type="checkbox" value="61" />车辆新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="62" />车辆修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="63" />车辆删除 </label> 
		<br><br>
		<span style="font-weight: bold;">生产车辆管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="71" />车辆新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="72" />车辆修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="73" />车辆删除 </label> 
		<br><br>
		<span style="font-weight: bold;">生产派工管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="81" />生产派工新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="82" />生产派工修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="83" />生产派工删除 </label> 
		<br><br>
		<span style="font-weight: bold;">生产人管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="91" />生产人新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="92" />生产人修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="93" />生产人删除 </label> 
		<br><br>
		<span style="font-weight: bold;">车辆管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="101" />车辆新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="102" />车辆修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="103" />车辆删除 </label> 
		<br><br>
		<span style="font-weight: bold;">提醒用户定期安检管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="111" />提醒用户定期安检新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="112" />提醒用户定期安检修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="113" />提醒用户定期安检删除 </label> 
		<br><br>
		<span style="font-weight: bold;">提醒用户定期保养管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="121" />提醒用户定期保养新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="122" />提醒用户定期保养修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="123" />提醒用户定期保养删除 </label> 
		<br><br>
		<span style="font-weight: bold;">业务管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="181" />业务新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="182" />业务修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="183" />业务删除 </label> 
		<br><br>
		<span style="font-weight: bold;">业务收入管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="191" />业务收入新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="192" />业务收入修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="193" />业务收入删除 </label>  
		<br><br>
		<span style="font-weight: bold;">汽车进货管理管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="221" />汽车进货管理新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="222" />汽车进货管理修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="223" />汽车进货管理删除 </label> 
		<br><br>
		<span style="font-weight: bold;">成品计数质检：</span>
		<label><input name="permissionOption1" type="checkbox" value="131" />成品计数质检新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="132" />成品计数质检修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="133" />成品计数质检删除 </label>  
		<br><br>
		<span style="font-weight: bold;">成品计量质检：</span>
		<label><input name="permissionOption1" type="checkbox" value="141" />成品计量质检新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="142" />成品计量质检修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="143" />成品计量质检删除 </label> 
		<br><br>
		<span style="font-weight: bold;">热卖汽车类型：</span>
		<label><input name="permissionOption1" type="checkbox" value="151" />热卖汽车类型新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="152" />热卖汽车类型修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="153" />热卖汽车类型删除 </label>  
		<br><br>
		<span style="font-weight: bold;">人员销售数量：</span>
		<label><input name="permissionOption1" type="checkbox" value="161" />人员销售数量新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="162" />人员销售数量修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="163" />人员销售数量删除 </label>
		<br><br>
		<span style="font-weight: bold;">不合格品申请：</span>
		<label><input name="permissionOption1" type="checkbox" value="171" />不合格品申请新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="172" />不合格品申请修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="173" />不合格品申请删除 </label>  
		<br><br>
		<span style="font-weight: bold;">设备台账管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="231" />设备台账新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="232" />设备台账修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="233" />设备台账删除 </label> 
		<br><br>
		<span style="font-weight: bold;">设备种类管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="271" />设备种类新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="272" />设备种类修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="273" />设备种类删除 </label> 
		<br><br>
		<span style="font-weight: bold;">设备例检管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="241" />设备例检新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="242" />设备例检修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="243" />设备例检删除 </label> 
		<br><br>
		<span style="font-weight: bold;">设备故障管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="251" />设备故障新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="252" />设备故障修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="253" />设备故障删除 </label> 
		<br><br>
		<span style="font-weight: bold;">设备维修管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="261" />设备维修新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="262" />设备维修修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="263" />设备维修删除 </label> 
		<br><br>
		<span style="font-weight: bold;">部门管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="41" />部门新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="42" />部门修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="43" />部门删除 </label> 
		<br><br>
		<span style="font-weight: bold;">员工管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="51" />员工新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="52" />员工修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="53" />员工删除 </label> 
		<br><br>
		<span style="font-weight: bold;">用户管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="201" />用户新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="202" />用户修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="203" />用户删除 </label> 
		<br><br>
		<span style="font-weight: bold;">角色管理：</span>
		<label><input name="permissionOption1" type="checkbox" value="211" />角色新增 </label> 
		<label><input name="permissionOption1" type="checkbox" value="212" />角色修改 </label> 
		<label><input name="permissionOption1" type="checkbox" value="213" />角色删除 </label> 
		<br><br><br>
	</form>
	<br><br>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitRoleEditForm()">提交</a>
	</div>
</div>
<script type="text/javascript">
	function permissionInit(){
		var roleId = $('#roleEditForm [name=roleId]').val();
		$.get("permission/get_permission", {roleId : roleId}, function(data){
			//获得所要回显的值，此处为","分割的字符串
	        var checkeds = data.sysPermissionId;
	        if(checkeds != '' && checkeds != null){
		        //拆分为字符串数组
		        checkArray =checkeds.split(",");
		    	//获得所有的复选框对象
			    var checkBoxAll = $("input[name='permissionOption1']");
			    //获得所有复选框的value值，然后，用checkArray中的值和他们比较，如果有，则说明该复选框被选中
			    for(var i=0;i<checkArray.length-1;i++){
				    //获取所有复选框对象的value属性，然后，用checkArray[i]和他们匹配，如果有，则说明他应被选中
				    $.each(checkBoxAll,function(j,checkbox){
					    //获取复选框的value属性
					    var checkValue=$(checkbox).val();
					    
					    if(checkArray[i]==checkValue){
					    	/* alert("checkArray[i] = "+checkArray[i])
						    alert("checkValue = "+checkValue) */
					    	$(checkbox).prop("checked",true);
					    }
				    });
			   	}
	        }
		}); 
	}
	
	function submitRoleEditForm(){
		if(!$('#roleEditForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
	
		if($("input[name='permissionOption1']:checked").length>0){
			var permission = '';
			$("input[name='permissionOption1']:checked").each(function(){
				permission += $(this).val()+',';
			}); 
			$("#roleEditForm [name=permission]").val(permission);
		}
		$.post("role/update_all",$("#roleEditForm").serialize(), function(data){
			if(data.status == 200){
				$.messager.alert('提示', data.msg);
				$("#roleEditWindow").window('close');
				$("#roleList").datagrid("reload");
			}else{
				$.messager.alert('提示',data.msg);
			}
		});
	}
</script>
