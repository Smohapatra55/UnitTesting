package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.CommonMethodsPage;
import com.hexure.firelight.pages.DataEntryPage;
import com.hexure.firelight.pages.MultiSignerPage;
import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

import java.util.List;
import java.util.Map;

public class MultiSigner_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private MultiSignerPage onMultiSignerPage;
    private TestContext testContext;

    private CommonMethodsPage onCommonMethodspage;
    private DataEntryPage onDataEntryPage;

    private static final Logger Log = LogManager.getLogger(MultiSigner_StepDefinitions.class);

    public MultiSigner_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onMultiSignerPage = context.getPageObjectManager().getMultiSignerPage();
        onCommonMethodspage=context.getPageObjectManager().getCommonMethodPage();
    }

    @Then("User Enters Owner First name, last name & Date of Birth Enter SSN")
    public void User_Enters_Owner_Firstname_lastname_DateofBirth_EnterSSN() {
        captureScreenshot(driver, testContext, false);
        onMultiSignerPage.getOwner_Firstname().sendKeys(testContext.getMapTestData().get("ownerFirstName"));
        onMultiSignerPage.getOwner_Lastname().sendKeys(testContext.getMapTestData().get("ownerLastName"));
        onMultiSignerPage.getOwner_DateofBirth().sendKeys(testContext.getMapTestData().get("ownerDobmvc"));
        onMultiSignerPage.getOwner_SsnTin().sendKeys(testContext.getMapTestData().get("ssnTINmvc") + Keys.TAB);
    }

    @Then("User fills values for prefilled form")
    public void user_fills_values_for_prefilled_form(DataTable dataTable) {
        waitForPageToLoad(driver);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> fieldData : formFields) {
            String inputValue = fieldData.get("Value");
            String dataItemId = fieldData.get("data-dataitemid");
            String locatorType = fieldData.get("Locator Type");

            switch (locatorType) {
                case "Input":
                    if (findElements(driver, String.format(onMultiSignerPage.dataFilledInputs,  dataItemId)).size() > 0) {
                        waitForPageToLoad(driver);
                        findElement(driver, String.format(onMultiSignerPage.dataFilledInputs,  dataItemId)).clear();
                        findElement(driver, String.format(onMultiSignerPage.dataFilledInputs,  dataItemId)).sendKeys(inputValue);
                    } else {
                        waitForPageToLoad(driver);
                        findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)).clear();
                        findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)).sendKeys(inputValue + Keys.TAB);
                    }
                    break;

                case "Check Box":
                    waitForPageToLoad(driver);
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                        findElement(driver, String.format(onMultiSignerPage.dataFemaleCheckBox,  dataItemId, testContext.getMapTestData().get("clickClass"))).click();
                    } else {
                        findElement(driver, String.format(onMultiSignerPage.dataFemaleCheckBox,  dataItemId, testContext.getMapTestData().get("clickClass"))).click();
                    }
                    break;

                case "Select":
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                         new Select(findElement(driver, String.format(onMultiSignerPage.dataFilledSelect, dataItemId))).selectByVisibleText(inputValue);
                    } else {
                         new Select(findElement(driver, String.format(onMultiSignerPage.dataFilledSelect, dataItemId))).selectByVisibleText(inputValue);
                    }
                    break;

                default:
                    throw new FLException("Invalid value for locatorType : " + locatorType);
            }
            captureScreenshot(driver, testContext, false);
        }

    }

    @Then("User clicks on print button and verifies print pdf window")
    public void user_clicks_on_print_button_and_verifies_print_pdf_window() {
       waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onMultiSignerPage.getBtn_Print());
        Assert.assertTrue("Page header was not matching ", onCommonMethodspage.getHeader_PendingReq().getText().contains(testContext.getMapTestData().get("documentsHeader")));
    }

    @Then("User verifires the filled data is present")
    public void user_verifires_the_filled_data_is_present(DataTable dataTable) {
        waitForPageToLoad(driver);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for(Map<String, String> fieldData : formFields){
            String inputValue=fieldData.get("Value");
            String dataItemId = fieldData.get("data-dataitemid");
            String locatorType = fieldData.get("Locator Type");
            switch (locatorType) {
                case "Input":
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                        waitForPageToLoad(driver);
                        Assert.assertTrue(findElement(driver, String.format(onMultiSignerPage.dataFilledInputs,  dataItemId)).getAttribute("value").contains(inputValue));
                    } else {
                        waitForPageToLoad(driver);
                        Assert.assertTrue(findElement(driver, String.format(onMultiSignerPage.dataFilledInputs, dataItemId)).getAttribute("value").contains(inputValue));
                    }
                    break;

                case "Check Box":
                    waitForPageToLoad(driver);
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                       Assert.assertTrue(inputValue+" checkbox not checked",findElement(driver, String.format(onMultiSignerPage.dataFemaleCheckBox,  dataItemId, testContext.getMapTestData().get("checkedClass"))).getAttribute("aria-checked").contains("true"));
                    } else {
                        Assert.assertTrue(inputValue+" checkbox not checked",findElement(driver, String.format(onMultiSignerPage.dataFemaleCheckBox,  dataItemId, testContext.getMapTestData().get("checkedClass"))).getAttribute("aria-checked").contains("true"));
                    }
                    break;

                case "Select":
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                       Assert.assertEquals(inputValue+ " not selected", inputValue, new Select(findElement(driver, String.format(onMultiSignerPage.dataFilledSelect, dataItemId))).getFirstSelectedOption().getText().trim());
                    } else {
                        Assert.assertEquals(inputValue+" not selected", inputValue, new Select(findElement(driver, String.format(onMultiSignerPage.dataFilledSelect, dataItemId))).getFirstSelectedOption().getText().trim());
                    }
                    break;

                default:
                    throw new FLException("Invalid value for locatorType : " + locatorType);
            }
            captureScreenshot(driver, testContext, false);
        }
    }

    @Then("User verifies the color of {string} is {string}")
    public void user_verifies_the_color_of_is(String fieldName, String colorName) {
      waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
       Assert.assertTrue(colorName+" not matched ", findElement(driver, String.format(onMultiSignerPage.dataFilledSelect, fieldName)).getCssValue("background-color").contains(testContext.getMapTestData().get(colorName)));
    }

    @Then("User verifies fields are in their format")
    public void user_verifies_fields_are_in_their_format(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for(Map<String, String> fieldData : formFields) {
            String inputValue = fieldData.get("Value");
            String dataItemId = fieldData.get("data-dataitemid");
            String locatorType = fieldData.get("Locator Type");
            Assert.assertEquals("The formats are not matched ",findElement(driver, String.format(onMultiSignerPage.dataFilledInputs,  dataItemId)).getAttribute("mask").length(), inputValue.length());
        }
    }
}