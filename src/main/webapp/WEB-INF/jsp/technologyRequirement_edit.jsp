<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="technologyRequirementEditForm" class="technologyRequirementForm" method="post">
		<input type="hidden" name="technologyRequirementId"/>
	    <table cellpadding="5">
	        <tr>
	            <td>生产人名称:</td>
	            <td>
	            	<input class="easyui-combobox" name="technologyId" panelHeight="auto" data-options="required:true,
	            		valueField:'technologyId',textField:'technologyName',url:'technologyRequirement/get_data',
	            		editable:false"/>
	            </td>
	        </tr>
	        <tr>
	            <td>提醒用户定期保养添加时间:</td>
	            <td>
	            	<input class="easyui-datetimebox" name="addTime"     
        			data-options="required:true,showSeconds:true">
	            </td>
	        </tr>
	          
	        <tr>
	            <td>提醒用户定期保养修改时间:</td>
	            <td>
	            	<input class="easyui-datetimebox" name="reviseTime"/>
	            </td>
	        </tr>
	        <tr>
	        <td>提醒用户定期保养:</td>
	            <td>
	                <textarea style="width:800px;height:300px;visibility:hidden;" name="requirement"></textarea>
	            </td>
	         </tr>
	    </table>
	</form>
	<div style="padding-top:20px;">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitTechnologyRequirementEditForm()">
			&nbsp;&nbsp;提交&nbsp;&nbsp;
		</a>
	</div>
</div>
<script type="text/javascript">
	var requirementEditEditor ;
	
	$(function(){
		//实例化编辑器
		requirementEditEditor = TAOTAO.createEditor("#technologyRequirementEditForm [name=requirement]");
	});
	//同步kindeditor中的内容
	requirementEditEditor.sync();
	
	function submitTechnologyRequirementEditForm(){
		$.get("technologyRequirement/edit_judge",'',function(data){
    		if(data.msg != null){
    			$.messager.alert('提示', data.msg);
    		}else{ 
    			if(!$('#technologyRequirementEditForm').form('validate')){
    				$.messager.alert('提示','表单还未填写完成!');
    				return ;
    			}
    			
    			requirementEditEditor.sync();
    			
    			$.post("technologyRequirement/update_all",$("#technologyRequirementEditForm").serialize(),
						function(data){
    				if(data.status == 200){
    					$.messager.alert('提示','修改提醒用户定期保养成功!','info',function(){
    						$("#technologyRequirementEditWindow").window('close');
    						$("#technologyRequirementList").datagrid("reload");
    					});
    				}else{
    					$.messager.alert('提示',data.msg);
    				}
    			});
    		}
    	});
	}
</script>
