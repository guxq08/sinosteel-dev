package com.sinosteel.metallurgical.index.domain;


import com.sinosteel.framework.core.base.domain.BaseEntity;

import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class Index extends BaseEntity{
    private String organization;

    //many to one
    private IndexDefinition indexDefinition;

    public String getOrganization() {
        return organization;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public IndexDefinition getIndexDefinition() {
        return indexDefinition;
    }

    public void setIndexDefinition(IndexDefinition indexDefinition) {
        this.indexDefinition = indexDefinition;
    }
}
