package com.sinosteel.metallurgical.index.web;

import com.sinosteel.metallurgical.index.service.IndexDefinitionService;
import org.apache.log4j.Logger;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sinosteel.framework.core.auth.AuthorizationScope;
import com.sinosteel.framework.core.auth.RequiresAuthorization;
import com.sinosteel.framework.core.base.web.BaseController;
import com.sinosteel.framework.core.web.Request;
import com.sinosteel.framework.core.web.RequestType;
import com.sinosteel.framework.core.web.Response;
import com.sinosteel.framework.core.web.ResponseType;
import com.sinosteel.framework.helpers.file.helper.FileHelper;
import com.sinosteel.framework.system.basic.service.UserService;

//继承自BaseController，BaseController提供统一的请求路径/services
@RestController
public class IndexDefinitionController extends BaseController
{
	//获取日志记录器Logger，名字为本类类名
	private static Logger log = Logger.getLogger(IndexDefinitionController.class);
	@Autowired
	private IndexDefinitionService indexDefinitionService;
	
	@RequestMapping(value = "/queryIndexDefinitions")
	@RequiresAuthorization(
			requestType = RequestType.QUERY,
			serviceClass = UserService.class,
			queryScope = AuthorizationScope.ALL,
			editScope = AuthorizationScope.ORGANIZATION,
			deleteScope = AuthorizationScope.ORGANIZATION)
	public Response queryIndexDefinitions(Request request)
	{
		Response response = new Response();

		try
		{
			response.status = ResponseType.SUCCESS;
			response.data = indexDefinitionService.queryIndexDefinitions(request.getParams());
		}
		catch(Exception e)
		{
			e.printStackTrace();

			response.status = ResponseType.FAILURE;
			response.message = e.getMessage();
		}

		return response;
	}
	
	@RequestMapping(value = "/addIndexDefinition")
	@RequiresPermissions(value = "addIndexDefinition")
	public Response addIndexDefinition(Request request)
	{
		Response response = new Response();
		
		try
		{
			indexDefinitionService.addIndexDefinition(request.getParams(), request.getUser());
			
			response.status = ResponseType.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			response.status = ResponseType.FAILURE;
			response.message = e.getMessage();
		}
		
		return response;
	}
	
	@RequestMapping(value = "/deleteIndexDefinition")
	@RequiresPermissions(value = "deleteIndexDefinition")
	public Response deleteIndexDefinition(Request request)
	{
		Response response = new Response();
		
		try
		{
			indexDefinitionService.deleteIndexDefinition(request.getParams());
			
			response.status = ResponseType.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			response.status = ResponseType.FAILURE;
			response.message = e.getMessage();
		}
		
		return response;
	}
	
//	@RequestMapping(value = "/deleteStandardResource")
//	public Response deleteStandardResource(Request request)
//	{
//		Response response = new Response();
//
//		try
//		{
//			FileHelper.deleteFile(request.getParams(), StandardResourceService.class);
//
//			response.status = ResponseType.SUCCESS;
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//
//			response.status = ResponseType.FAILURE;
//			response.message = e.getMessage();
//		}
//
//		return response;
//	}
	
	@RequestMapping(value = "/editIndexDefinition")
	@RequiresPermissions(value = "editIndexDefinition")
	public Response editIndexDefinition(Request request)
	{
		Response response = new Response();
		
		try
		{
			indexDefinitionService.editIndexDefinition(request.getParams(), request.getUser());
			
			response.status = ResponseType.SUCCESS;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
			response.status = ResponseType.FAILURE;
			response.message = e.getMessage();
		}
		
		return response;
	}
}
