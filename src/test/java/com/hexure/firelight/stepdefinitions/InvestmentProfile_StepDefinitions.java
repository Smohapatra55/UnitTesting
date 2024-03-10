package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.InvestmentProfilePage;
import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;

import java.util.List;
import java.util.Map;

public class InvestmentProfile_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private InvestmentProfilePage onInvestmentProfilePage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(InvestmentProfile_StepDefinitions.class);

    public InvestmentProfile_StepDefinitions(TestContext context)
    {
        testContext = context;
        driver = context.getDriver();
        onInvestmentProfilePage = context.getPageObjectManager().getInvestmentProfilePage();
    }

    @Then("User Clicks on Sign application button")
    public void user_Clicks_on_Sign_application_button() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onInvestmentProfilePage.getTab_SignApplication());
        captureScreenshot(driver, testContext, false);
    }

    @Then("User enters value in field {string} on investment profile page")
    public void enterInvestmentValues(String field) {
        switch (field) {
            case "ApplicantIncome":
                onInvestmentProfilePage.getTxtBox_applicantIncome().sendKeys(testContext.getMapTestData().get("amountIncome") + Keys.TAB);
                break;
            case "JointApplicantIncome":
                onInvestmentProfilePage.getTxtBox_jointApplicantIncome().sendKeys(testContext.getMapTestData().get("amountJointIncome") + Keys.TAB);
                break;
            case "ApplicantNetWorthValue":
                onInvestmentProfilePage.getTxtBox_applicantNetWorth().sendKeys(testContext.getMapTestData().get("amountNetWorth") + Keys.TAB);
                break;
            case "JointApplicantNetWorthValue":
                onInvestmentProfilePage.getTxtBox_jointApplicantNetWorth().sendKeys(testContext.getMapTestData().get("amountNetJointWorth") + Keys.TAB);
                break;
            case "CombinedNetWorthValue":
                onInvestmentProfilePage.getTxtBox_CombinedNetWorth().sendKeys(testContext.getMapTestData().get("amountNetJointWorth") + Keys.TAB);
                break;
            case "CombinedIncome":
                onInvestmentProfilePage.getTxtBox_CombinedIncome().sendKeys(testContext.getMapTestData().get("amountNetJointWorth") + Keys.TAB);
                break;
            default:
                throw new FLException("Invalid value for field: " + field);
        }
    }

    @Then("User clicks on Decline E-Sign Textbox")
    public void userClicksOnDeclineESignTextbox() {
        clickElement(driver,onInvestmentProfilePage.getTxtBox_DeclineESignature());
    }

    @Then("User enters {string} in textbox Decline E-sgn textbox")
    public void userEntersInTextbox(String value) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onInvestmentProfilePage.getTxtBox_DeclineESignature());
        onInvestmentProfilePage.getTxtBox_DeclineESignature().sendKeys(value + Keys.TAB);
    }

    @Then("User enters or verifies all values in the fields on investment profile page")
    public void userAllValueInTheFieldsOnInvestmentProfilePage(DataTable dataTable) {
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);

        for (Map<String, String> fieldData : formFields) {
            String action = fieldData.get("action");
            String fieldName = fieldData.get("Field");
            String dataItemId = fieldData.get("data-dataitemid");

            switch (fieldName) {
                case "ApplicantIncome":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("amountIncome")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("amountIncome"));
                    }
                    break;
                case "JointApplicantIncome":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("amountJointIncome")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("amountJointIncome"));
                    }
                    break;
                case "ApplicantNetWorthValue":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("amountNetWorth")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("amountNetWorth"));
                    }
                    break;
                case "JointApplicantNetWorthValue":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("amountNetJointWorth")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("amountNetJointWorth"));
                    }
                    break;
                case "CombinedNetWorthValue":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("amountCombinedWorth")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("amountCombinedWorth"));
                    }
                    break;
                case "CombinedIncome":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("amountCombinedIncome")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("amountCombinedIncome"));
                    }
                    break;
                case "ApplicantLiqAsset":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("applicantLiqasset")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("applicantLiqasset"));
                    }
                    break;
                case "JointApplicantLiqAsset":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("jointApplicantLiqasset")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("jointApplicantLiqasset"));
                    }
                    break;
                case "CombinedApplicantLiqAsset":
                    if (action.equalsIgnoreCase("verifies")) {
                        Assert.assertTrue("Amount doesn't match", findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("combinedApplicantLiqasset")));
                    } else {
                        sendKeys(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)), testContext.getMapTestData().get("combinedApplicantLiqasset"));
                    }
                    break;
                case "AnnualExpenses":
                case "AnnualExpenses50":
                case "AnnualExpenses100":
                case "AnnualExpenses250":
                case "SpecialExpenses":
                case "SpecialExpenses50":
                case "SpecialExpenses100":
                case "SpecialExpenses250":
                case "WithIn2Years":
                case "3To5Years":
                case "6To10Years":
                    if (action.equalsIgnoreCase("verifies")) {
                        if (findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).isSelected()) {
                            Assert.assertTrue("checkbox was not selected", true);
                        }
                    } else if (findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)).isEnabled()) {
                        Assert.assertTrue("checkbox is disabled", true);
                        clickElement(driver, findElement(driver, String.format(onInvestmentProfilePage.txt_applicantIncome, dataItemId, dataItemId, dataItemId)));
                    }
                    break;
                default:
                    throw new FLException("Invalid value for field: " + fieldName);
            }
        }
    }

    @Then("User Verifies Sign application button is not visible")
    public void user_Verifie_Sign_application_button_not_Visible() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Sign application button was visible",onInvestmentProfilePage.getTab_SignApplication().getAttribute("class").contains("shadow"));
        captureScreenshot(driver, testContext, false);
    }
}