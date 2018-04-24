import React, { Component, PropTypes } from 'react';

import ListComponent from 'common/basic/components/ListComponent';

import IndexDefinitionInspectView from './IndexDefinitionInspectView';
import IndexDefinitionEditView from './IndexDefinitionEditView';

import {deleteIndexDefinitionService} from 'services';

class IndexDefinitionListComponent extends ListComponent
{
	constructor(props)
	{
		super(props);
        
		this.columns = 
        [
            {
                title: '指标名称',
                dataIndex: 'name'
            },
            {
                title: '指标编号',
                dataIndex: 'code'
            },
            {
                title: '指标频度',
                dataIndex: 'indexFrequency'
            },
            {
                title: '数据类型',
                dataIndex: 'dataType'
            },
            {
                title: '数据精度',
                dataIndex: 'dataPrecision'
            },
            {
                title: '指标含义',
                dataIndex: 'indexMeaning'
            },
            {
                title: '状态',
                dataIndex: 'status',
                render(text)
                {
                    if(text == '1')
                    {
                        return '在执行';
                    }
                    else if(text == '0')
                    {
                        return '废止';
                    }
                }
            },
            {
                title: '是否为常用指标库',
                dataIndex: 'ordinaryIndexLibrary',
                render(text)
                {
                    if(text == true)
                    {
                        return '是';
                    }
                    else
                    {
                        return '否';
                    }
                }
            },
            {
                title: '是否启用',
                dataIndex: 'inUse',
                render(text)
                {
                    if(text == true)
                    {
                        return '是';
                    }
                    else
                    {
                        return '否';
                    }
                }
            },
            {
                title: '适用范围',
                dataIndex: 'useScale'
            }
        ];

        //inspect
        this.inspectViewTabName = '查看指标定义';

        this.inspectView = IndexDefinitionInspectView;

        //edit
        this.editViewTabName = '修改指标定义'

        this.editView = IndexDefinitionEditView;

        //delete
        this.deletePath = deleteIndexDefinitionService;

        this.successMsg = '删除指标定义成功';
        this.errorMsg = '删除指标定义失败';
        this.warningMsg = '服务器错误';
	}
}

export default IndexDefinitionListComponent;