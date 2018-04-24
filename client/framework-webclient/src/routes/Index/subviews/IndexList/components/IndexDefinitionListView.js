import React, {Component, PropTypes} from 'react';
import {Row, Col, Icon, DatePicker, Input, Form} from 'antd';

import ListView from 'common/basic/components/ListView';

import IndexDefinitionSearchComponent from './IndexDefinitionSearchComponent';
import IndexDefinitionListComponent from './IndexDefinitionListComponent';
import IndexDefinitionOperationComponent from './IndexDefinitionOperationComponent';

class IndexDefinitionListView extends ListView
{
    constructor(props) 
    {
        super(props);

        //add
        this.operationComponent = IndexDefinitionOperationComponent;
        this.addAuthString = 'addIndexDefinition';
        this.deleteAuthString = 'deleteIndexDefinition';

        //list
        this.searchComponent = IndexDefinitionSearchComponent;
        this.listComponent = IndexDefinitionListComponent;
        this.editAuthString = 'editIndexDefinition';

        this.name = 'indexDefinition';
    }
}

export default IndexDefinitionListView;
