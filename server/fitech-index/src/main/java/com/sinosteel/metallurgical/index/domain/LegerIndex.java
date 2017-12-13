package com.sinosteel.metallurgical.index.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "TBL_LEGER_INDEX")
public class LegerIndex extends Index{
    @Column(name = "CURRENT_CREDIT_BALANCE")
    private float currentCreditBalance; //本期贷方余额

    @Column(name = "CURRENT_CREDIT_AMOUNT")
    private float currentCreditAmount;  //本期贷方发生额

    @Column(name = "CURRENT_CDEBIT_BALANCE")
    private float currentDebitBalance;  //本期借方余额

    @Column(name = "CURRENT_DEBIT_AMOUNT")
    private float currentDebitAmount;  //本期借方发生额

    @Column(name = "LAST_CREDIT_BALANCE")
    private float lastCreditBalance; //上期贷方余额

    @Column(name = "LAST_CDEBIT_BALANCE")
    private float lastDebitBalance;  //上期借方余额

    public float getCurrentCreditBalance() {
        return currentCreditBalance;
    }

    public void setCurrentCreditBalance(float currentCreditBalance) {
        this.currentCreditBalance = currentCreditBalance;
    }

    public float getCurrentCreditAmount() {
        return currentCreditAmount;
    }

    public void setCurrentCreditAmount(float currentCreditAmount) {
        this.currentCreditAmount = currentCreditAmount;
    }

    public float getCurrentDebitBalance() {
        return currentDebitBalance;
    }

    public void setCurrentDebitBalance(float currentDebitBalance) {
        this.currentDebitBalance = currentDebitBalance;
    }

    public float getCurrentDebitAmount() {
        return currentDebitAmount;
    }

    public void setCurrentDebitAmount(float currentDebitAmount) {
        this.currentDebitAmount = currentDebitAmount;
    }

    public float getLastCreditBalance() {
        return lastCreditBalance;
    }

    public void setLastCreditBalance(float lastCreditBalance) {
        this.lastCreditBalance = lastCreditBalance;
    }

    public float getLastDebitBalance() {
        return lastDebitBalance;
    }

    public void setLastDebitBalance(float lastDebitBalance) {
        this.lastDebitBalance = lastDebitBalance;
    }
}
