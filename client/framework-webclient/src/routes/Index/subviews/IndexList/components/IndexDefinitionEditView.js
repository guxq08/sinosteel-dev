import React from 'react';
import { Form, Input, Tooltip, Icon, Cascader, Select, Row, Col, Checkbox, Button, DatePicker, InputNumber, Card } from 'antd';
const FormItem = Form.Item;
const Option = Select.Option;

import EditView from 'common/basic/components/EditView';
import moment from 'moment';

import FormUpload from 'components/FormUpload/FormUpload.js';

import {editIndexDefinitionService} from 'services';

import {addKey} from 'utils/ArrayUtil';

import SubItemContainer from 'common/basic/containers/SubItemContainer'

export default class IndexDefinitionEditView extends EditView
{
    constructor(props)
    {
        super(props);

        this.editPath = editIndexDefinitionService //负责处理新增命令的url
    }

    handleInitValues = (initValues) =>
    {
    	//issueDate
    	// if(initValues.issueDate)
    	// {
    	// 	initValues.issueDate = moment(initValues.issueDate, 'YYYY-MM-DD');
    	// }
    }

    handleValues = (values) =>
    {
    	//issueDate
    	// let date = values['issueDate'];
        // if(date)
        // {
         //    values['issueDate'] = date.format('YYYY-MM-DD');
        // }
        //
        // //files
        // this.files = values['resources'] || true;
        // values['resources'] = null;
    }

    render()
    {
    	const formItems = [];
    	const { getFieldDecorator } = this.props.form;

		const formItemLayout = 
		{
  			labelCol: { span: 6 },
  			wrapperCol: { span: 14 },
		};

		const width = '100%';

        formItems.push(
			<Card key='0' title='指标定义基本信息' style={{marginBottom: 20}}>
				<Row key='0'>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="指标名称"
						>
                            {getFieldDecorator('name', {
                                rules: [{ required: true, message: '请填写指标名称' }],
                            })(
								<Input style={{width: width}}/>
                            )}
						</FormItem>
					</Col>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="指标编码"
						>
                            {getFieldDecorator('code', {
                                rules: [{ required: true, message: '请填写指标编码' }],
                            })(
								<Input style={{width: width}}/>
                            )}
						</FormItem>
					</Col>

				</Row>
				<Row key='1'>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="指标频度"
						>
                            {getFieldDecorator('indexFrequency', {
                                rules: [{ required: true, message: '请填写指标频度' }],
                            })(
								<Input style={{width: width}}/>
                            )}
						</FormItem>
					</Col>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="数据类型"
						>
                            {getFieldDecorator('dataType', {
                                rules: [{ required: true, message: '请填写数据类型' }],
                            })(
								<Input style={{width: width}}/>
                            )}
						</FormItem>
					</Col>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="数据精度"
						>
                            {getFieldDecorator('dataPrecision', {
                                rules: [{ required: true, message: '请填写数据精度' }],
                            })(
								<Input style={{width: width}}/>
                            )}
						</FormItem>
					</Col>
					<Col span={12}>
						<FormItem
                            {...formItemLayout}
							label="指标含义"
						>
                            {getFieldDecorator('indexMeaning', {
                                rules: [{ required: true, message: '请填写指标含义' }],
                            })(
								<Input style={{width: width}}/>
                            )}
						</FormItem>
					</Col>
				</Row>
				<Row key='2'>
					<Col span={12}>
						<FormItem {...formItemLayout} label='状态'>
                            {getFieldDecorator('status', {
                                rules: [{ required: true, message: '请选择状态' }],
                            })(
								<Select style={{width: width}}>
									<Option value="1">在执行</Option>
									<Option value="0">废止</Option>
								</Select>
                            )}
						</FormItem>
					</Col>
					<Col span={12}>
						<FormItem {...formItemLayout} label='是否为常用指标库'>
                            {getFieldDecorator('ordinaryIndexLibrary', {
                                rules: [{ required: true, message: '请填写是否为常用指标库' }],
                            })(
								<Select style={{width: width}}>
									<Option value="true">是</Option>
									<Option value="false">否</Option>
								</Select>
                            )}
						</FormItem>
					</Col>

				</Row>
				<Row key='3'>
					<Col span={12}>
						<FormItem {...formItemLayout} label='是否启用'>
                            {getFieldDecorator('inUse', {
                                rules: [{ required: true, message: '请填写是否启用' }],
                            })(
								<Select style={{width: width}}>
									<Option value="true">是</Option>
									<Option value="false">否</Option>
								</Select>
                            )}
						</FormItem>
					</Col>
					<Col span={12}>
						<FormItem {...formItemLayout} label='适用范围'>
                            {getFieldDecorator('useScale',{
                                rules: [{ required: true, message: '请填写适用范围' }],
                            })(
								<Input style={{width: width}}/>
                            )}
						</FormItem>
					</Col>
				</Row>
			</Card>
        );


		return this.renderForm(formItems, (editButton) =>
        {
            return(
                <Row style={{marginBottom: 20}}>
                    <Col span={12}>
                        <Row>
                            <Col span={7} />
                            <Col span={14}>
                                {editButton}
                            </Col>
                        </Row>
                    </Col>
                </Row>
            );
        });
    }
}