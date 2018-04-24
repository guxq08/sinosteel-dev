import React, {Component, PropTypes} from 'react';
import { Form, Input, Tooltip, Icon, Cascader, Select, Row, Col, Checkbox, Button, DatePicker, InputNumber, Card } from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;

import InspectView from 'common/basic/components/InspectView';

import FormUpload from 'components/FormUpload/FormUpload.js';

import {downloadService} from 'services';

class IndexDefinitionInspectView extends InspectView
{
	constructor(props)
	{
		super(props);
	}

	render()
	{
		const indexDefinition = this.props.item;

		const formItems = [];

		const formItemLayout = 
		{
  			labelCol: { span: 6 },
  			wrapperCol: { span: 14 },
		};

        formItems.push(
        	<Card key='0' title='指标定义基本信息' style={{marginBottom: 20}}>
	    	    <Row key='0'>
		        	<Col span={12}>
		        		<FormItem
		        			{...formItemLayout}
		          			label="指标名称"
		        		>
		        			{indexDefinition.name}
		        		</FormItem>
		        	</Col>
		        	<Col span={12}>
				        <FormItem
				        {
	          		    	...
	                        {
	                            labelCol: { span: 6 },
	                            wrapperCol: { span: 18 },
	                        }		
		          		}
				          	label="指标编码"
				        >
				        	{indexDefinition.code}
		        		</FormItem>
		        	</Col>
		        </Row>
		        <Row key='1'>
		        	<Col span={12}>
	                    <FormItem
							{...formItemLayout}
							label='指标频度'
						>
	                        {indexDefinition.indexFrequency}
	                    </FormItem>
	                </Col>
	                <Col span={12}>
	                    <FormItem {...formItemLayout} label='数据类型'>
	                        {indexDefinition.dataType}
	                    </FormItem>
	                </Col>
		        </Row>
		        <Row key='2'>
		        	<Col span={12}>
		        		<FormItem
		        			{...formItemLayout}
		          			label="数据精度"
		        		>
		        			{indexDefinition.dataPrecision}
		        		</FormItem>
		        	</Col>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="指标含义"
						>
                            {indexDefinition.indexMeaning}
						</FormItem>
					</Col>
		        </Row>
				<Row key='3'>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label='状态'
						>
                            {getStatus(indexDefinition.status)}
						</FormItem>
					</Col>
					<Col span={12}>
						<FormItem {...formItemLayout} label='是否为常用指标库'>
                            {isOrdinaryIndexLibrary(indexDefinition.ordinaryIndexLibrary)}
						</FormItem>
					</Col>
				</Row>
				<Row key='4'>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="是否启用"
						>
                            {isInUse(indexDefinition.inUse)}
						</FormItem>
					</Col>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="适用范围"
						>
                            {indexDefinition.useScale}
						</FormItem>
					</Col>
				</Row>
		    </Card>
        );

		return this.renderForm(formItems);
	}
}

function isOrdinaryIndexLibrary(ordinaryIndexLibrary)
{
	if(ordinaryIndexLibrary == true)
	{
		return '是';
	}
	else
	{
		return '否';
	}

}

function isInUse(inUse)
{
	if(inUse == true)
	{
		return '是';
	}
	else
	{
		return '否';
	}
}

function getStatus(status)
{
	if (status == '1'){
		return "在执行";
	}
	else if (status == '0'){
		return "废止";
	}
}

export default IndexDefinitionInspectView;