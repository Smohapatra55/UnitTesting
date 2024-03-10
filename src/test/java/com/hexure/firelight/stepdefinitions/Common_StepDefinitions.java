package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.*;
import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.libraies.pages_react.CommonMethods_ReactPage;
import com.hexure.firelight.pages.*;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import io.qameta.allure.Allure;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.openqa.selenium.*;
import org.openqa.selenium.support.ui.Select;

import java.awt.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.List;

public class Common_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private TestContext testContext;
    private CreateApplicationPage onCreateApplicationPage;
    private CommonMethods_ReactPage onCommonMethods_reactPage;
    private DataEntryPage onDataEntryPage;
    private CommonMethodsPage onCommonMethodsPage;
    private ReviewPage onReviewPage;
    private TabAppPage onTabAppPage;
    private MultiSignerPage onMultiSingerPage;
    private AdminProductPage onAdminProductPage;
    private ExternalLoginPage onExternalLoginPage;
    private SignaturesPage onSignaturesPage;
    private OrganizationPage onOrganizationPage;
    private AdminActivityPage onAdminActvityPage;

    private static final Logger Log = LogManager.getLogger(Common_StepDefinitions.class);
    public Common_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onCreateApplicationPage = context.getPageObjectManager().getCreateApplicationPage();
        onCommonMethods_reactPage = context.getPageObjectManager().getCommonMethods_reactPage();
        onDataEntryPage = context.getPageObjectManager().getDataEntryPage();
        onCommonMethodsPage = context.getPageObjectManager().getCommonMethodPage();
        onReviewPage = context.getPageObjectManager().getReviewPage();
        onTabAppPage = context.getPageObjectManager().getOnTabAppPage();
        onAdminProductPage=context.getPageObjectManager().getOnAdminProductPage();
        onExternalLoginPage = context.getPageObjectManager().getOnExternalLoginPage();
        onSignaturesPage = context.getPageObjectManager().getOnSignaturesPage();
        onOrganizationPage = context.getPageObjectManager().getOnOrganizationPage();
        onAdminActvityPage = context.getPageObjectManager().getOnAdminActivityPage();
    }

    @Given("User is on FireLight login page for TestCase {string}")
    public void userIsOnFLLoginPage(String testCaseID) { commonSetup(testCaseID); }

    @Given("User is on FireLight Admin login page for TestCase {string}")
    public void userIsOnFLAdminLoginPage(String testCaseID) { commonSetup(testCaseID); }

    private void commonSetup(String testCaseID){
        testContext.setTestCaseID(testCaseID.split("_")[1] + "_" + testCaseID.split("_")[2]);
        testContext.setModuleName(testCaseID.split("_")[0]);
        System.out.println("Environment = " + testContext.getEnvironment());
        System.out.println("ApplicationType = " + testContext.getAppType());
        System.out.println("TestCaseID = " + testContext.getTestCaseID());
        System.out.println("ModuleName = " + testContext.getModuleName());
        System.out.println("CaptureScreenshot = " + testContext.getCaptureScreenshot());
        openLoginPage(driver, testContext);
        testContext.setUiType(testContext.getMapTestData().get("uiType"));
        System.out.println("UI TYPE is = " + testContext.getMapTestData().get("uiType"));
        Log.info("TEST CASE " + testCaseID + " STARTED");
    }

    @Then("User clicks {string} button")
    public void userClicksButton(String whichButton) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        int elemSize = 0;
        switch (whichButton) {
            case "Create":
                clickElement(driver, onCreateApplicationPage.getBtn_Create());
                break;
            case "Continue":
            case "Apply":
                syncElement(driver,onCreateApplicationPage.getBtn_Continue(),EnumsCommon.TOCLICKABLE.getText());
                clickElementByJSE(driver, onCreateApplicationPage.getBtn_Continue());
                break;
            case "Ok":
            case "OK":
                if (findElements(driver, String.format(onCommonMethodsPage.ITButtonInput, "OK")).size() > 0) {
                    clickElement(driver, findElement(driver, String.format(onCommonMethodsPage.ITButtonInput, "OK")));
                } else {
                    clickElement(driver, onCreateApplicationPage.getBtn_OK());
                }
                break;
            case "Back To Application":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onCreateApplicationPage.getBtn_BackToAppMVC(),  onCreateApplicationPage.getBtn_BackToAppReact(), null, null)));
                break;
            case "Other Actions":
                syncElement(driver, getElement(driver, getExistingLocator(driver, onCreateApplicationPage.getBtn_OtherActionsMVC(),  onCreateApplicationPage.getBtn_OtherActionsReact(), null, null)), EnumsCommon.TOCLICKABLE.getText());
                clickElement(driver, getElement(driver, getExistingLocator(driver, onCreateApplicationPage.getBtn_OtherActionsMVC(),  onCreateApplicationPage.getBtn_OtherActionsReact(), null, null)));
                break;
            case "Submit":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onCreateApplicationPage.getBtn_Submit(),  onCreateApplicationPage.getBtn_Submit1(), onCreateApplicationPage.getBtn_Submit2(), null)));
                break;
            case "Next":
                clickElement(driver, onCreateApplicationPage.getBtn_Next());
                break;
            case "Previous":
                clickElement(driver, onCreateApplicationPage.getBtn_Previous());
                break;
            case "Yes":
            case "Select":
            case "Send":
            case "Clear Initials":
            case "Print Selected Documents":
                sleepInMilliSeconds(2000);
                elemSize = findElements(driver, String.format(onCommonMethods_reactPage.alt_Field, whichButton,whichButton)).size();
                if (elemSize > 0) {
                    clickElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.alt_Field, whichButton,whichButton)));
                } else {
                    clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.ITButtonInput, whichButton)));
                }
                break;
            case "Upload":
                elemSize = findElements(driver, "//*[@id='buttonUpload']").size();
                if (elemSize > 0) {
                    clickElement(driver, onCommonMethods_reactPage.getButtonUpload());
                } else {
                    clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.ITButtonInput, whichButton)));
                }
                waitForPageToLoad(driver);
                break;
            case "Close":
                clickElement(driver, getElement(driver, getExistingLocator(driver, By.xpath(String.format(onCommonMethods_reactPage.titleFieldsAndButtons, whichButton)), By.xpath(String.format(onCommonMethodsPage.ITButtonInput, whichButton)), By.xpath(String.format(onCommonMethods_reactPage.alt_Field, whichButton,whichButton)), null)));
                break;
            case "Expand":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onCreateApplicationPage.getBtn_ExpandMVC(), onCreateApplicationPage.getBtn_ExpandReact(), null, null)));
                break;
            case "dataEntry percentage":
                clickElement(driver, onCreateApplicationPage.getBtn_DataPercentage());
                break;
            case "Review":
                clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.ariaLabelInputFields, "Review Application Button")));
                break;
            case "Lock and Review Order":
                clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.ariaLabelInputFields, whichButton)));
                break;
            case "Sign Application":
                if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                    clickElement(driver, onCommonMethods_reactPage.getBtn_signApplication());
                } else {
                    clickElement(driver, onCommonMethodsPage.getBtn_SignApplication());
                }
                waitForPageToLoad(driver);
                break;
            case "Cancel":
            case "Clear":
                elemSize = findElements(driver, String.format(onCommonMethodsPage.ariaLabelInputFields, whichButton)).size();
                if (elemSize > 0)
                    clickElement(driver, findElement(driver, String.format(onCommonMethodsPage.ariaLabelInputFields, whichButton)));
                else
                    clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.ITButtonInput, whichButton)));
                break;
            case "Notifications":
                clickElement(driver, onCommonMethodsPage.getBtn_Notifications());
                break;
            case "Back":
                clickElement(driver, onCommonMethodsPage.getBtn_Back());
                break;
            case "Custom List Button 2":
                clickElement(driver, getElement(driver, getExistingLocator(driver, By.xpath(String.format(CommonMethodsPage.ITButtonInput, whichButton)), null, null, null)));
                break;
            case "Decline E-Signature":
                clickElementByJSE(driver, onCommonMethodsPage.getBtn_DeclineEsignature());
                break;
            case "Save":
            case "Save Organization":
            case "Save Product Config":
            case "Save Sales Agreement":
                clickElement(driver, onTabAppPage.getBtn_Save());
                break;
            case "Save Template":
                clickElement(driver, onTabAppPage.getBtn_SaveTemplate());
                break;
            case "Save Application":
                clickElement(driver, onCreateApplicationPage.getBtn_Save());
                break;
            case "Copy As Is":
                clickElement(driver, onCommonMethodsPage.getBtn_CopyAsIs());
                break;
            case "Copy with Changes":
                clickElement(driver, onCommonMethodsPage.getBtn_CopyWithChanges());
                break;
            case "Exit":
                clickElement(driver, onCommonMethodsPage.getBtn_Exit());
                break;
            case "Application":
                clickElement(driver, onCommonMethodsPage.getBtn_IllustrationApplication());
                break;
            case "Deploy Now":
            case "Copy Group":
            case "Load Deployment Information":
            case "Export":
                clickElementByJSE(driver, findElement(driver, String.format(onDataEntryPage.getTabById(), testContext.getMapTestData().get(whichButton))));
                break;
            case "View":
                clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.fieldWithTitleAttribute, whichButton,whichButton)));
                break;
            case "CLOSE":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onDataEntryPage.getBtn_CloseRename(), onDataEntryPage.getBtn_CloseRename1(), null, null)));
                break;
            case "Open Application":
                scrollToWebElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.titleFieldsAndButtons, whichButton) + "//span"));
                syncElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.titleFieldsAndButtons, whichButton) + "//span"), EnumsCommon.TOCLICKABLE.getText());
                clickElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.titleFieldsAndButtons, whichButton) + "//span"));
                break;
            case "Advance Search":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getBtn_AdvanceSearchMVC(), onCommonMethodsPage.getBtn_AdvanceSearchReact(), null, null)));
                break;
            case "save":
                clickElement(driver, onCommonMethodsPage.getBtn_save());
                break;
            case "Show All":
            case "Case Access":
            case "App":
            case "Admin":
            case "Review Queue":
            case "Activity Access":
            case "Product Access":
            case "Training":
            case "Debugging Tools":
            case "React Multiple Signer for Automation Project":
            case "Hide All":
                clickElement(driver, findElement(driver, String.format(onCommonMethodsPage.anchorLinks, whichButton)));
                break;
            case "Create New ":
                clickElement(driver, findElement(driver, String.format(onCommonMethodsPage.anchorLinks, whichButton)));
                sleepInMilliSeconds(3000);
                break;
            default:
                clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.fieldWithTitleAttribute, whichButton, whichButton)));
                break;
        }
    }

    @Then("User enters new Application name")
    public void userEntersNewApplicationName() {
        String newAppName = "AT " + testContext.getMapTestData().get("product") + " " + getDate("newAppName");
        Allure.addAttachment("Application name is ", newAppName);
        Log.info("Application name is " + newAppName + "for test case " + testContext.getTestCaseID());
        onCreateApplicationPage.getTxtBox_newAppName().clear();
        onCreateApplicationPage.getTxtBox_newAppName().sendKeys(newAppName);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.NEWPRODUCTNAME.getText(), newAppName);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.NEWACTIVITYNAME.getText(), newAppName);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User enters new Illustration name")
    public void userEntersNewIllustrationName() {
        String newAppName = "AT " + testContext.getMapTestData().get("product") + " " + getDate("newAppName");
        onCreateApplicationPage.getTxtBox_newIllustrationName().clear();
        onCreateApplicationPage.getTxtBox_newIllustrationName().sendKeys(newAppName);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.NEWPRODUCTNAME.getText(), newAppName);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.NEWACTIVITYNAME.getText(), newAppName);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User clicks on Create button on Rename window")
    public void userClicksOnCreateButtonOnRenameWindow() {
        captureScreenshot(driver, testContext, false);
        onCreateApplicationPage.getBtn_CreateActivity().click();
    }


    @Then("User verify {string} button is disabled on home page")
    public void verifyElementState(String whichButton) {
        if (whichButton.equalsIgnoreCase("Continue")) {
            Assert.assertTrue("Unexpectedly Element " + whichButton + " is enabled", onCreateApplicationPage.getBtn_Continue().getAttribute("class").contains("disabled"));
        }
    }

    @Then("User verify title of page is {string}")
    public void verifyPageTitle(String title) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Title of page is not " + title, driver.findElement(By.xpath("//div[text()='" + title + "']")).isDisplayed());
    }

    @Then("User selects Optional Forms {string}")
    public void userSelectsOptionalForms(String formName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if(findElements(driver,String.format(CommonMethodsPage.optionalForms, formName)).size()>0) {
            clickElement(driver, String.format(CommonMethodsPage.optionalForms, formName));
        } else if(findElements(driver,String.format(CommonMethodsPage.optionalForms_SelectForm, formName)).size()>0){
            clickElement(driver, String.format(CommonMethodsPage.optionalForms_SelectForm, formName));
        }
        else {
            clickElement(driver, String.format(CommonMethodsPage.optionsFormMenu,formName));
        }
    }

    @Then("User verifies {string} Button should be disable")
    public void verifyButtonShouldBeDisable(String whichButton) {
        captureScreenshot(driver, testContext, false);
        if (whichButton.equalsIgnoreCase("Create")) {
            Assert.assertTrue("Button " + whichButton + " is not disabled", onCreateApplicationPage.getBtn_Create().getAttribute("class").contains("disabled"));
        } else if (whichButton.equalsIgnoreCase("Continue")) {
            Assert.assertTrue("Button " + whichButton + " is not disabled", onCreateApplicationPage.getBtn_Continue().getAttribute("class").contains("disabled"));
        } else if (whichButton.equalsIgnoreCase("Ok")) {
            Assert.assertTrue("Button " + whichButton + " is not disabled", onCreateApplicationPage.getBtn_OK().getAttribute("class").contains("disabled"));
        }
    }

    @Then("User verifies Required for Form {string}")
    public void verifyOptionalAndRequiredForForm(String formName, DataTable dataTable) throws InterruptedException {
        captureScreenshot(driver, testContext, false);
        List<String> data = dataTable.asList(String.class);

        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            waitForPageToLoad(driver);
            syncElement(driver, findElement(driver, onCommonMethods_reactPage.formListOpen), EnumsCommon.TOCLICKABLE.getText());
            findElement(driver, onCommonMethods_reactPage.formListOpen).click();
            waitForPageToLoad(driver);
            List<WebElement> expandALlList = findElements(driver, String.format(onCommonMethods_reactPage.expandAllFormList));
            for (WebElement element : expandALlList) {
                element.click();
            }
            List<WebElement> mandetoryFormList = findElements(driver, String.format(onCommonMethods_reactPage.mandetoryFormList, formName));
            int i = 0;
            for (String Mandatory : data) {
                String Actual = mandetoryFormList.get(i).getAttribute("innerText");
                captureScreenshot(driver, testContext, false);
                Assert.assertTrue(Mandatory + " is not present on option", Actual.contains(Mandatory));
                i++;
            }
            syncElement(driver, findElement(driver, onCommonMethods_reactPage.formListCollapse), EnumsCommon.TOCLICKABLE.getText());
            findElement(driver, onCommonMethods_reactPage.formListCollapse).click();
        } else {
            onCreateApplicationPage.getWizardPageNameExpand().click();
            List<WebElement> mandetoryFormList = findElements(driver, String.format(onCreateApplicationPage.mandetoryFormList, formName));
            int i = 0;
            for (String Mandatory : data) {
                String Actual = mandetoryFormList.get(i).getAttribute("innerText");
                if(Actual.contains("\n"))
                    Actual = Actual.replace("\n", " ");
                Assert.assertEquals(Mandatory + " is not present on option", Actual, Mandatory);
                i++;
            }
            onCreateApplicationPage.getWizardPageNameExpand().click();
        }
    }

    @Then("User verifies Optional for Form {string}")
    public void verifyOptionalForForm(String formName, DataTable dataTable) throws InterruptedException {
        waitForPageToLoad(driver);
        List<String> data = dataTable.asList(String.class);
        captureScreenshot(driver, testContext, false);
        int elemSize = findElements(driver, onCommonMethods_reactPage.formListOpen).size();
        if(elemSize > 0) {
            syncElement(driver, findElement(driver, onCommonMethods_reactPage.formListOpen), EnumsCommon.TOCLICKABLE.getText());
            findElement(driver, onCommonMethods_reactPage.formListOpen).click();
            waitForPageToLoad(driver);
            List<WebElement> expandALlList = findElements(driver, String.format(onCommonMethods_reactPage.expandAllFormList));
            for (WebElement element : expandALlList) {
                element.click();
            }
            List<WebElement> optionalFormList = findElements(driver, String.format(onCommonMethods_reactPage.optionalFormList, formName));
            int i = 0;
            for (String Optional : data) {
                // List<WebElement> mandetoryFormList = findElements(driver, String.format(commonMethods_reactPage.optionalFormList, formName));
                System.out.println(optionalFormList.get(i).getAttribute("innerText"));
                if (optionalFormList.get(i).getAttribute("innerText").contains(Optional)) {
                    continue;
                }
                //Assert.assertEquals(Optional+" is not present on option",optionalFormList.get(i).getAttribute("innerText"),Optional);
                i++;
            }
            if (i == optionalFormList.size()) {
                Assert.assertFalse(formName + " is not present on option", true);
            }
            clickElementByJSE(driver, findElement(driver, onCommonMethods_reactPage.formListCollapse));
        } else {
            onCreateApplicationPage.getWizardPageNameExpand().click();
            List<WebElement> optionalFormList = findElements(driver, String.format(onCreateApplicationPage.optionalFormList, formName));
            int i = 0;
            for (String Optional : data) {
                List<WebElement> mandetoryFormList = findElements(driver, String.format(onCreateApplicationPage.optionalFormList, formName));
                if (optionalFormList.get(i).getAttribute("innerText").equals(Optional)) {
                    continue;
                }
                i++;
            }
            if (i == optionalFormList.size()) {
                Assert.assertFalse(formName + " is not present on option", true);
            }
            onCreateApplicationPage.getWizardPageNameExpand().click();
        }
    }

    @Then("User verifies Page heading {string} with form name {string} for data entry flow")
    public void verifyPageHeadingWithFormNameForDataEntryFlow(String pageName, String formName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            Assert.assertEquals("Data entry page header name mismatched", pageName, getElement(driver, getExistingLocator(driver, onCommonMethods_reactPage.getDataEntryPageHeaderMVC(), onCommonMethods_reactPage.getDataEntryPageHeaderReact(), null, null)).getText());
            Assert.assertEquals("Data entry page header name mismatched", formName, onDataEntryPage.getFormName().getAttribute("innerText"));
        } else {
            Assert.assertEquals("Data entry page header name mismatched", pageName, onDataEntryPage.getDataEntryPageHeader().getText());
            Assert.assertEquals("Data entry page header name mismatched", formName, onDataEntryPage.getFormName().getAttribute("innerText"));

        }
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verify header of page is {string}")
    public void verifyPageHeader(String header) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(header + " is not displayed on page", getElement(driver, By.xpath("//span[contains(text(),'" + header + "')]")).isDisplayed());
    }

    @Then("User selects radio button {string} for {string}")
    public void selectRadioButtonFor(String buttonName, String panelname) {
        clickElement(driver, String.format(onCommonMethodsPage.radioButton, panelname, buttonName));
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User selects radio button {string} for field {string} from section {string}")
    public void selectRadioButtonForFieldFromSection(String buttonName, String fieldName, String panelName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver,String.format(onCommonMethodsPage.YesNoRadioButton, panelName, fieldName, buttonName)));
    }

    @Then("User verifies required fields should show error")
    public void verifyRequiredFieldsShouldShowError(DataTable dataTable) {
        List<String> data = dataTable.asList(String.class);
        for (String fieldName : data) {
            Assert.assertTrue(fieldName + " is not showing required field error message in red color", findElement(driver, String.format(onCommonMethodsPage.requiredFieldsError, fieldName, fieldName)).isDisplayed());
        }
        captureScreenshot(driver, testContext, false);
    }

    @Then("User fills required fields and verify fields error should not display {string}")
    public void fillRequiredFieldsAndVerifyFieldsErrorShouldNotDisplay(String checkValidation, DataTable dataTable) throws InterruptedException {
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> fieldValues = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> fieldValue : fieldValues) {
            String field = fieldValue.get("Field");
            String value = fieldValue.get("Value");
            sendKeys(driver, findElement(driver, String.format(onCommonMethodsPage.dataEntryTextFields, field, field,field)), value);
            //Need to check if element is available or not
            syncElement(driver, findElement(driver, String.format(onCommonMethodsPage.dataEntryTextFields, field, field,field)), EnumsCommon.TOVISIBLE.getText());
            waitForPageToLoad(driver);
            if (checkValidation.equals("true")) {
                Assert.assertTrue(field + " is showing required field error message in red color", findElements(driver, String.format(onCommonMethodsPage.requiredFieldsError, field)).size() == 0);
            }
        }
    }
    @Then("User selects value {string} for field {string}")
    public void userSelectsValueForField(String value, String fieldName) {
        waitForPageToLoad(driver);
        if (fieldName.equalsIgnoreCase("State"))
            addPropertyValueInJSON(testContext.getTestCaseID(), testContext, "jurisdiction", value);
        if (value.contains("DateMask_OP") || value.contains("SSNMask_OP") || value.contains("ZipMask_OP") || value.contains("PhoneMask_OP")) {
            switch (value) {
                case "DateMask_OP":
                    new Select(findElement(driver, String.format(onCommonMethodsPage.selectDocumentType, fieldName, fieldName, fieldName, fieldName, fieldName, fieldName))).selectByVisibleText(testContext.getMapTestData().get(EnumsJSONProp.DATEMASKNAME.getText()));
                    break;
                case "SSNMask_OP":
                    new Select(findElement(driver, String.format(onCommonMethodsPage.selectDocumentType, fieldName, fieldName, fieldName, fieldName, fieldName, fieldName))).selectByVisibleText(testContext.getMapTestData().get(EnumsJSONProp.SSNMASKNAME.getText()));
                    break;
                case "ZipMask_OP":
                    new Select(findElement(driver, String.format(onCommonMethodsPage.selectDocumentType, fieldName, fieldName, fieldName, fieldName, fieldName, fieldName))).selectByVisibleText(testContext.getMapTestData().get(EnumsJSONProp.ZIPMASKNAME.getText()));
                    break;
                case "PhoneMask_OP":
                    new Select(findElement(driver, String.format(onCommonMethodsPage.selectDocumentType, fieldName, fieldName, fieldName, fieldName, fieldName, fieldName))).selectByVisibleText(testContext.getMapTestData().get(EnumsJSONProp.PHONEMASKNAME.getText()));
                    break;
                case "Orange (Firm2)":
                    new Select(findElement(driver, String.format(onCommonMethodsPage.selectDocumentType, fieldName, fieldName, fieldName, fieldName, fieldName, fieldName))).selectByVisibleText(value);
                    break;
                default:
                    throw new FLException("Invalid value: " + value);
            }
        } else if (findElements(driver, String.format(onCommonMethods_reactPage.ariaLabelInputFields, fieldName, fieldName)).size() > 0) {
            new Select(findElement(driver, String.format(onCommonMethods_reactPage.ariaLabelInputFields, fieldName, fieldName))).selectByVisibleText(value);
        } else {
            new Select(findElement(driver, String.format(onCommonMethodsPage.selectDocumentType, fieldName, fieldName, fieldName, fieldName, fieldName, fieldName))).selectByVisibleText(value);
        }
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verify value is {string} for field {string}")
    public void userVerifyValueForField(String value, String fieldName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Select select;
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            select = new Select(onCommonMethodsPage.findElement(driver, String.format(onCommonMethods_reactPage.ariaLabelInputFields, fieldName,fieldName)));
        } else {
            select = new Select(driver.findElement(By.xpath("//select[@title='" + fieldName + "' or @aria-label='" + fieldName + "'or @id='" + fieldName + "']")));
        }
        Assert.assertTrue(fieldName + " value is not set to " + value, select.getFirstSelectedOption().getText().equalsIgnoreCase(value));
    }

    @Then("User verifies field error {string} for field {string}")
    public void verifyFieldErrorForField(String error, String field) {
        findElement(driver, String.format(onCommonMethodsPage.requiredFieldsError, field, field)).click();
        Assert.assertTrue(field + ": {" + error + "} is not showing required field error message in red color", findElement(driver, String.format(onCommonMethodsPage.requiredFieldsError, field, field)).getAttribute("innerText").equals(error));
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies Red bubble icon at top right corner should be display {string}")
    public void verifyRedBubbleIconAtTopRightCornerShouldBeDisplay(String flag) throws InterruptedException {
        waitForPageToLoad(driver);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            if (flag.equals("True")) {
                syncElement(driver, onCommonMethodsPage.getRedColorErrorValidationBubble(), EnumsCommon.TOCLICKABLE.getText());
                captureScreenshot(driver, testContext, false);
                Assert.assertTrue("Red bubble is not showing at top right corner", onCommonMethodsPage.getRedColorErrorValidationBubble().getAttribute("class").contains("alert"));

            } else {

                captureScreenshot(driver, testContext, false);
                Assert.assertTrue("Red bubble is showing at top right corner", onCommonMethodsPage.getRedColorErrorValidationBubble().getAttribute("style").contains("visibility: hidden"));
            }
        } else {
            if (flag.equals("True")) {
                syncElement(driver, onCommonMethodsPage.getRedColorErrorValidationBubble(), EnumsCommon.TOCLICKABLE.getText());
                captureScreenshot(driver, testContext, false);
                Assert.assertTrue("Red bubble is not showing at top right corner", onCommonMethodsPage.getRedColorErrorValidationBubble().isDisplayed());

            } else {
                sleepInMilliSeconds(2000);
                boolean isPresent = false;
                try {
                    isPresent = onCommonMethodsPage.getRedColorErrorValidationBubble().isDisplayed();
                } catch (NoSuchElementException e) {

                }
                captureScreenshot(driver, testContext, false);
                Assert.assertFalse("Red bubble is showing at top right corner", isPresent);
            }
        }
    }

    @Then("User set value {string} for field {string}")
    public void usersetValueForField(String value, String fieldName) {
        waitForPageToLoad(driver);
        sendKeys(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.dataEntryTextFields, fieldName, fieldName,fieldName)), value);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies dialog window {string}")
    public void userVerifiesDialogWindow(String windowName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (findElements(driver, String.format(onCommonMethods_reactPage.dialog_WindowName, windowName)).size()>0) {
            Assert.assertTrue(windowName + " is not open", findElement(driver, String.format(onCommonMethods_reactPage.dialog_WindowName, windowName)).isDisplayed());
        }else if(windowName.equalsIgnoreCase("Electronic Signatures Complete") || windowName.equalsIgnoreCase("Agent Off-Site Signature")) {
            Assert.assertTrue(windowName+" is not open", getElement(driver, getExistingLocator(driver, onSignaturesPage.getAgentOnSiteHeadingReact(), onSignaturesPage.getAgentOnSiteHeadingMVC(), null, null)).getText().trim().contains(windowName));
        }else if(windowName.equalsIgnoreCase("CRM")) {
            Assert.assertTrue(windowName+" is not open", getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getDialog_WindowNameMVC(), onCommonMethodsPage.getDialog_WindowNameReact(), null, null)).getText().trim().contains(windowName));
        }
        else if( getElements(driver,onCommonMethodsPage.getDialog_WindowName()).size() > 0) {
            Assert.assertTrue(windowName+" is not open", getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getDialog_WindowName(), null,null,null)).getText().trim().contains(windowName));
        }
        else {
            Assert.assertTrue(windowName+" is not open", getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getDialog_WindowNameMVC(), onCommonMethodsPage.getDialog_WindowNameReact(),onCommonMethodsPage.getDialog_WindowName(),null)).getText().trim().contains(windowName));
        }
    }

    @Then("User verifies dialog window {string} popup")
    public void userVerifiesDialogWindowPopup(String windowName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(windowName + "} is not open", onCommonMethodsPage.getDialog_WindowName_PendingRequest().getText().contains(windowName));
    }

    @Then("User verifies dialog window {string} popup if appears and closes it")
    public void userVerifiesDialogWindowPopupIfAppears(String windowName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (new ArrayList<>(driver.findElements(By.id("dialogheader"))).size() > 0) {
            captureScreenshot(driver, testContext, false);
            if (new ArrayList<>(driver.findElements(By.xpath("//button[@class='ITButtonInput  ']//span[text()='Close']"))).size()>0)
                clickElementByJSE(driver, onDataEntryPage.getBtn_Close());
        }
        else if (new ArrayList<>(driver.findElements(By.id("lblPendingRequest"))).size() > 0) {
            Assert.assertTrue(windowName + "} is not open", onCommonMethodsPage.getDialog_WindowName_PendingRequest().getText().equals(windowName));
            captureScreenshot(driver, testContext, false);
            clickElementByJSE(driver, getElement(driver, getExistingLocator(driver, onReviewPage.getLink_closeMVC(), onReviewPage.getLink_closeReact(), null, null)));
        }
    }

    @Then("User verifies CRM search output")
    public void verifyCRMSearchOutput(DataTable dataTable) {
        List<Map<String, String>> data = dataTable.asMaps(String.class, String.class);
        String searchValue = "";
        String searchLink = "";
        String company = "";
        String companyDetails = "";
        for (Map<String, String> row : data) {
            searchValue = row.get("Search Value");
            searchLink = row.get("Search link");
            company = row.get("Company");
            companyDetails = row.get("Company Details");

            String fieldName = "Search Ceding Company";
            onCommonMethodsPage.findElement(driver, String.format(onDataEntryPage.dataEntryTextFields, fieldName, fieldName)).sendKeys(searchValue);
            onDataEntryPage.getSearchIcon().click();
            onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.anchorLinks, searchLink)).click();
            sleepInMilliSeconds(1000);
            waitForPageToLoad(driver);
            Assert.assertEquals("Company is wrong it should be :" + company, onDataEntryPage.getCRMSearchResultHeader().getText(), company);
            Assert.assertTrue("Company details are wrong :" + company, onDataEntryPage.getCRMCompanyDetails().getAttribute("innerText").replace("\n", "").trim().replace("&nbsp;", "").trim().contains(companyDetails.replace("\n", "").trim().replace("&nbsp;", "").trim()));
            captureScreenshot(driver, testContext, false);
        }
    }

    @Then("User opens {string} Required for Form {string}")
    public void openRequiredForForm(String formName, String formMenu) throws InterruptedException {
        waitForPageToLoad(driver);
        JavascriptExecutor executor = (JavascriptExecutor)driver;
        String script = "return getComputedStyle(arguments[0]).getPropertyValue('color');";
        captureScreenshot(driver, testContext, false);
        if (findElements(driver, onCommonMethods_reactPage.formListOpen).size()>0) {
            syncElement(driver, findElement(driver, onCommonMethods_reactPage.formListOpen), EnumsCommon.TOCLICKABLE.getText());
            findElement(driver, onCommonMethods_reactPage.formListOpen).click();
            sleepInMilliSeconds(3000);
            syncElement(driver, findElement(driver, onCommonMethods_reactPage.expandAllFormList), EnumsCommon.TOVISIBLE.getText());
            syncElement(driver, findElement(driver, onCommonMethods_reactPage.expandAllFormList), EnumsCommon.TOCLICKABLE.getText());
            if(findElement(driver, String.format(onCommonMethods_reactPage.expandMandetoryFormList, formMenu)).getText().equalsIgnoreCase("▼"))
                clickElementByJSE(driver, findElement(driver, String.format(onCommonMethods_reactPage.expandMandetoryFormList, formMenu)));
            List<WebElement> mandetoryFormList = findElements(driver, String.format(onCommonMethods_reactPage.mandetoryFormList, formMenu));
            int i = 0;
            for (WebElement element : mandetoryFormList) {
                System.out.println("**********" + element.getAttribute("innerText"));
                String form = element.getAttribute("innerText");
                if (form.contains(formName)) {
                    Assert.assertTrue("Page name is not in red color", executor.executeScript(script, element).toString().contains("rgb(255, 0, 0)"));
                    clickElementByJSE(driver,element);
                    break;
                }
            }
        } else {
            onCreateApplicationPage.getWizardPageNameExpand().click();
            List<WebElement> mandetoryFormList = findElements(driver, String.format(onCreateApplicationPage.mandetoryFormList, formMenu));
            int i = 0;
            for (WebElement element : mandetoryFormList) {
                System.out.println("**********" + element.getAttribute("innerText"));
                String form = element.getAttribute("innerText");
                if (form.equals(formName)) {
                    Assert.assertTrue("Page name is not in red color", executor.executeScript(script, element.findElement(By.xpath("//span"))).toString().contains("rgb(255, 0, 0)") || executor.executeScript(script, element.findElement(By.xpath("//span"))).toString().contains("rgb(241, 62, 29)"));
                    element.click();
                    break;
                }
            }
        }
        waitForPageToLoad(driver);
        Assert.assertEquals("Data entry page header name mismatched", formMenu, getElement(driver, getExistingLocator(driver, onCommonMethods_reactPage.getDataEntryPageHeaderMVC(), onCommonMethods_reactPage.getDataEntryPageHeaderReact(), null, null)).getText());
        Assert.assertEquals("Data entry page header name mismatched", formName, onDataEntryPage.getFormName().getAttribute("innerText"));
    }

    @Then("User opens {string} Optional for Form {string}")
    public void openOptionalForForm(String formName, String formMenu) {
        waitForPageToLoad(driver);
        clickElement(driver,getElement(driver, getExistingLocator(driver,onCreateApplicationPage.getWizardPageNameExpandmvc(),onExternalLoginPage.getIcon_ExpandMenuMVC(), null, null )));
        sleepInMilliSeconds(3000);
        if (findElements(driver, String.format(onCommonMethods_reactPage.expandMandetoryFormList, formName)).size() > 0) {
            if (findElement(driver, String.format(onCommonMethods_reactPage.expandMandetoryFormList, formName)).getText().equalsIgnoreCase("▼"))
                clickElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.expandMandetoryFormList, formName)));
            sleepInMilliSeconds(2000);
            syncElement(driver, findElement(driver, String.format(onDataEntryPage.getFormMenu(), formMenu,formName)), EnumsCommon.TOCLICKABLE.getText());
            clickElement(driver, findElement(driver, String.format(onDataEntryPage.getFormMenu(), formMenu,formName)));
        } else {
            List<WebElement> mandetoryFormList = findElements(driver, String.format(onCreateApplicationPage.optionalFormList, formMenu));
            int i = 0;
            for (WebElement element : mandetoryFormList) {
                String form = element.getAttribute("innerText");
                if (form.equals(formName)) {
                    element.click();
                    break;
                }
            }
        }
    }

    @Then("User verifies prefilled form")
    public void verifyPrefilledForm(DataTable dataTable) {
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        waitForPageToLoad(driver);
        for (Map<String, String> fieldData : formFields) {
            String fieldName = fieldData.get("Field");
            String expectedValue = fieldData.get("Value");
            String dataItemId = fieldData.get("data-dataitemid");
            String locatorType = fieldData.get("Locator Type");
            String validationError = fieldData.get("Validation Error");

            String actualValue = null;
            sleepInMilliSeconds(3000);
            switch (locatorType) {
                case "Input":
                    if (findElements(driver, String.format(onCommonMethods_reactPage.preFilledFormInput, dataItemId)).size() > 0) {
                        actualValue = findElement(driver, String.format(onCommonMethods_reactPage.preFilledFormInput, dataItemId)).getAttribute("value");
                        Assert.assertEquals("Expected field " + fieldName + " is not pre populated on form", actualValue, expectedValue);
                        if (!validationError.equals("")) {
                            findElement(driver, String.format(onCommonMethods_reactPage.requiredFieldsError, dataItemId, fieldName)).click();
                            Assert.assertTrue(fieldName + ": {" + validationError + "} is not showing required field error message in red color", findElement(driver, String.format(onCommonMethods_reactPage.requiredFieldsError, dataItemId, fieldName)).getAttribute("innerText").equals(validationError));
                        }
                    } else {
                        actualValue = findElement(driver, String.format(onCommonMethodsPage.preFilledFormInput, dataItemId)).getAttribute("value");
                        Assert.assertEquals("Expected field " + fieldName + " is not pre populated on form", actualValue, expectedValue);
                        if (!validationError.equals("")) {
                            findElement(driver, String.format(onCommonMethodsPage.requiredFieldsError, dataItemId, fieldName)).click();
                            Assert.assertTrue(fieldName + ": {" + validationError + "} is not showing required field error message in red color", findElement(driver, String.format(onCommonMethodsPage.requiredFieldsError, dataItemId, fieldName)).getAttribute("innerText").equals(validationError));
                        }
                    }

                    break;
                default:
                    // logger.error("Invalid Locator Type: {}", locatorType);
                    Assert.fail("Invalid Locator Type");
            }
            captureScreenshot(driver, testContext, false);
        }
    }

    @Then("User verifies prefilled form for Forms Only Application")
    public void user_verifies_prefilled_form_for_Forms_Only_Application(io.cucumber.datatable.DataTable dataTable) {
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        waitForPageToLoad(driver);
        for (Map<String, String> fieldData : formFields) {
            String fieldName = fieldData.get("Field");
            String expectedValue = fieldData.get("Value");
            String dataItemId = fieldData.get("data-item-id");
            String locatorType = fieldData.get("Locator Type");
            String actualValue = null;

            switch (locatorType) {
                case "Input":
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                        actualValue = findElement(driver, String.format(onCommonMethods_reactPage.preFilledFormInput, dataItemId)).getAttribute("value");
                        Assert.assertEquals("Expected field " + fieldName + " is not pre populated on form", actualValue, expectedValue);
                    } else {
                        actualValue = findElement(driver, String.format(onCommonMethodsPage.preFilledFormInputForm, dataItemId)).getAttribute("value");
                        Assert.assertEquals("Expected field " + fieldName + " is not pre populated on form", actualValue, expectedValue);
                    }
                    break;
                default:
                    Assert.fail("The Locator Type provided was not valid");
            }
            captureScreenshot(driver, testContext, false);
        }
    }

    @Then("User Enters DOB {string}")
    public void UserEntersDOB(String dob) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onDataEntryPage.getTxtBox_ClientDob());
        onDataEntryPage.getTxtBox_ClientDob().sendKeys(dob + Keys.TAB);
    }

    @Then("User verify value of field {string} is set to {string}")
    public void verifyFieldValue(String field, String value) {
        waitForPageToLoad(driver);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText()))
            Assert.assertTrue("Field " + field + " value does not match", driver.findElement(By.xpath("//*[@data-item-id='" + field + "']")).getAttribute("value").equalsIgnoreCase(value));
        else
            Assert.assertTrue("Field " + field + " value does not match", driver.findElement(By.xpath("//input[@data-dataitemid='" + field + "']")).getAttribute("value").equalsIgnoreCase(value));
    }


    @Then("User sets values for prefilled form")
    public void setValuesForPrefilledForm(DataTable dataTable) {
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        waitForPageToLoad(driver);
        for (Map<String, String> fieldData : formFields) {
            String fieldName = fieldData.get("Field");
            String inputValue = fieldData.get("Value");
            String dataItemId = fieldData.get("data-dataitemid");
            String locatorType = fieldData.get("Locator Type");

            String actualValue = null;

            switch (locatorType) {
                case "Input":
                    sleepInMilliSeconds(200);
                    if(inputValue.contains("Random")) {
                        String appName = testContext.getMapTestData().get("newProductName");
                        inputValue = inputValue.replace("Random", "") + appName.substring(appName.lastIndexOf(" ")).trim();
                        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.REVIEWERNAME.getText(), inputValue);
                    }
                    if (findElements(driver, String.format(onCommonMethods_reactPage.dataEntryTextFields, fieldName, dataItemId,dataItemId)).size()>0) {
                        syncElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.dataEntryTextFields, fieldName, dataItemId,dataItemId)), EnumsCommon.TOVISIBLE.getText());
                        clickElementByJSE(driver,findElement(driver, String.format(onCommonMethods_reactPage.dataEntryTextFields, fieldName, dataItemId,dataItemId)));
                        findElement(driver, String.format(onCommonMethods_reactPage.dataEntryTextFields, fieldName, dataItemId,dataItemId)).clear();
                        findElement(driver, String.format(onCommonMethods_reactPage.dataEntryTextFields, fieldName, dataItemId,dataItemId)).sendKeys(inputValue, Keys.TAB);
                    } else {
                        syncElement(driver, findElement(driver,String.format(onDataEntryPage.txtBox_dataEntryTextFields_Mvc, fieldName, dataItemId,dataItemId)), EnumsCommon.TOVISIBLE.getText());
                        sendKeys(driver, findElement(driver,String.format(onDataEntryPage.txtBox_dataEntryTextFields_Mvc, fieldName, dataItemId,dataItemId)), inputValue);
                    }
                    break;
                case "Check Box":
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                        findElement(driver, String.format(onCommonMethods_reactPage.formCheckBox, fieldName, dataItemId)).click();
                    } else {
                        findElement(driver, String.format(onCommonMethodsPage.formCheckBox_Mvc, fieldName, dataItemId,dataItemId)).click();
                    }
                    break;
                case "Select":
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                        Select select = new Select(findElement(driver, String.format(onCommonMethods_reactPage.dataEntrySelectFields, fieldName, dataItemId)));
                        select.selectByVisibleText(inputValue);
                    } else {
                        Select select = new Select(findElement(driver, String.format(onCommonMethodsPage.dataEntrySelectFields, fieldName, dataItemId,dataItemId)));
                        select.selectByVisibleText(inputValue);
                    }
                    break;
                case "div" :
                    if (findElements(driver, String.format(onCommonMethods_reactPage.checkBoxOwnership, dataItemId)).size() > 0) {
                        clickElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.checkBoxOwnership, dataItemId)));
                    }
                    else {
                        clickElement(driver, findElement(driver, String.format(onCommonMethodsPage.checkBoxOwnershipMVC, dataItemId)));
                    }
                    break;
                case "textarea" :
                    if (findElements(driver, String.format(onCommonMethods_reactPage.txtAreaInput, dataItemId)).size() > 0) {
                        sendKeys(driver, findElement(driver, String.format(onCommonMethods_reactPage.txtAreaInput, dataItemId)), inputValue);
                    }
                    else {
                        Assert.fail("Locator Type provided was not valid");
                    }
                    break;

                default:
                    // logger.error("Invalid Locator Type: {}", locatorType);
                    Assert.fail("Invalid Locator Type");
            }
            waitForPageToLoad(driver);
            captureScreenshot(driver, testContext, false);
        }
    }

    @Then("User verify fields for {string}")
    public void verifyFieldReadOnly(String condition, DataTable dataTable) {
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);

        for (Map<String, String> fieldData : formFields) {
            String fieldName = fieldData.get("Field");
            String inputValue = fieldData.get("Value");
            String dataItemId = fieldData.get("data-dataitemid");
            String locatorType = fieldData.get("Locator Type");

            String actualValue = null;

            switch (locatorType) {
                case "Input":
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                        waitForPageToLoad(driver);
                        String attributeValue = findElement(driver, String.format(onCommonMethods_reactPage.dataEntryTextFields, fieldName, dataItemId,dataItemId)).getAttribute(condition);
                        Assert.assertTrue("Field is not read only", attributeValue.equalsIgnoreCase("true"));
                    } else {
                        waitForPageToLoad(driver);
                        findElement(driver, String.format(onDataEntryPage.txtBox_dataEntryTextFields_Mvc, fieldName, dataItemId)).clear();
                        findElement(driver, String.format(onDataEntryPage.txtBox_dataEntryTextFields_Mvc, fieldName, dataItemId)).sendKeys(inputValue + Keys.TAB);
                    }
                    break;
                case "Check Box":
                    waitForPageToLoad(driver);
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                        WebElement checkBoxElement = findElement(driver, String.format(onCommonMethods_reactPage.formCheckBox, fieldName, dataItemId));
                        Assert.assertTrue("Checkbox is not read only", checkBoxElement.getAttribute("class").contains("readonlyCheckBox") | checkBoxElement.getAttribute("class").contains("radioCheckedDisabled"));
                    } else {
                        findElement(driver, String.format(onCommonMethodsPage.formCheckBox_Mvc, fieldName, dataItemId, dataItemId)).click();
                    }
                    break;
                case "textarea" :
                    if (findElements(driver, String.format(onCommonMethods_reactPage.txtAreaInput, dataItemId)).size() > 0) {
                        waitForPageToLoad(driver);
                        Assert.assertTrue("Field is not read only", findElement(driver, String.format(onCommonMethods_reactPage.txtAreaInput, dataItemId, dataItemId,dataItemId)).getAttribute(condition).equals("true"));
                    }
                    else {
                        Assert.fail("Locator Type provided was not valid");
                    }
                    break;
                default:
                    // logger.error("Invalid Locator Type: {}", locatorType);
                    Assert.fail("Invalid Locator Type");
            }
            captureScreenshot(driver, testContext, false);
        }
    }

    @Then("User opens Menu {string}")
    public void openMenu(String menus) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        for (String menu : menus.split("->")) {
            syncElement(driver, findElement(driver, String.format(onCommonMethodsPage.anchorLinks, menu)), EnumsCommon.TOCLICKABLE.getText());
            clickElementByJSE(driver, findElement(driver, String.format(onCommonMethodsPage.anchorLinks, menu)));
        }
    }

    @Then("User verify application is read only")
    public void verifyApplicationReadonly() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Application is not read only", onCommonMethodsPage.getTxt_canvas().size() > 0);
    }

    @Then("User uploads Document {string}")
    public void userUploadDocumentWithType(String documentName) throws AWTException, InterruptedException {
        waitForPageToLoad(driver);
        String filePath = EnumsCommon.ABSOLUTE_DOWNLOADFILES_PATH.getText() + documentName + ".pdf";
        onCommonMethodsPage.getFileDrop().sendKeys(new File(filePath).getAbsolutePath());
        captureScreenshot(driver, testContext, false);
    }

    @Then("User upload Document {string}")
    public void userUploadDocument(String documentName) throws AWTException, InterruptedException {
        waitForPageToLoad(driver);
        String filePath = EnumsCommon.ABSOLUTE_DOWNLOADFILES_PATH.getText() + documentName;
        onCommonMethodsPage.getFileDrop().sendKeys(new File(filePath).getAbsolutePath());
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies {string} and {string} link after uploading documents")
    public void userVerifyAndLinkAfterUploadingDocuments(String removeLink, String verifyLink) {
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            Assert.assertTrue(removeLink + " link is not showing after uploading document", findElement(driver, String.format(onCommonMethods_reactPage.verifyAndRemoveLink, removeLink)).isDisplayed());
            Assert.assertTrue(verifyLink + " link is not showing after uploading document", findElement(driver, String.format(onCommonMethods_reactPage.verifyAndRemoveLink, verifyLink)).isDisplayed());
        } else {
            Assert.assertTrue(removeLink + " link is not showing after uploading document", findElement(driver, String.format(onCommonMethodsPage.verifyAndRemoveLink, removeLink)).isDisplayed());
            Assert.assertTrue(verifyLink + " link is not showing after uploading document", findElement(driver, String.format(onCommonMethodsPage.verifyAndRemoveLink, verifyLink)).isDisplayed());
        }
    }

    @Then("User selects check box {string}")
    public void selectCheckBox(String fieldName) {
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            clickElement(driver, String.format(onCommonMethods_reactPage.ariaLabelInputFields, fieldName, fieldName));
            waitForPageToLoad(driver);
            captureScreenshot(driver, testContext, false);
        } else {
            clickElement(driver, String.format(onCommonMethodsPage.checkBox, fieldName, fieldName));
            waitForPageToLoad(driver);
            captureScreenshot(driver, testContext, false);
        }
    }

    @Then("User verifies pdf text in {string} document")
    public void userVerifiesPdfText(String fileName, DataTable dataTable) {
        // TODO values are not validating in pdf (canvas)
        try {
            switchToParentTab(driver, false);
            testContext.setPdfText_global(extractPdfContent(driver,testContext,fileName));
        }
        finally {
            switchToParentTab(driver, true);
        }
        List<String> data = dataTable.asList(String.class);
        verifyPdfContent(testContext , data);
    }

    @Then("User verifies pdf document contains {int} pages")
    public void userVerifiesCountPdfPages(int count) throws Exception {
        File pdfFile = new File (EnumsCommon.RELATIVE_DOWNLOADFILES_PATH.getText() + testContext.getPdfFileName());
        PDDocument pdfDocument = PDDocument.load(new FileInputStream(pdfFile));
        Assert.assertTrue("PDF does not contain expected number of pages, It has " + pdfDocument.getNumberOfPages(), pdfDocument.getNumberOfPages() == count);
    }

    @Then("User clicks Link {string}")
    public void clickLink(String menus) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        for (String menu : menus.split("->")) {
            findElement(driver, String.format(onCommonMethodsPage.anchorLinks, menu)).click();
        }
    }
    @Then("User sets value {string}  for field {string} for Send Email To Reviewer page")
    public void userSetValueForFieldForSendEmailToReviewerPage(String fieldValue, String fieldName) {
        onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.ariaLabelInputFields, fieldName)).clear();
        if(fieldValue.contains("Random")) {
            String appName = testContext.getMapTestData().get("newProductName");
            fieldValue = fieldValue + appName.substring(appName.lastIndexOf(" "));
            addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.REVIEWERNAME.getText(), fieldValue);
            addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.REVIEWERNAMERANDOM.getText(), fieldValue);
        }
        onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.ariaLabelInputFields, fieldName)).sendKeys(fieldValue);
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User Verifies Two field appears {string} and {string}")
    public void user_Verifies_Two_field_appears_and(String fieldName1, String fieldName2) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(fieldName1 +" is not displayed", onCommonMethodsPage.findElement(driver,String.format(onCommonMethodsPage.ariaLabelInputFields,fieldName1)).isDisplayed());
        Assert.assertTrue(fieldName2 +" is not displayed", onCommonMethodsPage.findElement(driver,String.format(onCommonMethodsPage.ariaLabelInputFields,fieldName2)).isDisplayed());
    }

    @Then("User selects check box {string} for Send Email To Reviewer page")
    public void userSelectCheckBoxForSendEmailToReviewerPage(String fieldName) {
        clickElement(driver, String.format(onCommonMethodsPage.ariaLabelInputFields, fieldName));
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode")
    public void verifyPageEmailRequestsSentWithMessageAndPasscode(DataTable dataTable) {
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        String Passcode = onReviewPage.getSendEmailPasscode().getText();
        System.setProperty("Passcode", Passcode);
        onReviewPage.getButtonSendEmailRequest().click();
        waitForPageToLoad(driver);
        for (Map<String, String> fieldData : formFields) {
            String pageName = fieldData.get("Page Name");
            String emailToSend = fieldData.get("Email Send To");
            String passcodeMessage = fieldData.get("Passcode message");
            Assert.assertEquals("Page header name should match", pageName, onReviewPage.getPageHeadingEmailRequestsSent().getAttribute("innerText"));
            Assert.assertEquals("Email to send Message should be", emailToSend, onReviewPage.getPanelContent().getAttribute("innerText"));
            Assert.assertEquals("Passcode message should be", passcodeMessage + " '" + Passcode + "'", onReviewPage.getPassCodeText().getAttribute("innerText"));
            captureScreenshot(driver, testContext, false);
        }
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.REVIEWERPASSCODE.getText(), Passcode);
    }

    @Then("User clicks button Back to app")
    public void userClickButtonBackToApp() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            String button ="Back to Application";
            findElement(driver, String.format(onCommonMethods_reactPage.alt_Field, button,button)).click();
            captureScreenshot(driver, testContext, false);
        } else {
            onReviewPage.getButtonBack().click();
            captureScreenshot(driver, testContext, false);
        }
    }

    @Then("User verifies toast message {string}")
    public void userVerifiesTostMessage(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        WebElement element = getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getPopup_ToastMVC(), onCommonMethodsPage.getPopup_ToastReact(), null, null));
        syncElement(driver, element, EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue(message + ":: Toast popup NOT Visible",element.getAttribute("innerText").contains(message));
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getIcon_closeToastMessageMVC(), onCommonMethodsPage.getIcon_closeToastMessageReact(), null, null)));
    }

    @Then("User verifies toast message Alert {string}")
    public void userVerifiesTostMessageAlert(String message) {
        syncElement(driver, onReviewPage.getAlert_MessageSent(), EnumsCommon.TOVISIBLE.getText());
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(message + ":: Toast popup NOT Visible", onReviewPage.getAlert_MessageSent().getText().trim().contains(message));
        captureScreenshot(driver, testContext, false);
        clickElement(driver, getElement(driver, getExistingLocator(driver, onReviewPage.getBtn_Ok_ConfPopupMVC(), onReviewPage.getBtn_Ok_ConfPopupReact(), null, null)));
    }

    @Then("User verifies Pending Request dialog details")
    public void verifyPendingRequestDialogDetails(DataTable dataTable) {
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);

        waitForPageToLoad(driver);
        for (Map<String, String> fieldData : formFields) {
            String recipient = fieldData.get("Recipient");
            String emailToSendTo = fieldData.get("Email Sent To");
            String passcode = System.getProperty("Passcode");
            // Get today's date
            LocalDate currentDate = LocalDate.now();
            // Format the date as per the desired format
            String todaysDate="";
            if(testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_REACT.getText())) {
                DateTimeFormatter formatter = convertDateFormat(onReviewPage.getPendingRequestDetails().get(2).getAttribute("innerText"));
                todaysDate = currentDate.format(formatter);
                Assert.assertEquals("Recipient should be " + recipient, onReviewPage.getPendingRequestDetails().get(0).getAttribute("innerText"), "Recipient: " + recipient);
                Assert.assertEquals("To should be " + emailToSendTo, onReviewPage.getPendingRequestDetails().get(1).getAttribute("innerText"), "Email Sent To: " + emailToSendTo);
                Assert.assertEquals("Date should be " + todaysDate, onReviewPage.getPendingRequestDetails().get(2).getAttribute("innerText"), "Create Date: " + todaysDate);
                Assert.assertEquals("Passcode should be " + passcode, onReviewPage.getPendingRequestDetails().get(3).getAttribute("innerText"), "Passcode:" + passcode);
            }else{
                passcode=testContext.getMapTestData().get("reviewerPasscode");
                Assert.assertEquals("Recipient should be " + recipient, onReviewPage.getPendingRequestDetails_mvc().getText().split("\n")[1].trim(), "Recipient: " + recipient);
                Assert.assertEquals("To should be " + emailToSendTo, onReviewPage.getPendingRequestDetails_mvc().getText().split("\n")[2].trim(), "Email Sent: " + emailToSendTo);
                //  Assert.assertEquals("Date should be " + todaysDate, onReviewPage.getPendingRequestDetails_mvc().getText().split("\n")[3].trim(), "Date: " + todaysDate);
                Assert.assertEquals("Passcode should be " + passcode, onReviewPage.getPendingRequestDetails_mvc().getText().split("\n")[4].trim(), "Passcode: " + passcode);

            }

        }
        captureScreenshot(driver, testContext, false);

    }

    public DateTimeFormatter convertDateFormat(String appDate) {
        appDate = appDate.replace("Create Date: ","");
        String[] dates = appDate.split("/");
        if(dates[0].length() == 1 & dates[1].length() == 1)
            return DateTimeFormatter.ofPattern("M/d/yyyy");
        else if (dates[0].length() == 1)
            return DateTimeFormatter.ofPattern("M/dd/yyyy");
        else if (dates[1].length() == 1)
            return DateTimeFormatter.ofPattern("MM/d/yyyy");
        return DateTimeFormatter.ofPattern("MM/dd/yyyy");
    }

    @Then("User verifies Pending Request dialog links")
    public void verifyPendingRequestDialogLinks(List<String> expectedLinks) {

        Assert.assertEquals(expectedLinks.get(0) + " Link should be ", onReviewPage.getPendingRequestLinks().get(0).getAttribute("innerText"), expectedLinks.get(0));
        Assert.assertEquals(expectedLinks.get(1) + " Link should be ", onReviewPage.getPendingRequestLinks().get(1).getAttribute("innerText"), expectedLinks.get(1));
        Assert.assertEquals(expectedLinks.get(2) + " Link should be ", onReviewPage.getPendingRequestLinks().get(2).getAttribute("innerText"), expectedLinks.get(2));
    }

    @Then("User verifies Pending Request dialog popup links")
    public void verifyPendingRequestDialogLinksPopup(List<String> expectedLinks) {
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals(expectedLinks.get(0) + " Link should be ", onReviewPage.getPendingRequestLinks_mvc().get(0).getAttribute("innerText"), expectedLinks.get(0));
        Assert.assertEquals(expectedLinks.get(1) + " Link should be ", onReviewPage.getPendingRequestLinks_mvc().get(1).getAttribute("innerText"), expectedLinks.get(1));
        Assert.assertEquals(expectedLinks.get(2) + " Link should be ", onReviewPage.getPendingRequestLinks_mvc().get(2).getAttribute("innerText"), expectedLinks.get(2));
    }

    @Then("User clicks Send Reminder to {string} link, message template should show.")
    public void userClickSendReminderToLinkMessageTemplateShouldShow(String link) {
        captureScreenshot(driver, testContext, false);
        if(link.toLowerCase().contains("joint owner".toLowerCase())){
            link=link.substring(0,15) + testContext.getMapTestData().get("JointName");
        }
        ArrayList<WebElement> requestLink = new ArrayList<>(onReviewPage.getPendingRequestLinks());
        if (requestLink.size() > 0) {
            for (WebElement element : onReviewPage.getPendingRequestLinks()) {
                if (element.getAttribute("innerText").contains(link)) {
                    clickElement(driver, onReviewPage.getLink_sendReminder());
                }
            }
        } else {
            for (WebElement element : onReviewPage.getPendingRequestLinks_mvc()) {
                if (element.getAttribute("innerText").contains(link)) {
                    element.click();
                }
            }
        }
    }

    @Then("User closes current window")
    public void userClosesCurrentWindow() {
        String originalWindowHandle = driver.getWindowHandle();
        Set<String> allWindowHandles = driver.getWindowHandles();

        // Switch to the latest window (new window)
        for (String windowHandle : allWindowHandles) {
            driver.switchTo().window(windowHandle);
        }

        driver.close();
        driver.switchTo().window(originalWindowHandle);
    }

    @And("User verifies {string} tab is green tick mark")
    public void verifyTabWithGreenTickMark(String tabName) {
        Assert.assertTrue(tabName + " tab is NOT highlighted wit green tick mark", findElement(driver, String.format(onCommonMethodsPage.tabWithGreenTickMark, tabName,tabName)).isDisplayed());
    }

    @And("User verifies {string} tab has green tick mark")
    public void verifyTabHasGreenTickMark(String tabName) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(tabName + " tab is NOT highlighted wit green tick mark", onReviewPage.getImage_ReviewCircle().isDisplayed());
    }

    @And("User verifies {string} current tab")
    public void verifyCurrentTab(String tabName) {
        Assert.assertTrue(tabName + " tab is not current tab", findElement(driver, String.format(onCommonMethodsPage.currentTab, tabName)).isDisplayed());
    }

    @Then("User verifies Audit History")
    public void user_verifies_audi_history(DataTable dataTable)  {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> statusDescriptions = dataTable.asMaps(String.class, String.class);
        int i = 0;
        for (Map<String, String> row : statusDescriptions) {
            String expectedStatus = row.get("Status");
            String expectedDescription = row.get("Status Description");
            Assert.assertEquals("Status should be" + expectedStatus, expectedStatus, onCommonMethodsPage.getAuditDisplayStatus().get(i).getAttribute("innerText"));
            Assert.assertTrue("Description should be" + expectedDescription + " but fund " + onCommonMethodsPage.getAuditDisplayDesc().get(i).getAttribute("aria_label"), onCommonMethodsPage.getAuditDisplayDesc().get(i).getAttribute("aria_label").contains(expectedDescription));
            i++;
        }
        clickElementByJSE(driver,onCommonMethodsPage.getHistoryTabCloseButton());
        captureScreenshot(driver, testContext, false);
    }
    @Then("User verifies Audit History statuses")
    public void user_verifies_audi_history1(DataTable dataTable)  {
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> statusDescriptions = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> row : statusDescriptions) {
            String expectedStatus = row.get("Status");
            String expectedDescription = row.get("Status Description");
            for (WebElement status:   onCommonMethodsPage.getAuditDisplayStatus()) {
                if(status.getText().trim().equalsIgnoreCase(expectedStatus)){
                    Assert.assertTrue("Status should be" + expectedStatus, status.getAttribute("innerText").contains(expectedStatus));
                    WebElement description=driver.findElement(By.xpath("//*[@class=\"auditDisplayStatus\"]/following-sibling::strong[normalize-space()='"+status.getText().trim()+"']/parent::div/following-sibling::div"));
                    if(!expectedDescription.isEmpty())
                        Assert.assertTrue("Description should be " + expectedDescription + " but found " + description.getText().trim(), description.getText().trim().contains(expectedDescription));
                }
            }
        }
        clickElementByJSE(driver, onCommonMethodsPage.getHistoryTabCloseButton());
        clickElementByJSE(driver, onCommonMethodsPage.getTab_HistoryCloseButton());
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies Application Audit History statuses")
    public void user_verifies_Application_Audit_History_statuses(DataTable dataTable)  {
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> statusDescriptions = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> row : statusDescriptions) {
            String expectedStatus = row.get("Status");
            String expectedDescription = row.get("Status Description");
            for (WebElement status:   onCommonMethodsPage.getAuditDisplayStatus()) {
                if(status.getText().trim().equalsIgnoreCase(expectedStatus)){
                    Assert.assertTrue("Status should be" + expectedStatus, status.getAttribute("innerText").contains(expectedStatus));
                    WebElement description=driver.findElement(By.xpath("//*[@class=\"auditDisplayStatus\"]/following-sibling::strong[normalize-space()='"+status.getText().trim()+"']/parent::div/following-sibling::div"));
                    if(!expectedDescription.isEmpty())
                        Assert.assertTrue("Description should be " + expectedDescription + " but found " + description.getText().trim(), description.getText().trim().contains(expectedDescription));
                }
            }
        }
        clickElementByJSE(driver, onCommonMethodsPage.getApplication_HistoryTabCloseButton());
        captureScreenshot(driver, testContext, false);

    }
    @Then("User selects {string} button on Signature Tab")
    public void userClickButtonOnSignatureTab(String buttonName) {
        clickElement(driver, String.format(onCommonMethods_reactPage.alt_Field, buttonName,buttonName));
        waitForPageToLoad(driver);
    }

    @Then("User verifies {string} button should be disabled")
    public void userVerifiesButtonShouldBeDisabled(String buttonName) {
        Assert.assertTrue(buttonName + "button Should be disabled", findElement(driver, String.format(onCommonMethodsPage.ariaLabelInputFields, buttonName)).getAttribute("style").contains("opacity: 0.5"));
    }

    @Then("User verifies menu {string} should not be present")
    public void verifyElementNotPresent(String menuName) {
        // Attempt to find the element using the provided selector
        WebElement element = null;
        try {
            element = findElement(driver, String.format(onCommonMethodsPage.anchorLinks, menuName)); // You can use other locators as well
        } catch (org.openqa.selenium.NoSuchElementException e) {

        }

        Assert.assertNull("Element should not be present but found: " + menuName, element);
    }

    @Then("User verify all documents are downloaded to system with name {string}")
    public void verifyFileDownloaded(String fileName) {
        captureScreenshot(driver, testContext, false);
        Path downloadFilePath = Paths.get(EnumsCommon.ABSOLUTE_DOWNLOADFILES_PATH.getText(), fileName);
        new WebDriverWait(driver, 60).until(d -> downloadFilePath.toFile().exists());
        downloadFilePath.toFile().delete();
    }


    @Then("User clicks red bubble icon")
    public void userClicksRedBubbleIcon() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        onCommonMethodsPage.getRedColorErrorValidationBubble().click();
    }

    @Then("User close the dialog window {string}")
    public void userCloseTheDialogWindow(String windowName) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, findElement(driver, String.format(onCommonMethods_reactPage.btn_dialogWindowClose, windowName)));
    }

    @Then("User clicks Yes button")
    public void userClicksYesButton() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, getElement(driver, getExistingLocator(driver, onReviewPage.getBtn_Ok_ConfPopupMVC(), onReviewPage.getBtn_Ok_ConfPopupReact(), null, null)));
    }

    @Then("User verifies Signature field having text {string} should visible in yellow shade")
    public void userVerifiesSignatureFieldHavingTextOwnerSIGNINGHEREShouldVisibleInYellowShade(String val) {
        scrollToWebElement(driver,onCommonMethodsPage.getSigBox());
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals(val+"is not present",onCommonMethodsPage.getSigBox().getAttribute("value"),val);
        captureScreenshot(driver, testContext, false);
    }
    @Then("User clicks {string} link for {string} document type after uploading documents")
    public void userClicksLinkAfterUploadingDocuments(String linkType, String documentType) {
        captureScreenshot(driver, testContext, false);
        switch (linkType.toLowerCase()) {
            case "view":
                clickElement(driver, String.format(onCommonMethods_reactPage.verifyViewLink,documentType));
                break;
            case "remove":
                if(findElements(driver,String.format(onCommonMethods_reactPage.verifyRemoveLink_MVC,documentType)).size()>0)
                    clickElement(driver,findElement(driver,String.format(onCommonMethods_reactPage.verifyRemoveLink_MVC,documentType)));
                else
                    clickElement(driver, String.format( onCommonMethods_reactPage.verifyRemoveLink,documentType));
                break;
            default:
                Assert.fail("Invalid Link Type after uploading documents in Documents dialog window: " + linkType );
        }
    }

    @Then("User verifies Signature field having having signature")
    public void getSignatureImage() {
        scrollToWebElement(driver,onCommonMethodsPage.getSignatureImage());
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Signature Image is not present",onCommonMethodsPage.getSignatureImage().isDisplayed());
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies Error Message for field")
    public void verifyErrorMessage(DataTable dataTable) {
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        waitForPageToLoad(driver);
        for (Map<String, String> fieldData : formFields) {
            String fieldName = fieldData.get("Field");
            String expectedValue = fieldData.get("Error Message");
            String partialText = fieldData.get("Partial Text");
            String locatorType = fieldData.get("Locator Type");
            String actualValue = null;
            switch (locatorType) {
                case "div":
                    if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                        actualValue = findElement(driver, String.format(onCommonMethodsPage.errorMessage, partialText)).getText().trim();
                        Assert.assertEquals("Expected field " + fieldName + " did not display correct error message", actualValue, expectedValue);
                    } else {
                        actualValue = findElement(driver, String.format(onCommonMethodsPage.errorMessage_React, partialText)).getText().trim();
                        Assert.assertEquals("Expected field " + fieldName + " did not display correct error message", actualValue, expectedValue);
                    }

                    break;
                default:
                    Assert.fail("Invalid Locator Type : " + locatorType );
            }
        }
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies {string} link for {string} document type after uploading documents")
    public void userVerifyLinkAfterUploadingDocuments(String linkType, String documentType) {
        captureScreenshot(driver, testContext, false);
        switch (linkType.toLowerCase()) {
            case "view":
                if(findElements(driver, String.format(onCommonMethods_reactPage.verifyViewLink, documentType)).size()> 0)
                    Assert.assertTrue(linkType + " link is not showing after uploading document for " + documentType, findElement(driver, String.format(onCommonMethods_reactPage.verifyViewLink, documentType)).isDisplayed());
                else
                    Assert.assertTrue(linkType + " link is not showing after uploading document for " + documentType, findElement(driver, String.format(onCommonMethods_reactPage.verifyViewLinkReviewerPage, documentType)).isDisplayed());
                break;
            case "remove":
                if (findElements(driver, String.format(onCommonMethods_reactPage.verifyRemoveLink, documentType)).size() > 0)
                    Assert.assertTrue(linkType + " link is not showing after uploading document for " + documentType, findElement(driver, String.format(onCommonMethods_reactPage.verifyRemoveLink, documentType)).isDisplayed());
                else
                    Assert.assertTrue(linkType + " link is not showing after uploading document for " + documentType, findElement(driver, String.format(onCommonMethods_reactPage.verifyRemoveLinkReviewerPage, documentType)).isDisplayed());
                break;
            default:
                Assert.fail("Invalid Link Type : " + linkType );
        }
    }

    @Then("User verifies Trustee Signature field having having signature")
    public void getTrustySignatureImage() {
        scrollToWebElement(driver,onCommonMethodsPage.getSignatureImage());
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Trustee Signature Image is not present",onCommonMethodsPage.getTrusteeSignImage().isDisplayed());
    }

    @Then("User verifies Turstee agent and owner signature")
    public void verifyAllSin() {
        scrollToWebElement(driver,onCommonMethodsPage.getSignatureImage());
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Trustee Signature Image is not present",onCommonMethodsPage.getSignatureImage().isDisplayed());
        Assert.assertTrue("Owner Signature Image is not present",onCommonMethodsPage.getTrusteeSignImage().isDisplayed());
        Assert.assertTrue("Agent Signature Image is not present",onCommonMethodsPage.getAgentSignImage().isDisplayed());
    }
    @Then("User Clicks on React Send Email Request")
    public void user_Clicks_on_React_Send_Email_Request() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onCommonMethods_reactPage.getBtn_ReactSendEmailRequest());

    }
    @Then("User Clicks on React Generate Link Without Email")
    public void user_Clicks_on_React_Generate_Link_Without_Email() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onCommonMethods_reactPage.getBtn_ReactGenerateLinkWithoutEmail());

    }

    @Then("User Verifies {string} present in PDF")
    public void user_Verifies_present_in_PDF(String text) {
        captureScreenshot(driver, testContext, false);
        String value = testContext.getMapTestData().get(text);
        Assert.assertTrue(text+" is not present in pdf",testContext.getPdfText_global().contains(value));
    }

    @Then("User Verifies {string} is not present in PDF")
    public void user_Verifies_notpresent_in_PDF(String text) {
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse(text+" is not present in pdf", testContext.getPdfText_global().contains(text));
    }

    @Then("User verify generated PDF displays signature")
    public void verifySignPDFGeneratedSSN() throws Exception {
        //TODO : Date does not appear in pdf text
        Assert.assertTrue("Signed Image does not exist in generated PDF", verifySignatureMatchingInPDF(testContext,testContext.getPdfFileName()));
    }
    @Then("User opens page {string} of Form {string}")
    public void openPageofForm(String formName, String formMenu) throws InterruptedException {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver, findElement(driver, onCommonMethods_reactPage.formListOpen), EnumsCommon.TOCLICKABLE.getText());
        findElement(driver, onCommonMethods_reactPage.formListOpen).click();
        sleepInMilliSeconds(4000);
        clickElementByJSE(driver, findElement(driver, String.format(onCommonMethods_reactPage.menuExpand, formMenu)));
    }

    @Then("User Clicks on {string} link for {string} document type")
    public void userClicksOnLink(String linkType, String documentType) {
        captureScreenshot(driver, testContext, false);
        switch (linkType.toLowerCase()) {
            case "view":
                clickElementByJSE(driver,findElement(driver, String.format(onCommonMethods_reactPage.verifyViewLink, documentType)));
                break;
            case "remove":
                clickElementByJSE(driver,findElement(driver, String.format(onCommonMethods_reactPage.verifyRemoveLink, documentType)));
                break;

            default:
                throw new FLException("Invalid Link Type : " + linkType );
        }
    }


    @Then("User opens {string} Application Login Page")
    public void userOpensFirelightApplicationLoginPage(String whichApp) {
        opensFLAppOrAdminLoginPage(driver, testContext, whichApp);
    }

    @Then("User verifies Request statuses and Cancel Agent and press cancel")
    public void user_verifies_result(DataTable dataTable)  {
        captureScreenshot(driver, testContext, false);
        List<String> statuses = dataTable.asList(String.class);
        for (int i = 0; i<statuses.size(); i++) {
            Assert.assertEquals(statuses.get(i) + " was not matched",statuses.get(i),
                    onCommonMethodsPage.getList_status().get(i).getText().trim());
        }
        waitForPageToLoad(driver);
        clickElementByJSE(driver, getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getBtn_CrossRequestMVC(), onCommonMethodsPage.getBtn_CrossRequestReact(), null, null)));
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies Request statuses in All activities")
    public void user_verifies_results(DataTable dataTable) {
        captureScreenshot(driver, testContext, false);
        List<String> statuses = dataTable.asList(String.class);
        for (int i = 0; i < statuses.size(); i++) {
            Assert.assertEquals(statuses.get(i) + " was not matched", statuses.get(i),
                    onCommonMethodsPage.getList_status().get(i).getText().trim());
        }
        clickElementByJSE(driver,getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getBtn_CrossRequestMVC(), onCommonMethodsPage.getBtn_CrossRequestReact(), null, null)));
        captureScreenshot(driver, testContext, false);
    }
    @Then("User clicks Yes button and verifies the {string} is opening in same tab")
    public void user_clicks_Yes_button_and_verifies_the_is_opening_in_same_tab(String url) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, getElement(driver, getExistingLocator(driver, onReviewPage.getBtn_Ok_ConfPopupMVC(), onReviewPage.getBtn_Ok_ConfPopupReact(), null, null)));
        Assert.assertEquals("Url was not matching",testContext.getMapTestData().get("url"), driver.getCurrentUrl());
        driver.navigate().back();
    }


    @Then("User verifies Choose file option and Upload button are disabled")
    public void user_verifies_Choose_file_option_and_Upload_button_are_disabled() {
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("File Upload Drag and Drop is enabled", onCommonMethodsPage.getList_msgFileUpload().size()>0);
        Assert.assertFalse(" Upload button is enabled", onCommonMethodsPage.getBtn_upload().isEnabled());
    }

    @Then("User delete all the cookies from browser")
    public void deleteAllCookies() {
        captureScreenshot(driver, testContext, false);
        driver.manage().deleteAllCookies();
    }

    @Then("User enters new Application name Second Time")
    public void userEntersNewApplicationNameSecondTime() {
        String newAppName = "AT " + testContext.getMapTestData().get("product") + " " + getDate("newAppName");
        onCreateApplicationPage.getTxtBox_newAppName().clear();
        onCreateApplicationPage.getTxtBox_newAppName().sendKeys(newAppName);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.SECONDNEWPRODUCTNAME.getText(), newAppName);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User {string} new tab in browser")
    public void openNewTab(String operation) {
        captureScreenshot(driver, testContext, false);
        ArrayList<String> list_Tabs = null;
        if(operation.equalsIgnoreCase("open")) {
            ((JavascriptExecutor) driver).executeScript("window.open()");
            list_Tabs = new ArrayList<>(driver.getWindowHandles());
            driver.switchTo().window(list_Tabs.get(1));
        }
        else {
            if(list_Tabs.size() > 1) {
                driver.close();
            }
            driver.switchTo().window(list_Tabs.get(0));
        }
    }

    @Then("User verify page title is {string}")
    public void verifyTitlePage(String title) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        Assert.assertTrue("Title of page is not " + title, driver.getTitle().equalsIgnoreCase(title));
    }

    @Then("User clicks on {string}")
    public void user_clicks_on(String btnName) {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, String.format(CommonMethodsPage.btn_SelectFormsOption, btnName));
    }

    @Then("User waits for cache timeout")
    public void user_waits_for_cache_timeout() {
        captureScreenshot(driver, testContext, false);
        int waitTime = Integer.parseInt(testContext.getMapTestData().get("cacheTimeoutMinutes"));
        sleepInMilliSeconds(waitTime*1000);
    }
    @Then("User verifies the following value are selected or not")
    public void user_verifies_the_following_value_are_selected_or_not(DataTable dataTable) {
        List<String> fieldValue = dataTable.asList(String.class);
        for (String inputValue : fieldValue){
            Assert.assertTrue(inputValue+" was not selected",  findElement(driver, String.format(onCommonMethodsPage.checkBoxOptionalForms, inputValue)).getAttribute("aria-checked").contains("true"));
        }
    }

    @Then("User verify {string} button is {string}")
    public void verifyState(String button, String state) {
        captureScreenshot(driver, testContext, false);
        try {
            String disabledValue = findElement(driver, "//button[contains(@class,'button" + button + "')]").getAttribute("disabled");
            Assert.assertTrue(button + " Button is enabled", disabledValue.equalsIgnoreCase("disabled"));
        } catch (Exception e) {
            Assert.assertTrue(button + " Button is disabled", state.equalsIgnoreCase("enabled"));
        }
    }

    @Then("User verifies toast message {string} or {string} on Application Page")
    public void user_verifies_toast_message_or_on_Application_Page(String message1, String message2) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(message1+" or "+message2+":: Toast popup NOT Visible", onCommonMethods_reactPage.getToastPopup_ApplicationPending().getAttribute("innerText").contains(message1)||onCommonMethods_reactPage.getToastPopup_ApplicationPending().getAttribute("innerText").contains(message2));

    }

    @Then("User clicks on lock icon")
    public void user_clicks_on_lock_icon() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onDataEntryPage.getCanvasReadOnlyForm());
    }

    @Then("User verifies Activity Summary Dialog box is displayed")
    public void user_verifies_Activity_Summary_Dialog_box_is_displayed() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Activity Summary Dialog box was not displayed", onDataEntryPage.getDialogBoxActivitySummary().isDisplayed());
    }

    @Then("User Clicks on form {string} Required for Form Menu {string}")
    public void openRequiredFormFromMenu(String formName, String formMenu) {
        waitForPageToLoad(driver);
        clickElementByJSE(driver,getElement(driver,getExistingLocator(driver,By.xpath(String.format(onCreateApplicationPage.getFormName1(),formMenu,formName)),By.xpath(String.format(onCreateApplicationPage.getFormName2(),formMenu,formName)),By.xpath(String.format(onCreateApplicationPage.getFormName3(),formMenu,formName)),null)));

    }

    @Then("User Verifies on form {string} Required for Form Menu {string} is Disabled")
    public void userVerifiesRequiredFormFromMenu(String formName, String formMenu) {
        waitForPageToLoad(driver);
        Assert.assertFalse(formName+" was enabled",getElement(driver,getExistingLocator(driver,By.xpath(String.format(onCreateApplicationPage.getFormName1(),formMenu,formName)),By.xpath(String.format(onCreateApplicationPage.getFormName2(),formMenu,formName)),By.xpath(String.format(onCreateApplicationPage.getFormName3(),formMenu,formName)),By.xpath(String.format(onCreateApplicationPage.getFormName4(),formMenu,formName)))).getAttribute("value").contains("disabled"));
    }

    @Then("User verifies {string} Main Form is displayed")
    public void userVerifiesMainFormIsDisplay(String form) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(form+" form is not displayed",getElement(driver,getExistingLocator(driver,By.xpath(String.format(onCreateApplicationPage.getMainFormName(),form)),null,null,null)).isDisplayed());
    }

    @Then("User verifies toast message {string} in React Page")
    public void userVerifiesTostMessageReact(String message) {
        syncElement(driver, onReviewPage.getAlert_MessageSentReact(), EnumsCommon.TOVISIBLE.getText());
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(message + ":: Toast popup NOT Visible", onReviewPage.getAlert_MessageSentReact().getText().trim().contains(message));
    }

    @Then("User verifies that the menu item {string} is {string}")
    public void verifyMenuItemCondition(String menuItem, String condition) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        // Find the div containing the menu items
        WebElement menuDiv = driver.findElement(By.id("divOtherActions"));
        List<WebElement> menuItems=null;
        // Find all anchor elements within the div
        menuItems = menuDiv.findElements(By.xpath("//*[@id='divOtherActions']//span|//*[@id='divOtherActions']//a"));
        // Check if the menu item is present and disabled
        boolean menuItemPresent = false;
        boolean menuItemDisabled = false;
        for (WebElement item : menuItems) {
            if (item.getText().trim().equalsIgnoreCase(menuItem.trim())) {
                menuItemPresent = true;

                // Check if the menu item is disabled
                if (item.getAttribute("class").contains("disabledMenuLink")) {
                    menuItemDisabled = true;
                }

                break;
            }
        }
        // Check the expected condition
        if (condition.equalsIgnoreCase("present")) {
            Assert.assertTrue("Menu item '" + menuItem + "' should be present, but it is not.", menuItemPresent);
        } else if (condition.equalsIgnoreCase("disabled")) {
            Assert.assertTrue("Menu item '" + menuItem + "' should be disabled, but it is not.", menuItemDisabled);
        } else if (condition.equalsIgnoreCase("not present")) {
            Assert.assertFalse("Menu item '" + menuItem + "' should not be present, but it is.", menuItemPresent);
        } else if (condition.equalsIgnoreCase("enabled")) {
            Assert.assertFalse("Menu item '" + menuItem + "' should not be disabled, but it is.", menuItemDisabled);
        } else {
            throw new FLException("Invalid condition Provided : " + condition);
        }
    }


    @Then("User verifies that the button {string} is {string} for product")
    public void verifyButtonState(String buttonName, String expectedState) {
        captureScreenshot(driver, testContext, false);
        String formName=testContext.getMapTestData().get("newProductName");
        // Locate the form based on the provided formName
        // Locate the form based on the provided formName
        WebElement form = driver.findElement(By.xpath("//span[contains(text(), '" + formName + "')]"));

        // Locate the button within the form
        WebElement button = form.findElement(By.xpath("//a[contains(text(), '" + buttonName + "')]"));

        // Check the expected state
        boolean isButtonPresent = button.isDisplayed();
        boolean isButtonDisabled = button.getAttribute("class").contains("disabledMenuLink");

        if (expectedState.equalsIgnoreCase("present")) {
            Assert.assertTrue("Button '" + buttonName + "' should be present, but it is not.", isButtonPresent);
        } else if (expectedState.equalsIgnoreCase("not present")) {
            Assert.assertFalse("Button '" + buttonName + "' should not be present, but it is.", isButtonPresent);
        } else if (expectedState.equalsIgnoreCase("disabled")) {
            Assert.assertTrue("Button '" + buttonName + "' should be disabled, but it is not.", isButtonDisabled);
        } else if (expectedState.equalsIgnoreCase("not disabled")) {
            Assert.assertFalse("Button '" + buttonName + "' should not be disabled, but it is.", isButtonDisabled);
        } else {
            throw new FLException("Invalid expected button state: " + expectedState);
        }
    }

    @Then("User verifies toast message of {string}")
    public void user_verifies_toast_message_of(String inputValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if(inputValue.contains("finished") & onCommonMethodsPage.getPopUpMessage().getText().trim().contains("pending"))
            driver.navigate().refresh();
        Assert.assertTrue("Message mismatched", onCommonMethodsPage.getPopUpMessage().getText().trim().contains(inputValue));
    }
    @Then("User verifies toast message {string} disappears")
    public void user_verifies_toast_message_disappears(String message) {
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse(message+"Popup was not disappeared",onCommonMethodsPage.getList_popupToastWrapper().size() >0);
        captureScreenshot(driver, testContext, false);
    }
    @Then("User opens {string} Required for Form {string} FormOnly MVC")
    public void user_opens_Required_for_Form_FormOnly_MVC(String formName, String formMenu) throws InterruptedException {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (findElements(driver, onCommonMethods_reactPage.formListOpen).size()>0) {
            syncElement(driver, findElement(driver, onCommonMethods_reactPage.formListOpen), EnumsCommon.TOCLICKABLE.getText());
            findElement(driver, onCommonMethods_reactPage.formListOpen).click();
            syncElement(driver, findElement(driver, onCommonMethods_reactPage.expandAllFormList), EnumsCommon.TOCLICKABLE.getText());
            if(findElement(driver, String.format(onCommonMethods_reactPage.expandMandetoryFormList, formMenu)).getText().equalsIgnoreCase("▼"))
                clickElementByJSE(driver, findElement(driver, String.format(onCommonMethods_reactPage.expandMandetoryFormList, formMenu)));
            Thread.sleep(2000);
            List<WebElement> mandetoryFormList = findElements(driver, String.format(onCommonMethods_reactPage.mandatoryFormListMVCForms, formMenu));
            int i = 0;
            for (WebElement element : mandetoryFormList) {
                String form = element.getAttribute("innerText");
                if (form.contains(formMenu)) {
                    clickElementByJSE(driver, element);
                    break;
                }
            }
        } else {
            onCreateApplicationPage.getWizardPageNameExpand().click();
            List<WebElement> mandetoryFormList = findElements(driver, String.format(onCreateApplicationPage.mandetoryFormList, formMenu));
            int i = 0;
            for (WebElement element : mandetoryFormList) {
                String form = element.getAttribute("innerText");
                if (form.equals(formName)) {
                    element.click();
                    break;
                }
            }
        }
    }

    @Then("User Verifies Total size showing as {string} on the document window")
    public void user_Verifies_Total_size_showing_as_on_the_document_window(String totalSize) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            Assert.assertEquals("The actual total document size did not match expected total", totalSize, onCommonMethodsPage.getTotalSizeValue().getText());
        } else {
            Assert.assertEquals("The actual total document size did not match expected total", totalSize, onCommonMethodsPage.getTotalSizeValueReact().getText());
        }
    }
    @Then("User verifies prefilled data Form input text fields should be blank")
    public void user_verifies_prefilled_data_Form_input_text_fields_should_be_blank(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, onCommonMethodsPage.getTxt_RiskWrapper());
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> fieldData : formFields) {
            String dataItemId = fieldData.get("data-dataitemid");
            String locatorType = fieldData.get("Locator Type");

            switch (locatorType) {
                case "Input":
                    scrollToWebElement(driver, findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)));
                    Assert.assertFalse("The values are not blank ", findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)).getAttribute("value").length() > 0);
                    break;
                case "Select":
                    scrollToWebElement(driver, findElement(driver, String.format(onDataEntryPage.dataFieldsMVC2, dataItemId)));
                    Assert.assertFalse("The values are not blank ", findElement(driver, String.format(onDataEntryPage.dataFieldsMVC2, dataItemId)).getAttribute("value").length() > 0);
                    break;

                case "Textarea":
                    scrollToWebElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.txtAreaInput, dataItemId)));
                    Assert.assertFalse("The values are not blank ", findElement(driver, String.format(onCommonMethods_reactPage.txtAreaInput, dataItemId)).getAttribute("value").length() > 0);
                    break;

                default:

                    throw new FLException("Invalid Locator Type : " + locatorType);
            }
        }
        captureScreenshot(driver, testContext, false);
    }

    @Then("User gets the field value for field")
    public void user_gets_the_field_value_for_field() {
        waitForPageToLoad(driver);
        scrollToWebElement(driver, findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, testContext.getMapTestData().get("orderNumber"))));
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.ORDERNUMBER.getText(), findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, testContext.getMapTestData().get("orderNumber"))).getAttribute("value"));
    }

    @Then("User verifies prefilled data form input text fields")
    public void user_verifies_prefilled_data_form_input_text_fields(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> fieldData : formFields) {
            String dataItemId = fieldData.get("data-dataitemid");

            switch (dataItemId) {
                case "LNRisk_ResultCode":
                    scrollToWebElement(driver, findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)));
                    syncElement(driver, onCommonMethodsPage.getTxt_RiskWrapper(), EnumsCommon.TOVISIBLE.getText());
                    Assert.assertTrue("The values are not filled ", findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)).getAttribute("value").length() > 0);
                    Assert.assertTrue(dataItemId + ": Actual and Expected values are different", findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)).getAttribute("value").equalsIgnoreCase(testContext.getMapTestData().get("riskResultCode")));
                    break;

                case "LNRisk_Score":
                    scrollToWebElement(driver, findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)));
                    syncElement(driver, onCommonMethodsPage.getTxt_RiskWrapper(), EnumsCommon.TOVISIBLE.getText());
                    Assert.assertTrue("The values are not filled ", findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)).getAttribute("value").length() > 0);
                    Assert.assertEquals(dataItemId + ": Actual and Expected values are different", findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)).getAttribute("value"), (testContext.getMapTestData().get("riskScore")));
                    break;

                case "LNRisk_ResultMessage":
                    scrollToWebElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.preFilledFormInput, dataItemId)));
                    syncElement(driver, onCommonMethodsPage.getTxt_RiskWrapper(), EnumsCommon.TOVISIBLE.getText());
                    Assert.assertTrue("The values are not filled ", findElement(driver, String.format(onCommonMethods_reactPage.preFilledFormInput, dataItemId)).getAttribute("value").length() > 0);
                    break;

                case "LN_OrderNumber":
                    scrollToWebElement(driver, findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)));
                    syncElement(driver, onCommonMethodsPage.getTxt_RiskWrapper(), EnumsCommon.TOVISIBLE.getText());
                    Assert.assertTrue("The values are not filled ", findElement(driver, String.format(onDataEntryPage.dataFieldsMVC, dataItemId)).getAttribute("value").length() > 0);
                    break;
            }
        }
    }


    @Then("User Verifies Total size is not displaying any value")
    public void user_Verifies_Total_size_is_not_displaying_any_value() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("The actual total size was showing some value", "", onCommonMethodsPage.getTotalSizeValue().getText());
    }

    @Then("User Verifies Total size showing as {string} on the reviewer document window")
    public void user_Verifies_Total_size_showing_as_on_the_reviewer_document_window(String totalSize) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            Assert.assertEquals("The actual total document size did not match expected total", totalSize, onCommonMethodsPage.getTotalSizeValueReact().getText());
        } else {
            Assert.assertEquals("The actual total document size did not match expected total", totalSize, onCommonMethodsPage.getTotalSizeValue().getText());
        }
    }

    @Then("User enters new Activity name as {string}")
    public void userEntersNewActivityNameAs(String activityName) {
        onCreateApplicationPage.getTxtBox_newAppName().clear();
        onCreateApplicationPage.getTxtBox_newAppName().sendKeys(activityName);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.NEWACTIVITYNAME.getText(),activityName);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User clicks on {string} link of data entry met Toast popup_Updated")
    public void userClicksOnLinkOfDataEntryMetToastPopup_Updated(String whichLink) {
        driver.navigate().refresh();
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (findElements(driver, String.format(onCommonMethods_reactPage.link_toastPopUp, whichLink)).size() > 0) {
            clickElement(driver, findElement(driver, String.format(onCommonMethods_reactPage.link_toastPopUp, whichLink)));
        } else {
            if (whichLink.equalsIgnoreCase("Continue"))
                clickElement(driver, getElement(driver, getExistingLocator(driver, onDataEntryPage.getLink_DataEntryPopupContinueMVC(), onDataEntryPage.getLink_DataEntryPopupContinueReact(), null, null)));
            else
                clickElement(driver, onDataEntryPage.getLink_DataEntryPopupMoreData_New());
        }
    }
    @Then("User clicks on Advanced Search button")
    public void userClicksOnAdvancedSearchButton() {
        captureScreenshot(driver, testContext, false);
        onCreateApplicationPage.getBtn_AdvancedSearch().click();
    }

    @Then("User clicks on page1 form of Fees and Expense Disclosure Sample")
    public void user_clicks_on_page_form_of() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onCommonMethodsPage.getOption_feesAndExpense());
    }

    @Then("User Refresh the Page")
    public void user_Refresh_the_page() {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        driver.navigate().refresh();
    }
    @Then("User Verifies Default option is {string} for User Dropdown on Advance Search dialog box")
    public void user_Verifies_Default_option_is_for_User_Dropdown(String expOption) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getDd_User()).getFirstSelectedOption().getText().trim()+" in place of :"+expOption,
                expOption,new Select( onCreateApplicationPage.getDd_User()).getFirstSelectedOption().getText().trim());
    }

    @Then("User Verifies Default option is {string} for radio button on Advance Search dialog box")
    public void userVerifiesDefaultOptionIsForRadioButtonOnAdvanceSearchDialogBox(String btnRadio) {
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver,  findElement(driver, "//input[@id='" + btnRadio + "']"));
        waitForPageToLoad(driver);
        Assert.assertTrue("Month radio button is not checked", findElement(driver, "//input[@id='" + btnRadio + "']").getAttribute("checked").contains("true"));
    }

    @Then("User Verifies Default option is {string} for Activity Type dropdown on Advance Search dialog box")
    public void userVerifiesDefaultOptionIsForActivityTypeDropdownOnAdvanceSearchDialogBox(String activityType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getDd_ActivityType()).getFirstSelectedOption().getText().trim()+" in place of :"+activityType,
                activityType,new Select( onCreateApplicationPage.getDd_ActivityType()).getFirstSelectedOption().getText().trim());
    }

    @Then("User Verifies Default option is {string} for Product Type dropdown on Advance Search dialog box")
    public void userVerifiesDefaultOptionIsForProductTypeDropdownOnAdvanceSearchDialogBox(String productType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getDd_ProductTypeFilter()).getFirstSelectedOption().getText().trim()+" in place of :"+productType,
                productType,new Select( onCreateApplicationPage.getDd_ProductTypeFilter()).getFirstSelectedOption().getText().trim());
    }

    @Then("User Verifies Default option is {string} for Status dropdown on Advance Search dialog box")
    public void userVerifiesDefaultOptionIsForStatusDropdownOnAdvanceSearchDialogBox(String status) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getDd_Status()).getFirstSelectedOption().getText().trim()+" in place of :"+status,
                status,new Select( onCreateApplicationPage.getDd_Status()).getFirstSelectedOption().getText().trim());
    }

    @Then("User Verifies Default option is {string} for Sort dropdown on Advance Search dialog box")
    public void userVerifiesDefaultOptionIsForLastUpdateDropdownOnAdvanceSearchDialogBox(String LastUpdate) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getDd_Sort()).getFirstSelectedOption().getText().trim()+" in place of :"+LastUpdate,
                LastUpdate,new Select( onCreateApplicationPage.getDd_Sort()).getFirstSelectedOption().getText().trim());
    }

    @Then("User Verifies Default option is {string} for Signature Type dropdown on Advance Search dialog box")
    public void userVerifiesDefaultOptionIsForLastSignatureTypeDropdownOnAdvanceSearchDialogBox(String signType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if(findElements(driver, String.format(onCreateApplicationPage.txt_AllInputField, testContext.getMapTestData().get("signaturetypeId"))).size()>0) {
            Assert.assertEquals("Found :" + new Select(onCreateApplicationPage.getDdown_signatureType()).getFirstSelectedOption().getText().trim() + " in place of :" + signType,
                    signType, new Select(onCreateApplicationPage.getDdown_signatureType()).getFirstSelectedOption().getText().trim());
        }
        else {
            Assert.assertEquals("Found :" + new Select(onCreateApplicationPage.getDd_SignatureType()).getFirstSelectedOption().getText().trim() + " in place of :" + signType,
                    signType, new Select(onCreateApplicationPage.getDd_SignatureType()).getFirstSelectedOption().getText().trim());
        }
    }

    @Then("User verifies Activity Name, Tele-Sign Application ID, Issue State, Policy Number, Product Name, Begin Date, End Date are blank")
    public void userVerifiesActivityNameTeleSignApplicationIDIssueStatePolicyNumberProductNameBeginDateEndDateAreBlank() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Activity Name Textbox is not Blank", findElements(driver, String.format(onCreateApplicationPage.txt_AllInputField, testContext.getMapTestData().get("activityName"))).size()>0);
        Assert.assertTrue("Activity Name Textbox is not Blank", findElements(driver, String.format(onCreateApplicationPage.txt_AllInputField, testContext.getMapTestData().get("teleSignApplicationID"))).size()>0);
        Assert.assertTrue("Activity Name Textbox is not Blank", findElements(driver, String.format(onCreateApplicationPage.txt_AllInputField, testContext.getMapTestData().get("issueState"))).size()>0);
        Assert.assertTrue("Activity Name Textbox is not Blank", findElements(driver, String.format(onCreateApplicationPage.txt_AllInputField, testContext.getMapTestData().get("policyNumber"))).size()>0);
        Assert.assertTrue("Activity Name Textbox is not Blank", findElements(driver, String.format(onCreateApplicationPage.txt_AllInputField, testContext.getMapTestData().get("productName"))).size()>0);
        Assert.assertTrue("Activity Name Textbox is not Blank", findElements(driver, String.format(onCreateApplicationPage.txt_AllInputField, testContext.getMapTestData().get("beginDate"))).size()>0);
        Assert.assertTrue("Activity Name Textbox is not Blank", findElements(driver, String.format(onCreateApplicationPage.txt_AllInputField, testContext.getMapTestData().get("endDate"))).size()>0);
    }

    @Then("User select {string} in the User dropdown")
    public void userSelectInTheUserDropdown(String userType) {
        waitUntilDropDownListPopulated(driver, new Select(onCreateApplicationPage.getDd_User()));
        captureScreenshot(driver, testContext, false);
        new Select(onCreateApplicationPage.getDd_User()).selectByVisibleText(userType);
    }


    @Then("User verifies the below are display in Product type dropdown")
    public void userVerifiesTheBelowAreDisplayInProductTypeDropdown(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<String> fields = dataTable.asList(String.class);
        boolean flag = false;
        for (WebElement dropOption : onCreateApplicationPage.getDd_ProductTypeValue()) {
            for (String singlefield : fields) {
                if (dropOption.getText().contains(singlefield)) {
                    flag = true;
                }
            }
        }
        Assert.assertTrue("Search criteria is not visible", flag);
    }

    @Then("user verifies {string} are displayed")
    public void userVerifiesAreDisplayed(String fieldType) {
        switch (fieldType) {
            case "checkboxes":
                if (findElements(driver, String.format(onCommonMethods_reactPage.ariaLabelInputFields, testContext.getMapTestData().get("reviewQueuePage"),testContext.getMapTestData().get("reviewQueuePage"))).size()>0) {
                    String[] expected = {"Week", "Month", "Quarter", "YTD", "OneYear", "TwoYears", "All"};
                    List<WebElement> allOptions = onCreateApplicationPage.getDd_ReviewProductType();
                    for (int i = 0; i < expected.length; i++) {
                        boolean flag = false;
                        String optionValue = allOptions.get(i).getAttribute("id");
                        if (optionValue.equalsIgnoreCase(expected[i])) {
                            flag = true;
                        }
                        Assert.assertTrue("Search criteria is not displayed", flag);
                    }
                } else {
                    String[] expected1 = {"Week", "Month", "Quarter", "YTD", "All"};
                    List<WebElement> allOptions = onCreateApplicationPage.getDd_PrdctType();
                    for (int i = 0; i < expected1.length; i++) {
                        boolean flag = false;
                        String optionValue = allOptions.get(i).getAttribute("id");
                        if (optionValue.equalsIgnoreCase(expected1[i])) {
                            flag = true;
                        }
                        Assert.assertTrue("Search criteria is not displayed", flag);
                    }
                }
                break;
            case "dropDowns":
                String[] expectedDropDown = {"userId", "locale", "activityType", "productTypeFilter", "stType", "sortBy", "signTypes"};
                List<WebElement> allDropDowns = onCreateApplicationPage.getList_dropDown();
                for (int i = 0; i < expectedDropDown.length; i++) {
                    boolean flag = false;
                    String options = allDropDowns.get(i).getAttribute("id");
                    if (options.equalsIgnoreCase(expectedDropDown[i])) {
                        flag = true;
                    }
                    Assert.assertTrue("Search criteria is not displayed", flag);
                }
                break;
            default:
                throw new FLException("Invalid Field Type: " + fieldType);
        }
    }


    @Then("User verifies User and Activity type search criteria is present on Advanced Search dialog box")
    public void userVerifiesUserSearchCriteriaIsPresentOnAdvancedSearchDialogBox() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("User is not displayed",onCreateApplicationPage.getTxt_User().isDisplayed());
        Assert.assertTrue("Activity type is not displayed",onCreateApplicationPage.getTxt_ActivityType().isDisplayed());
    }

    @Then("User verifies Begin Date and End Date search criteria is present on Advanced Search dialog box")
    public void userVerifiesBeginDateAndEndDateSearchCriteriaIsPresentOnAdvancedSearchDialogBox() {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        scrollToWebElement(driver, onCreateApplicationPage.getTxt_BeginDate());
        Assert.assertTrue("Begin date is not displayed", onCreateApplicationPage.getTxt_BeginDate().isDisplayed());
        Assert.assertTrue("End date is not displayed", onCreateApplicationPage.getTxt_EndDate().isDisplayed());
    }

    @Then("User verifies Sort, Signature Type, Activity Name,Issue State, Policy number and Policy Name are displayed")
    public void userVerifiesSortSignatureTypeActivityNameIssueStatePolicyNumberAndPolicyNameAreDisplayed() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("sort is not displayed",onCreateApplicationPage.getTxt_Sort().isDisplayed());
        Assert.assertTrue("Signature type is not displayed",onCreateApplicationPage.getTxt_SignType().isDisplayed());
        Assert.assertTrue("Policy number  is not displayed",onCreateApplicationPage.getTxt_PolicyNumber().isDisplayed());
        Assert.assertTrue("Issue state is not displayed",onCreateApplicationPage.getTxt_IssueState().isDisplayed());
        Assert.assertTrue("Policy name is not displayed",onCreateApplicationPage.getTxt_PolicyName().isDisplayed());
        Assert.assertTrue("Activity name is not displayed",onCreateApplicationPage.getTxt_ActivityName().isDisplayed());
    }

    @Then("User enters new {string} name first time")
    public void user_enters_new_name(String activityType) {
        captureScreenshot(driver, testContext, false);
        switch (activityType) {
            case "Illustration":
                onCommonMethodsPage.getTxt_activityTypeName().sendKeys(testContext.getMapTestData().get("newProductName"));
                addPropertyValueInJSON(testContext.getTestCaseID(), testContext, "newIllustrationName", EnumsJSONProp.NEWPRODUCTNAME.getText());
                captureScreenshot(driver, testContext, false);
                break;

            default:
                throw new FLException("Invalid Activity Type: " + activityType);
        }
    }

    @Then("User verifies Week, Month, Quarter, YTD, All, Search, advance search, export, User, Activity Type, Status and Sort are displayed")
    public void userVerifiesTheWeekMonthQuarterYTDAllSearchAdvanceSearchExportUserStatusIsDisplayed() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Week is not displayed",onCreateApplicationPage.getTxt_Week().isDisplayed());
        Assert.assertTrue("Month type is not displayed",onCreateApplicationPage.getTxt_Month().isDisplayed());
        Assert.assertTrue("Quarter  is not displayed",onCreateApplicationPage.getTxt_Quarter().isDisplayed());
        Assert.assertTrue("Ytd is not displayed",onCreateApplicationPage.getTxt_YTD().isDisplayed());
        Assert.assertTrue("All is not displayed",onCreateApplicationPage.getTxt_All().isDisplayed());
        Assert.assertTrue("Search name is not displayed",onCreateApplicationPage.getTxt_SearchString().isDisplayed());
        Assert.assertTrue("Advance Search is not displayed",onCreateApplicationPage.getSelect_AdvanceSearch().isDisplayed());
        Assert.assertTrue("Export is not displayed",onCreateApplicationPage.getTxt_Export().isDisplayed());
        Assert.assertTrue("User is not displayed",onCreateApplicationPage.getSelect_UserSelect().isDisplayed());
        Assert.assertTrue("Activity Type is not displayed",onCreateApplicationPage.getSelect_ActivityType().isDisplayed());
        Assert.assertTrue("Status is not displayed",onCreateApplicationPage.getSelect_Status().isDisplayed());
        Assert.assertTrue("Sort is not displayed",onCreateApplicationPage.getSelect_Sort().isDisplayed());
    }

    @Then("User Verify Default option is {string} for User Dropdown")
    public void user_Verify_Default_option_is_for_User_Dropdown(String exOption) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getSelect_UserSelect()).getFirstSelectedOption().getText().trim()+" in place of :"+exOption,
                exOption,new Select( onCreateApplicationPage.getSelect_UserSelect()).getFirstSelectedOption().getText().trim());
    }

    @Then("User Verifies Default option is {string} for Activity Type dropdown")
    public void userVerifyDefaultOptionIsForActivityTypeDropdown(String onActivityType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getSelect_ActivityType()).getFirstSelectedOption().getText().trim()+" in place of :"+onActivityType,
                onActivityType,new Select( onCreateApplicationPage.getSelect_ActivityType()).getFirstSelectedOption().getText().trim());
    }

    @Then("User Verifies Default option is {string} for Status dropdown")
    public void userVerifyDefaultOptionIsForStatusDropdown(String onStatus) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getSelect_Status()).getFirstSelectedOption().getText().trim()+" in place of :"+onStatus,
                onStatus,new Select( onCreateApplicationPage.getSelect_Status()).getFirstSelectedOption().getText().trim());
    }

    @Then("User Verifies Default option is {string} for Sort dropdown")
    public void userVerifyDefaultOptionIsForLastUpdateDropdown(String LastUpdate) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :" +new Select( onCreateApplicationPage.getSelect_Sort()).getFirstSelectedOption().getText().trim()+" in place of :"+LastUpdate,
                LastUpdate,new Select( onCreateApplicationPage.getSelect_Sort()).getFirstSelectedOption().getText().trim());
    }

    @Then("User clicks on page2 form of All Activities")
    public void user_clicks_on_page_form_of_All_Activities() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onCreateApplicationPage.getTxt_PageLinks());
    }

    @Then("User clicks on last page form of All Activities")
    public void user_clicks_on_lastpage_form_of_All_Activities() {
        waitForPageToLoad(driver);
        scrollToWebElement(driver,onCreateApplicationPage.getLastPage());
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onCreateApplicationPage.getLastPage());
    }

    @Then("User verifies if the elements are in ascending order for Activity sort")
    public void userVerifiesifLastUpdateTheElementsAreInAscendingOrder() {
        captureScreenshot(driver, testContext, false);
        List<String> expectedOptions = new ArrayList<>();
        List<String> actualOptions = new ArrayList<>();
        for (WebElement option : onDataEntryPage.getList_allActivitiesResult() ) {
            expectedOptions.add(option.getText().trim().toLowerCase());
            actualOptions.add(option.getText().trim().toLowerCase());
        }
        Collections.sort(expectedOptions);
        Assert.assertTrue( " : Elements are not in ascending order, Expected: "+expectedOptions, expectedOptions.equals(actualOptions));
    }

    @Then("User verifies if the elements are in ascending order for Product sort")
    public void userVerifiesifLastUpdateTheElementsAreInAscendingOrderProduct() {
        captureScreenshot(driver, testContext, false);
        List<String> expectedOptions = new ArrayList<>();
        List<String> actualOptions = new ArrayList<>();
        for (WebElement option : onCreateApplicationPage.getList_Sort() ) {
            expectedOptions.add(option.getText().trim().toLowerCase());
            actualOptions.add(option.getText().trim().toLowerCase());
        }
        Collections.sort(expectedOptions);
        Assert.assertTrue(" : Elements are not in ascending order, Expected: "+expectedOptions, expectedOptions.equals(actualOptions));
    }

    @Then("User verifies if the  elements are in descending order")
    public void userVerifiesifLastUpdateTheElementsAreInDescendingOrder() {
        captureScreenshot(driver, testContext, false);
        List<String> expectedOptions = new ArrayList<>();
        List<String> actualOptions = new ArrayList<>();
        for (WebElement option : onCreateApplicationPage.getList_CreationDate() ) {
            expectedOptions.add(option.getText().trim());
            actualOptions.add(option.getText().trim());
        }
        expectedOptions.sort(Comparator.reverseOrder());
        Assert.assertTrue(" : Elements are not in ascending order, Expected: "+expectedOptions, expectedOptions.equals(actualOptions));

    }

    @Then("User verifies if the elements are in ascending order by owner")
    public void userVerifiesifLastUpdateTheElementsAreInAscendingOrderbyowner() {
        captureScreenshot(driver, testContext, false);
        List<String> expectedOptions = new ArrayList<>();
        List<String> actualOptions = new ArrayList<>();
        for (WebElement option : onCreateApplicationPage.getList_OwnerName() ) {
            expectedOptions.add(option.getText().trim());
            actualOptions.add(option.getText().trim());
        }
        Collections.sort(expectedOptions);
        Assert.assertTrue(" : Elements are not in ascending order, Expected: "+expectedOptions, expectedOptions.equals(actualOptions));


    }

    @Then("User verifies prefilled data for GIACT form")
    public void user_verifies_prefilled_data_for_GIACT_form(DataTable dataTable) {
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> fieldData : formFields) {
            String fieldName = fieldData.get("Field");
            String inputValue = fieldData.get("Value");
            String dataItemId = fieldData.get("data-dataitemid");
            String locatorType = fieldData.get("Locator Type");
            switch (locatorType) {
                case "Input":
                    waitForPageToLoad(driver);
                    Assert.assertEquals("Values are mismatched", inputValue, findElement(driver, String.format(onCommonMethods_reactPage.dataEntryTextFields, fieldName, dataItemId, dataItemId)).getAttribute("value"));
                    break;
                default:
                    throw new FLException("Invalid Locator Type : " + locatorType);
            }
        }
    }

    @Then("User verifies Menu container size is adjustable as per the length of menu")
    public void user_verifies_Menu_container_size_is_adjustable_as_per_the_length_of_menu() {
        int currentLength;
        int increasedLength;
        int increasedContainerSize;
        int currentContainerSize;

        for (WebElement menuOption : onCommonMethodsPage.getList_expandForm()) {
            if (menuOption.getText().equalsIgnoreCase(testContext.getMapTestData().get("menuOption"))) {
                currentLength = menuOption.getText().length();
                currentContainerSize = onCommonMethodsPage.getMenuContainer().getSize().getHeight();
                ((JavascriptExecutor) driver).executeScript("arguments[0].innerText = '" + testContext.getMapTestData().get("updatedMenuOption") + "'", menuOption);
                increasedLength = menuOption.getText().length();
                increasedContainerSize = onCommonMethodsPage.getMenuContainer().getSize().getHeight();
                Assert.assertTrue("Form Name Length remained same", increasedLength > currentLength);
                Assert.assertTrue("Menu Size remained same", increasedContainerSize > currentContainerSize);
            }
        }
    }

    @Then("User verifies the form name showing in expand menu")
    public void user_verifies_the_form_name_showing_in_expand_menu() {
        boolean flag = false;
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_REACT.getText())) {
            for (WebElement menuOptionReact : onExternalLoginPage.getList_ExpandForm()) {
                if (menuOptionReact.getText().contains(testContext.getMapTestData().get("menuOption"))) {
                    flag = true;
                    break;
                }
            }
        } else {
            for (WebElement menuOption : onCommonMethodsPage.getList_expandForm()) {
                if (menuOption.getText().contains(testContext.getMapTestData().get("menuOption"))) {
                    flag = true;
                    break;
                }
            }
        }
        Assert.assertTrue("Menu Option Name is not Matching", flag);
    }
    @Then("User verifies form name is truncated")
    public void user_verifies_form_name_is_truncated() {
        captureScreenshot(driver, testContext, false);
        Boolean flag = false;
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_REACT.getText())) {
        for (WebElement menuOption : onExternalLoginPage.getList_ExpandForm()) {
            if (menuOption.getText().contains(testContext.getMapTestData().get("menuOption"))) {
                if (menuOption.getCssValue("text-overflow").equalsIgnoreCase("ellipsis")) {
                    flag = true;
                    break;
                }
            }
        }
        } else {
            for (WebElement menuOption : onCommonMethodsPage.getList_expandForm()) {
                if (menuOption.getText().contains(testContext.getMapTestData().get("menuOption"))) {
                    if (menuOption.getCssValue("text-overflow").equalsIgnoreCase("ellipsis")) {
                        flag = true;
                        break;
                    }
                }
            }
        }
        Assert.assertTrue("Form Name is not truncated", flag);
    }

    @Then("User verifies Audit History status")
    public void user_verifies_audit_history(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> statusDescriptions = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> row : statusDescriptions) {
            String expectedStatus = row.get("Status");
            String expectedDescription = row.get("Status Description");
            for (WebElement status : onCommonMethodsPage.getAuditDisplayStatus()) {
                syncElement(driver, status, EnumsCommon.TOVISIBLE.getText());
                if (status.getText().trim().equalsIgnoreCase(expectedStatus)) {
                    Assert.assertTrue("Status should be" + expectedStatus, status.getAttribute("innerText").contains(expectedStatus));
                    WebElement description = driver.findElement(By.xpath("//*[@class=\"auditDisplayStatus\"]/following-sibling::strong[normalize-space()='" + status.getText().trim() + "']/parent::div/following-sibling::div"));
                    if (!expectedDescription.isEmpty()) {
                        if (!description.getText().trim().contains(expectedDescription)) {
                            Assert.assertTrue("Description should be " + expectedDescription + " but found " + description.getText().trim(), description.getText().trim().replaceAll("[^\\x00-\\x7F]", "").contains(expectedDescription));
                        } else {
                            Assert.assertTrue("Description should be " + expectedDescription + " but found " + description.getText().trim(), description.getText().trim().contains(expectedDescription));
                        }
                    }
                }
            }
        }
    }

    @Then("user verifies {string} are visible")
    public void userVerifiesAreVisible(String fieldType) {
        switch (fieldType) {
            case "dropDowns":
                String[] expectedDropDown = {"userId", "activityType", "productTypeFilter", "statusType", "sortBy", "signTypes"};
                List<WebElement> allDropDowns = onCreateApplicationPage.getList_ReviewDropDown();
                for (int i = 0; i < expectedDropDown.length; i++) {
                    boolean flagship = false;
                    String options = allDropDowns.get(i).getAttribute("id");
                    if (options.equalsIgnoreCase(expectedDropDown[i])) {
                        flagship = true;
                    }
                    Assert.assertTrue("Search criteria is not displayed", flagship);
                }
                break;
            default:
                throw new FLException("Invalid Field Type: " + fieldType);
        }
    }

    @Then("User select {string} button on Signature Tab")
    public void userSelectButtonOnSignatureTab(String buttonName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, String.format(onCommonMethods_reactPage.getBtn_DocSign(), buttonName));
    }

    @Then("User verifies pdf text not present in Pdf For AuditReport")
    public void userVerifiesPdfTextForAuditReport( DataTable dataTable) {

            List<String> data = dataTable.asList(String.class);
            for (String fieldValue : data) {
                if(fieldValue.contains("Application Name")) {
                    Assert.assertFalse("Application is present in pdf", testContext.getPdfText_global().contains(testContext.getMapTestData().get("newProductName")));
                }
                Assert.assertFalse(fieldValue+" is present in pdf",testContext.getPdfText_global().contains(fieldValue));
            }
    }

    @Then("User Verifies Optional Form {string}")
    public void userVerifiessOptionalForm(String formName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Optional Form Not found",findElement(driver,String.format(onCommonMethodsPage.getText_OptionalForms(),formName)).isDisplayed());
    }

    @Then("User Verifies Optional Form {string} not showing")
    public void userVerifiessOptionalFormNotShowing(String formName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        for (WebElement form : onCommonMethodsPage.getList_forms()) {
            if (form.getText().trim().equalsIgnoreCase(formName)) {
                Assert.assertFalse("Optional Form found", true);
            }
        }
    }

    @Then("User Verifies {string} is not Read Only")
    public void user_Verifies_is_not_Read_Only(String fieldName) {
        captureScreenshot(driver, testContext, false);
        boolean flag = true ;
        try{
            onCommonMethodsPage.findElement(driver,String.format(onCommonMethodsPage.ariaLabelInputFields,fieldName)).sendKeys("editable");
        }
        catch (Exception e){
            flag= false;
        }
        if (onCommonMethodsPage.findElement(driver,String.format(onCommonMethodsPage.ariaLabelInputFields,fieldName)).getAttribute("value").equalsIgnoreCase("editable"))
            flag =false;

        Assert.assertFalse(fieldName +" is not Readonly", flag );
    }

    @Then("User Verifies {string} is Read Only")
    public void user_Verifies_is_not_Only(String fieldName) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(fieldName +" is not Readonly", onCommonMethodsPage.findElement(driver,String.format(onCommonMethodsPage.ariaLabelInputFields,fieldName)).getAttribute("readonly").equalsIgnoreCase("true") || onCommonMethodsPage.findElement(driver,String.format(onCommonMethodsPage.ariaLabelInputFields,fieldName)).getAttribute("readonly").equalsIgnoreCase("readonly") );
    }

    @Then("User verifies {string} is enabled")
    public void user_verifies_is_enabled(String field) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(field+"was not enabled", findElement(driver, String.format(onCommonMethods_reactPage.formCheckBox, field,field)).getAttribute("class").contains("Enabled"));
    }

    @Then("User verifies dialog window {string} Closed")
    public void userVerifiesDialogWindowClosed(String windowName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if(getElements(driver, onCommonMethodsPage.getDialog_WindowNameMVC()).size()>0)
        Assert.assertFalse(windowName + " is open", getElements(driver, onCommonMethodsPage.getDialog_WindowNameMVC()).get(0).getText().equals(windowName));
    }
    @Then("User clicks on close history dialog box")
    public void userclicksonCloseHistorydialogbox() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onCommonMethodsPage.getHistoryTabCloseButton());
    }
    @Then("User verify remove link does not appear for documents")
    public void user_verify_link_does_not_appear_for_all_uploaded_documents() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("Remove Link is displayed and it should not display", onDataEntryPage.getList_RemoveLink().size() > 0);
    }


    @Then("User verifies toast message as {string}")
    public void user_verifies_toast_message_as(String message) {
        captureScreenshot(driver, testContext, false);
        driver.navigate().refresh();
        ((JavascriptExecutor) driver).executeScript("debugger;");
        WebElement element = getElement(driver, getExistingLocator(driver, onCommonMethodsPage.getPopup_ToastMVC(), onCommonMethodsPage.getPopup_ToastReact(), null, null));
        syncElement(driver, element, EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Toast popup was not Visible- "+message, element.getAttribute("innerText").contains(message));
    }

    @Then("User {string} required options from dropdown {string}")
    public void user_Required_Options_From_DropDown(String btnName, String fieldName) {
        captureScreenshot(driver, testContext, false);
        Select dropDown = new Select(findElement(driver, String.format(onCommonMethodsPage.dd_Mask, fieldName)));
        syncElement(driver, onOrganizationPage.getDd_Masks(), EnumsCommon.TOCLICKABLE.getText());
        if (findElements(driver, String.format(onCommonMethodsPage.options_MaskingDropDown, fieldName)).size() > 0) {
            for (int i = 0; i < dropDown.getOptions().size(); i++) {
                waitForPageToLoad(driver);
                try {
                    dropDown.selectByIndex(i);
                } catch (StaleElementReferenceException | NoSuchElementException e) {
                    dropDown = new Select(findElement(driver, String.format(onCommonMethodsPage.dd_Mask, fieldName)));
                    syncElement(driver, dropDown.getWrappedElement(), EnumsCommon.TOCLICKABLE.getText());
                    if (i < dropDown.getOptions().size()) {
                        dropDown.selectByIndex(i);
                    } else {
                        break;
                    }
                }
                sleepInMilliSeconds(500);
                if (dropDown.getFirstSelectedOption().getText().contains("_OP")) {
                    clickElement(driver, findElement(driver, String.format(onAdminActvityPage.listActivityNames, btnName)));
                    clickElement(driver, onOrganizationPage.getBtn_Confirm());
                    clickElement(driver, onOrganizationPage.getBtn_SaveOrganisation());
                    i--;
                }
            }
        } else {
            Assert.assertTrue("Option is present", findElements(driver, String.format(onCommonMethodsPage.options_MaskingDropDown, fieldName)).size() == 0);
        }
    }

    @Then("User verifies {string} is the selected option from text mask dropdown")
    public void user_verifies_is_the_selected_option_from_text_mask_dropdown(String ddValue) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Required option is not selected", new Select(onOrganizationPage.getDd_TextMasks()).getFirstSelectedOption().getText().equalsIgnoreCase(ddValue));
    }

    @Then("User selects radio button {string} for {string} data entry")
    public void user_selects_radio_button_for_data_entry(String buttonName, String titleName) {
        clickElement(driver, String.format(onCommonMethodsPage.radioButton1, titleName, buttonName));
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies total number of AIO row grids as {int}")
    public void user_verifies_total_number_of_AIO_row_grids_as(int expectedTotal) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Expected total number of AIO row grids did not match as " + expectedTotal, onCommonMethodsPage.getList_TotalAIOGrid().size(), expectedTotal);
    }

    @Then("User verifies total number of subcategory of {string} as {int}")
    public void user_verifies_total_number_of_subcategory_of_as(String subCategory, int subTotal) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (subCategory) {
            case "Allocation":
                Assert.assertEquals("Expected number of " + subCategory + " did not match as " + subTotal, onCommonMethodsPage.getList_Allocation().size(), subTotal);
                break;
            case "U.S. Equity":
                Assert.assertEquals("Expected number of " + subCategory + " did not match as " + subTotal, onCommonMethodsPage.getList_USEquity().size(), subTotal);
                break;
            case "International/Global Equity":
                Assert.assertEquals("Expected number of " + subCategory + " did not match as " + subTotal, onCommonMethodsPage.getList_IntlGlobalEquity().size(), subTotal);
                break;
            case "Fixed Income":
                Assert.assertEquals("Expected number of " + subCategory + " did not match as " + subTotal, onCommonMethodsPage.getList_FixedIncome().size(), subTotal);
                break;
            case "Sector Equity":
                Assert.assertEquals("Expected number of " + subCategory + " did not match as " + subTotal, onCommonMethodsPage.getList_SectorEquity().size(), subTotal);
                break;
            case "Alternative":
                Assert.assertEquals("Expected number of " + subCategory + " did not match as " + subTotal, onCommonMethodsPage.getList_Alternative().size(), subTotal);
                break;
            case "Fixed Account Options":
                Assert.assertEquals("Expected number of " + subCategory + " did not match as " + subTotal, onCommonMethodsPage.getList_FixedAccountOptions().size(), subTotal);
                break;
            default:
                throw new FLException(subCategory+ " Subcategory type did not exist");
        }
    }

    @Then("User enters {string} allocation data in the data grid for sub-account {string}")
    public void user_enters_allocation_data_in_the_data_grid_for_sub_account(String value, String subAccountName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (subAccountName) {
            case "Guaranteed One Year Fixed":
                onCommonMethodsPage.getTxtBox_SubACGuarantedOneYearFixed().clear();
                onCommonMethodsPage.getTxtBox_SubACGuarantedOneYearFixed().sendKeys(value);
                break;
            case "JNL Aggressive Growth Allocation":
                onCommonMethodsPage.getTxtBox_SubACJNLAGAllocation().clear();
                onCommonMethodsPage.getTxtBox_SubACJNLAGAllocation().sendKeys(value);
                break;
            case "JNL Conservative Allocation":
                onCommonMethodsPage.getTxtBox_SubACJNLConservative().clear();
                onCommonMethodsPage.getTxtBox_SubACJNLConservative().sendKeys(value);
                break;
            default:
                throw new FLException(subAccountName+ " Sub-Account type did not exist");
        }

    }

    public void verifyPdfContent ( TestContext testContext, List<String> data) {
        for (String fieldValue : data) {
            if(fieldValue.contains("Application Name")) {
                Assert.assertTrue("Application is not present in pdf", testContext.getPdfText_global().contains(testContext.getMapTestData().get("newProductName")));
            }
            Assert.assertTrue(fieldValue+" is not present in pdf",testContext.getPdfText_global().contains(fieldValue));
        }
    }

}
