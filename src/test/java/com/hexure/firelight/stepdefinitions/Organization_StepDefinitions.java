package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.FormDesignerPage;
import com.hexure.firelight.pages.OrganizationPage;
import cucumber.api.java.en.Then;
import cucumber.api.java.eo.Se;
import io.cucumber.datatable.DataTable;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

import java.util.List;

public class Organization_StepDefinitions extends FLUtilities {

    private WebDriver driver;
    private OrganizationPage onOrganizationPage;
    private FormDesignerPage onFormDesignerPage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(Organization_StepDefinitions.class);

    public Organization_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onOrganizationPage = context.getPageObjectManager().getOnOrganizationPage();
        onFormDesignerPage = context.getPageObjectManager().getOnFormDesignerPage();
    }

    @Then("User Clicks on Tab {string}")
    public void user_Clicks_on_Tab(String tabName) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,findElement(driver,String.format(onOrganizationPage.getTabNameByText(),tabName)));
    }

    @Then("User Verifies Organization Setting Saved")
    public void user_Verifies_Organization_Setting_Saved() {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onOrganizationPage.getMsgOrganizationPage(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Organization Save Message Mismatched ", onOrganizationPage.getMsgOrganizationPage().getText().trim()
                .equalsIgnoreCase(testContext.getMapTestData().get("organizationSaveMessage")));
        //TODO Hardcoded CACHE TIME
        sleepInMilliSeconds(4000);
    }
    @Then("User clicks on add button")
    public void user_clicks_on_add_button() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onOrganizationPage.getBtn_AddMask());
    }
    @Then("User verifies Add mask window should display")
    public void user_verifies_Add_mask_window_should_display() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Add mask window was not displayed", onOrganizationPage.getPopUp_AddMask().isDisplayed());
    }

    @Then("User select {string} form mask type")
    public void user_select_form_mask_type(String ddValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver,onOrganizationPage.getDd_MaskTypes(), EnumsCommon.TOCLICKABLE.getText());
        new Select(onOrganizationPage.getDd_MaskTypes()).selectByValue(ddValue);
    }
    @Then("User enter {string} mask name")
    public void user_enter_mask_name(String maskName) {
        captureScreenshot(driver, testContext, false);
        onOrganizationPage.getMaskName().clear();
        String numbers= RandomStringUtils.randomNumeric(3);
        switch (maskName) {
            case "DateMask_OP":
                maskName= maskName + numbers;
            addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.DATEMASKNAME.getText(), maskName);
            onOrganizationPage.getMaskName().sendKeys(maskName);
            break;
            case "SSNMask_OP":
                maskName= maskName + numbers;
                addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.SSNMASKNAME.getText(), maskName);
                onOrganizationPage.getMaskName().sendKeys(maskName);
                break;
            case "ZipMask_OP":
                maskName= maskName + numbers;
                addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.ZIPMASKNAME.getText(), maskName);
                onOrganizationPage.getMaskName().sendKeys(maskName);
                break;
            case "PhoneMask_OP":
                maskName= maskName + numbers;
                addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.PHONEMASKNAME.getText(), maskName);
                onOrganizationPage.getMaskName().sendKeys(maskName);
                break;
        }
    }
    @Then("User clicks on add mask on popup")
    public void user_clicks_on_add_mask_on_popup() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onOrganizationPage.getBtn_AddMaskPopUp());
    }
    @Then("User clicks on save organisation")
    public void user_clicks_on_save_organisation() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onOrganizationPage.getBtn_SaveOrganisation());
    }
    @Then("User verifies values in Mask Dropdown")
    public void user_verifies_values_in_Mask_Dropdown(DataTable dataTable) {
        captureScreenshot(driver, testContext, false);
       List<String> fieldValue = dataTable.asList(String.class);
       List<WebElement> allOptions = new Select(onOrganizationPage.getDd_Masks()).getOptions();
       for (String dataValue : fieldValue){
           for (WebElement element : allOptions){
               Assert.assertEquals("Values are Mismatched", dataValue, element.getText());
           }
       }
    }
    @Then("User select the {string} from text mask dropdown")
    public void user_select_the_from_text_mask_dropdown(String ddValue) {
        captureScreenshot(driver, testContext, false);
        if (ddValue.contains("DateMask_OP") || ddValue.contains("SSNMask_OP") || ddValue.contains("ZipMask_OP") || ddValue.contains("PhoneMask_OP")) {
            switch (ddValue) {
                case "DateMask_OP":
                    new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(testContext.getMapTestData().get(EnumsJSONProp.DATEMASKNAME.getText()));
                    break;
                case "SSNMask_OP":
                    new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(testContext.getMapTestData().get(EnumsJSONProp.SSNMASKNAME.getText()));
                    break;
                case "ZipMask_OP":
                    new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(testContext.getMapTestData().get(EnumsJSONProp.ZIPMASKNAME.getText()));
                    break;
                case "PhoneMask_OP":
                    new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(testContext.getMapTestData().get(EnumsJSONProp.PHONEMASKNAME.getText()));
                    break;
                default:
                    throw new FLException("Invalid value: " + ddValue);
            }
        }
        else {
            new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(ddValue);
        }
    }

    @Then("User verifies {string} mask is present")
    public void user_verifies_selected_in_mask(String ddValue) {
        captureScreenshot(driver, testContext, false);
        switch (ddValue) {
            case "DateMask_OP":
                Assert.assertTrue("Mask value is not selected", new Select(onOrganizationPage.getDd_TextMasks()).getOptions().stream().anyMatch(actual -> actual.getText().contains(testContext.getMapTestData().get(EnumsJSONProp.DATEMASKNAME.getText()))));
                break;
            case "SSNMask_OP":
                Assert.assertTrue("Mask value is not selected", new Select(onOrganizationPage.getDd_TextMasks()).getOptions().stream().anyMatch(actual -> actual.getText().contains(testContext.getMapTestData().get(EnumsJSONProp.SSNMASKNAME.getText()))));
                break;
            case "ZipMask_OP":
                Assert.assertTrue("Mask value is not selected", new Select(onOrganizationPage.getDd_TextMasks()).getOptions().stream().anyMatch(actual -> actual.getText().contains(testContext.getMapTestData().get(EnumsJSONProp.ZIPMASKNAME.getText()))));
                break;
            case "PhoneMask_OP":
                Assert.assertTrue("Mask value is not selected", new Select(onOrganizationPage.getDd_TextMasks()).getOptions().stream().anyMatch(actual -> actual.getText().contains(testContext.getMapTestData().get(EnumsJSONProp.PHONEMASKNAME.getText()))));
                break;
            default:
                throw new FLException("Invalid value: " + ddValue);
        }
    }

    @Then("User verifies {string} is present in mask dropdown and select it")
    public void user_verifies_is_present_in_mask_dropdown(String ddValue) {
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, onOrganizationPage.getDd_Masks());
        syncElement(driver, onOrganizationPage.getDd_Masks(), EnumsCommon.TOCLICKABLE.getText());
        if(ddValue.contains("DateMask_OP") || ddValue.contains("SSNMask_OP") || ddValue.contains("ZipMask_OP") || ddValue.contains("PhoneMask_OP")) {
            switch (ddValue) {
                case "DateMask_OP":
                    new Select(onOrganizationPage.getDd_Masks()).selectByVisibleText(testContext.getMapTestData().get(EnumsJSONProp.DATEMASKNAME.getText()));
                    break;
                case "SSNMask_OP":
                    new Select(onOrganizationPage.getDd_Masks()).selectByVisibleText(testContext.getMapTestData().get(EnumsJSONProp.SSNMASKNAME.getText()));
                    break;
                case "ZipMask_OP":
                    new Select(onOrganizationPage.getDd_Masks()).selectByVisibleText(testContext.getMapTestData().get(EnumsJSONProp.ZIPMASKNAME.getText()));
                    break;
                case "PhoneMask_OP":
                    new Select(onOrganizationPage.getDd_Masks()).selectByVisibleText(testContext.getMapTestData().get(EnumsJSONProp.PHONEMASKNAME.getText()));
                    break;
                default:
                    throw new FLException("Invalid value: " + ddValue);
            }
        }
        else {
            boolean flagValue = new Select(onOrganizationPage.getDd_Masks()).getOptions().stream().anyMatch(actual -> actual.getText().equals(ddValue));
            Assert.assertTrue("Mask value was not present", flagValue);
            new Select(onOrganizationPage.getDd_Masks()).selectByVisibleText(ddValue);
        }
    }

    @Then("User selects the value {string}")
    public void user_selects_the_value(String ddValue) {
        captureScreenshot(driver, testContext, false);
        switch (ddValue) {
            case "DateMask_OP":
                new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(testContext.getMapTestData().get(EnumsJSONProp.DATEMASKNAME.getText()));
                break;
            case "SSNMask_OP":
                new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(testContext.getMapTestData().get(EnumsJSONProp.SSNMASKNAME.getText()));
                break;
            case "ZipMask_OP":
                new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(testContext.getMapTestData().get(EnumsJSONProp.ZIPMASKNAME.getText()));
                break;
            case "PhoneMask_OP":
                new Select(onOrganizationPage.getDd_TextMasks()).selectByValue(testContext.getMapTestData().get(EnumsJSONProp.PHONEMASKNAME.getText()));
                break;
            default:
                throw new FLException("Invalid value: " + ddValue);
        }
    }
    @Then("User verifies {string} mask is present in list")
    public void user_verifies_mask_is_present(String ddValue) {
        captureScreenshot(driver, testContext, false);
       List<WebElement> allOptions = new Select(onOrganizationPage.getDd_TextMasks()).getOptions();
       for (WebElement option : allOptions){
           if (option.getText().equals(ddValue)){
               Assert.assertEquals("Value is not present",ddValue ,option.getText());
           }
       }
    }
    @Then("User clicks on confirm button")
    public void user_clicks_on_confirm_button() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onOrganizationPage.getBtn_Confirm());
    }
    @Then("User verifies delete Dialog box")
    public void user_verifies_delete_popup_Dialog_box() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Dialog box was not displayed", onOrganizationPage.getPopUp_Delete().isDisplayed());
    }
    @Then("User verifies following values are not present in mask dropdown")
    public void user_verifies_following_values_are_not_present_in_mask_dropdown(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<String> fieldValues = dataTable.asList(String.class);
         List<WebElement> allOptions = new Select(onOrganizationPage.getDd_Masks()).getOptions();
         boolean flagValue = false;
         for(String dataValues : fieldValues){
                 switch (dataValues) {
                     case "DateMask_OP":
                         for (WebElement options : allOptions) {
                             syncElement(driver, options, EnumsCommon.TOVISIBLE.getText());
                             if ((options.getText().equalsIgnoreCase(testContext.getMapTestData().get(EnumsJSONProp.DATEMASKNAME.getText())))) {
                                 flagValue = true;
                                 break;
                             }
                         }
                     break;
                     case "SSNMask_OP":
                         for (WebElement options : allOptions) {
                             syncElement(driver, options, EnumsCommon.TOVISIBLE.getText());
                             if ((options.getText().equalsIgnoreCase(testContext.getMapTestData().get(EnumsJSONProp.SSNMASKNAME.getText())))) {
                                 flagValue = true;
                                 break;
                             }
                         }
                         break;
                     case "ZipMask_OP":
                         for (WebElement options : allOptions) {
                         syncElement(driver, options, EnumsCommon.TOVISIBLE.getText());
                         if ((options.getText().equalsIgnoreCase(testContext.getMapTestData().get(EnumsJSONProp.ZIPMASKNAME.getText())))) {
                             flagValue = true;
                             break;
                         }
                         }
                         break;
                     case "PhoneMask_OP":
                         for (WebElement options : allOptions) {
                             syncElement(driver, options, EnumsCommon.TOVISIBLE.getText());
                             if ((options.getText().equalsIgnoreCase(testContext.getMapTestData().get(EnumsJSONProp.PHONEMASKNAME.getText())))) {
                                 flagValue = true;
                                 break;
                             }
                         }
                         break;
                     default:
                         throw new FLException("Invalid dataValues: "+dataValues);
                 }
             }
         Assert.assertFalse("Values are present ", flagValue);
    }

    @Then("User verifies custom mask as {string}")
    public void user_verifies_custom_mask_as(String expValue) {
        captureScreenshot(driver, testContext, false);
        switch (expValue) {
            case "DateMask_OP":
                if(onOrganizationPage.getTxtBox_Properties().getAttribute("value").contains("Calendar Date")) {
                    Assert.assertTrue(onOrganizationPage.getTxtBox_CustomMask().getAttribute("value").contains(expValue));
                }
                else {
                    Assert.assertTrue("Values are mismatched", onOrganizationPage.getTxtBox_CustomMask().getAttribute("value").contains(expValue));
                }
                break;
            case "SSNMask_OP":
            case "PhoneMask_OP":
            case "ZipMask_OP":
                Assert.assertTrue("Values are mismatched", onOrganizationPage.getTxtBox_CustomMask().getAttribute("value").contains(expValue));
                break;
            default:
                throw new FLException("Invalid expValue: " + expValue);
        }
    }
    @Then("User verifies mark value as {string}")
    public void user_verifies_mark_value_as(String expValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver,onFormDesignerPage.getFieldPropertiesDialog(),EnumsCommon.TOVISIBLE.getText());
        String value = new Select(onOrganizationPage.getDd_Masks()).getFirstSelectedOption().getText();
        Assert.assertTrue("Value mismatched", value.contains(expValue));
    }
    @Then("User clicks on close button")
    public void user_clicks_on_close_button() {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onOrganizationPage.getBtn_Close(), EnumsCommon.TOCLICKABLE.getText());
        clickElement(driver, onOrganizationPage.getBtn_Close());
    }

    @Then("User verifies Invalid Selection message {string}")
    public void userVerifiesErrorMessageAppeared(String msg) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Invalid Selection error message mismatched",msg,onOrganizationPage.getTxt_InvalidSelectionMsg().getText().trim());
    }

    @Then("User verifies Single and Cumulative Label is showing")
    public void user_verifies_Agree_Checkbox_and_Confirm_All_checkbox_is_showing() {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onOrganizationPage.getTxt_SingleLabel(),EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Single Label is NOT showing", onOrganizationPage.getTxt_SingleLabel().isDisplayed());
        syncElement(driver, onOrganizationPage.getTxt_CumulativeLabel(),EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Cumulative Label is NOT showing", onOrganizationPage.getTxt_CumulativeLabel().isDisplayed());
    }

    @Then("User clicks on close button on field properties window")
    public void user_clicks_on_close_button_on_Field_Properties() {
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(2000);
        syncElement(driver, onFormDesignerPage.getFieldPropertiesDialog(),EnumsCommon.TOVISIBLE.getText());
        syncElement(driver, onOrganizationPage.getBtn_CloseFieldProperties(), EnumsCommon.TOCLICKABLE.getText());
        new Actions(driver).moveToElement(onOrganizationPage.getBtn_CloseFieldProperties()).click().perform();
    }
}