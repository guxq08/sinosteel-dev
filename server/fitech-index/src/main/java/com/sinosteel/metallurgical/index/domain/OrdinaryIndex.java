package com.sinosteel.metallurgical.index.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "TBL_ORDINARY_INDEX")
public class OrdinaryIndex extends Index {
    @Column(name = "CURRENT_VALUE")
    private float currentValue;  //本期值

    @Column(name = "CURRENT_ADJUSTMENT_VALUE")
    private float currentAdjustmentValue;  //本期调整值

    @Column(name = "LAST_VALUE")
    private float lastValue;  //上期值

    @Column(name = "LAST_YEAR_SAME_PERIOD_VALUE")
    private float lastYearSamePeriodValue;  //上年同期值

    @Column(name = "END_OF_LAST_YEAR_VALUE")
    private float endOfLastYearValue;  //上年年末值

    @Column(name = "END_OF_LAST_TWO_YEARs_VALUE")
    private float endOfLastTwoYearsValue;  //上两年年末值

    @Column(name = "END_OF_LAST_THREE_YEARS_VALUE")
    private float endOfLastThreeYearsValue;  //上三年年末值

    public float getCurrentValue() {
        return currentValue;
    }

    public void setCurrentValue(float currentValue) {
        this.currentValue = currentValue;
    }

    public float getCurrentAdjustmentValue() {
        return currentAdjustmentValue;
    }

    public void setCurrentAdjustmentValue(float currentAdjustmentValue) {
        this.currentAdjustmentValue = currentAdjustmentValue;
    }

    public float getLastValue() {
        return lastValue;
    }

    public void setLastValue(float lastValue) {
        this.lastValue = lastValue;
    }

    public float getLastYearSamePeriodValue() {
        return lastYearSamePeriodValue;
    }

    public void setLastYearSamePeriodValue(float lastYearSamePeriodValue) {
        this.lastYearSamePeriodValue = lastYearSamePeriodValue;
    }

    public float getEndOfLastYearValue() {
        return endOfLastYearValue;
    }

    public void setEndOfLastYearValue(float endOfLastYearValue) {
        this.endOfLastYearValue = endOfLastYearValue;
    }

    public float getEndOfLastTwoYearsValue() {
        return endOfLastTwoYearsValue;
    }

    public void setEndOfLastTwoYearsValue(float endOfLastTwoYearsValue) {
        this.endOfLastTwoYearsValue = endOfLastTwoYearsValue;
    }

    public float getEndOfLastThreeYearsValue() {
        return endOfLastThreeYearsValue;
    }

    public void setEndOfLastThreeYearsValue(float endOfLastThreeYearsValue) {
        this.endOfLastThreeYearsValue = endOfLastThreeYearsValue;
    }
}
