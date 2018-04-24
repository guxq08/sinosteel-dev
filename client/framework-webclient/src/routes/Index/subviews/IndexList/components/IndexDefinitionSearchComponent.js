import React, {Component, PropTypes} from 'react' 
import { Form, Row, Col, Input, Button, Icon, DatePicker, Select } from 'antd';
import DateRange from 'components/DateRange/DateRange.js';

import SearchComponent from 'common/basic/components/SearchComponent';

import moment from 'moment';
import {queryIndexDefinitionsService} from 'services';

import {toStringRange} from 'utils/DateUtil';

import QuerySelect from 'components/QuerySelect/QuerySelect.js';

const FormItem = Form.Item;
const Option = Select.Option;

class IndexDefinitionSearchComponent extends SearchComponent
{
	constructor(props)
	{
		super(props);

        this.queryPath = queryIndexDefinitionsService;
	}

    handleValues = (values) =>
    {
        //issueDate
        // let issueDate = values['issueDate'];
        // if(issueDate)
        // {
        //     values['issueDate'] = toStringRange(issueDate);
        // }
    };

	render()
	{
		const formItemLayout = 
        {
            labelCol: { span: 6 },
            wrapperCol: { span: 15 },
        };

        const formItems = [];
        const { getFieldDecorator } = this.props.form;

        const width = '100%';

        formItems.push(
            <Row key='0'>
                <Col span={12}>
                    <FormItem
                        {...formItemLayout}
                        label="指标名称"
                    >
                        {getFieldDecorator('name', {

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

                        })(
                            <Input style={{width: width}}/>
                        )}
                    </FormItem>
                </Col>

            </Row>
        );
        formItems.push(
            <Row key='1'>
                <Col span={12}>
                    <FormItem
                        {...formItemLayout}
                        label="指标频度"
                    >
                        {getFieldDecorator('indexFrequency', {

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

                        })(
                            <Input style={{width: width}}/>
                        )}
                    </FormItem>
                </Col>
            </Row>
        );
        formItems.push(
            <Row key='2'>
                <Col span={12}>
                    <FormItem {...formItemLayout} label='状态'>
                        {getFieldDecorator('status', {

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

                        })(
                            <Select style={{width: width}}>
                                <Option value="true">是</Option>
                                <Option value="false">否</Option>
                            </Select>
                        )}
                    </FormItem>
                </Col>

            </Row>
        );
        formItems.push(
            <Row key='3'>
                <Col span={12}>
                    <FormItem {...formItemLayout} label='是否启用'>
                        {getFieldDecorator('inUse', {

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

                        })(
                            <Input style={{width: width}}/>
                        )}
                    </FormItem>
                </Col>
            </Row>
        );

        return this.renderForm(formItems);
	}
}

export default IndexDefinitionSearchComponent;