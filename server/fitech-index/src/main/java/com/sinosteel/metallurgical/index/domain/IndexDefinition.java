package com.sinosteel.metallurgical.index.domain;

import java.util.List;

import javax.persistence.*;

import com.sinosteel.framework.core.base.domain.BaseEntity;

@Entity
@Table(name = "TBL_INDEX_DEFINITION")
public class IndexDefinition extends BaseEntity
{
	private static final long serialVersionUID = -7239923911792108248L;

	@Column(name = "INDEX_FREQUENCY")
	private double indexFrequency;

	@Column(name = "DATA_TYPE")
	private String dataType; //

	@Column(name = "DATA_PRECISION")
	private double dataPrecision;

	@Column(name = "INDEX_MEANING")
	private String indexMeaning;

	@Column(name = "STATUS")
	private String status; //1:在执行   0:废止

	//明确一下什么意思 是否为常用指标库
	@Column(name = "ORDINARY_INDEX_LIBRARY")
	private boolean ordinaryIndexLibrary;

	@Column(name = "IN_USE")
	private boolean inUse;

	@Column(name = "USE_SCALE")
	private String useScale;


	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public boolean isOrdinaryIndexLibrary() {
		return ordinaryIndexLibrary;
	}

	public void setOrdinaryIndexLibrary(boolean ordinaryIndexLibrary) {
		this.ordinaryIndexLibrary = ordinaryIndexLibrary;
	}

	public boolean isInUse() {
		return inUse;
	}

	public void setInUse(boolean inUse) {
		this.inUse = inUse;
	}

	public String getUseScale() {
		return useScale;
	}

	public void setUseScale(String useScale) {
		this.useScale = useScale;
	}

	public double getIndexFrequency() {
		return indexFrequency;
	}

	public void setIndexFrequency(double indexFrequency) {
		this.indexFrequency = indexFrequency;
	}

	public double getDataPrecision() {
		return dataPrecision;
	}

	public void setDataPrecision(double dataPrecision) {
		this.dataPrecision = dataPrecision;
	}

	public String getIndexMeaning() {
		return indexMeaning;
	}

	public void setIndexMeaning(String indexMeaning) {
		this.indexMeaning = indexMeaning;
	}
}
