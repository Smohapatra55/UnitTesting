package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

@Data
public class InvestmentProfilePage extends FLUtilities
{
    @FindBy(xpath="//input[@data-dataitemid='FinInfo_Client_Income']")
    private WebElement txtBox_applicantIncome;

    @FindBy(xpath="//input[@data-dataitemid='FinInfo_JointClient_Income']")
    private WebElement txtBox_jointApplicantIncome;

    @FindBy(xpath="//input[@data-dataitemid='FinInfo_ClientNetWorth_Value']")
    private WebElement txtBox_applicantNetWorth;

    @FindBy(xpath="//input[@data-dataitemid='FinInfo_JointClientNetWorth_Value']")
    private WebElement txtBox_jointApplicantNetWorth;

    @FindBy(xpath = "//div[text()='Sign Application']")
    private WebElement tab_SignApplication;

    @FindBy(xpath="//input[@data-dataitemid='FinInfo_Combined_Income']")
    private WebElement txtBox_CombinedIncome;

    @FindBy(xpath="//input[@data-dataitemid='FinInfo_CombinedNetWorth_Value']")
    private WebElement txtBox_CombinedNetWorth;

    @FindBy(xpath="//input[@data-item-id='FLI_DECLINED_ESIGN']")
    private WebElement txtBox_DeclineESignature;

    public String txt_applicantIncome = "//*[@data-dataitemid='%s' or @data-data-itemid='%s' or @data-item-id='%s']";

    public InvestmentProfilePage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
		PageFactory.initElements(driver, this);
    }

}
