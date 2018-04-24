package com.sinosteel.metallurgical.index.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sinosteel.framework.config.system.SystemConfig;
import com.sinosteel.framework.core.base.service.BaseService;
import com.sinosteel.framework.helpers.file.helper.FileHelper;
import com.sinosteel.framework.helpers.pagination.PageResult;
import com.sinosteel.framework.helpers.pagination.Pager;
import com.sinosteel.framework.system.basic.domain.User;
import com.sinosteel.framework.utils.string.StringUtil;
import com.sinosteel.metallurgical.index.domain.IndexDefinition;
import com.sinosteel.metallurgical.index.repository.IndexDefinitionRepository;

@Service
public class IndexDefinitionService extends BaseService<IndexDefinition>
{
	@Autowired
	private SystemConfig systemConfig;
	
	@Autowired
	private IndexDefinitionRepository indexDefinitionRepository;

	
	public JSONObject queryIndexDefinitions(JSONObject params)
	{
		StringBuilder hqlBuilder = new StringBuilder("FROM IndexDefinition indexDefinition WHERE 1 = 1 ");
		HashMap<String, Object> paramsMap = new HashMap<String, Object>();

		String name = params.getString("name");
		if(!StringUtil.isEmpty(name))
		{
			hqlBuilder.append("AND indexDefinition.name LIKE :name ");
			paramsMap.put("name", "%" + name + "%");
		}

		String code = params.getString("code");
		if(!StringUtil.isEmpty(code))
		{
			hqlBuilder.append("AND indexDefinition.code = :code ");
			paramsMap.put("code", code);
		}

		String indexFrequency = params.getString("indexFrequency");
		if(!StringUtil.isEmpty(indexFrequency))
		{
			hqlBuilder.append("AND indexDefinition.indexFrequency LIKE :indexFrequency ");
			System.out.println(Double.parseDouble(indexFrequency));
			paramsMap.put("indexFrequency", Double.parseDouble(indexFrequency));
		}

		String dataType = params.getString("dataType");
		if(!StringUtil.isEmpty(dataType))
		{
			hqlBuilder.append("AND indexDefinition.dataType = :dataType ");
			paramsMap.put("dataType", dataType);
		}

		String dataPrecision = params.getString("dataPrecision");
		if(!StringUtil.isEmpty(dataType))
		{
			hqlBuilder.append("AND indexDefinition.dataPrecision LIKE :dataPrecision ");
			System.out.println(Double.parseDouble(dataPrecision));
			paramsMap.put("dataPrecision", Double.parseDouble(dataPrecision));
		}

		String indexMeaning = params.getString("indexMeaning");
		if(!StringUtil.isEmpty(dataType))
		{
			hqlBuilder.append("AND indexDefinition.indexMeaning = :indexMeaning ");
			paramsMap.put("indexMeaning", indexMeaning);
		}

		String status = params.getString("status");
		if(!StringUtil.isEmpty(status))
		{
			hqlBuilder.append("AND indexDefinition.status = :status ");
			paramsMap.put("status", status);
		}

		String ordinaryIndexLibrary = params.getString("ordinaryIndexLibrary");
		if(!StringUtil.isEmpty(ordinaryIndexLibrary))
		{
			hqlBuilder.append("AND indexDefinition.ordinaryIndexLibrary = :ordinaryIndexLibrary ");
			paramsMap.put("ordinaryIndexLibrary", Boolean.parseBoolean(ordinaryIndexLibrary));
		}

		String inUse = params.getString("inUse");
		if(!StringUtil.isEmpty(inUse))
		{
			hqlBuilder.append("AND indexDefinition.inUse = :inUse ");
			System.out.println("inUse: " + inUse + Boolean.parseBoolean(inUse));
			paramsMap.put("inUse", Boolean.parseBoolean(inUse));
		}

		String useScale = params.getString("useScale");
		if(!StringUtil.isEmpty(useScale))
		{
			hqlBuilder.append("AND indexDefinition.useScale = :useScale ");
			paramsMap.put("useScale", useScale);
		}

		hqlBuilder.append("ORDER BY CREATED_TIME DESC");

		Pager pager = JSONObject.toJavaObject(params.getJSONObject("pagination"), Pager.class);
		PageResult<IndexDefinition> pageResult = indexDefinitionRepository.executeHql(hqlBuilder.toString(), paramsMap, pager);

		return pageResult.toJSONObject();
	}
	
	public void addIndexDefinition(JSONObject params, User user) throws Exception
	{
		//String standardResourcePathHead = systemConfig.getProperty("standardResourcePathHead");
		System.out.println("addIndexDefinition");
		String indexDefinitionId = UUID.randomUUID().toString();
		
		IndexDefinition indexDefinition = JSONObject.toJavaObject(params, IndexDefinition.class);
		indexDefinition.setId(indexDefinitionId);
		
		this.saveEntity(indexDefinition, user);
	}
	
	public void editIndexDefinition(JSONObject params, User user) throws Exception
	{
		//String standardResourcePathHead = systemConfig.getProperty("standardResourcePathHead");
		System.out.println("editIndexDefinition");
		IndexDefinition indexDefinition = JSONObject.toJavaObject(params, IndexDefinition.class);
		//String standardId = indexDefinition.getId();
		
		this.updateEntity(indexDefinition, user);
	}
	
	/*该方法不删除相关标准文件*/
	public void deleteIndexDefinition(JSONObject params)
	{
		String indexDefinitionId = params.getString("id");
		indexDefinitionRepository.delete(indexDefinitionId);
	}

	public String isInUse (String inUse){
		if (inUse.equals("true")){
			return "1";
		}
		else {
			return "0";
		}
	}
}
