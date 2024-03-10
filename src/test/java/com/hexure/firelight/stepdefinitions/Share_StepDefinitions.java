package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.CommonMethodsPage;
import com.hexure.firelight.pages.ReviewPage;
import com.hexure.firelight.pages.SharePage;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import java.util.ArrayList;

public class Share_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private ReviewPage onReviewPage;
    private TestContext testContext;
    private SharePage onSharePage;

    private CommonMethodsPage onCommonMethodsPage;
    private static final Logger Log = LogManager.getLogger(Share_StepDefinitions.class);
    String pdfFileName = "";
    public Share_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onSharePage = context.getPageObjectManager().getSharePage();
    }

    @And("User enters {string} on share activity page")
    public void userEnterShareName(String name) {
        captureScreenshot(driver, testContext, false);
        sendKeys(driver, onSharePage.getTxtbox_ShareName(), testContext.getMapTestData().get(name));
    }

    @And("User verify {string} share message on share activity page")
    public void userVerifyMessage(String controlType) {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onSharePage.getTxt_ShareMsg(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Message is not as expected", onSharePage.getTxt_ShareMsg().getText().contains(controlType));
    }

    @And("User verify share pending request message")
    public void userVerifyPendingRequestMessage() {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onSharePage.getTxt_popUpMessage(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Message is not as expected", onSharePage.getTxt_popUpMessage().getText().equals(testContext.getMapTestData().get("pendingRequestMessage")));
    }

    @And("User {string} to {string} on share activity page")
    public void userSelectOwner(String controlType, String name) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        syncElement(driver, findElement(driver, "//span[contains(text(),'" + testContext.getMapTestData().get(name) + "')]//parent::div//parent::div//a[text()='" + controlType + "']"), EnumsCommon.TOVISIBLE.getText());
        clickElement(driver, findElement(driver, "//span[contains(text(),'" + testContext.getMapTestData().get(name) + "')]//parent::div//parent::div//a[text()='" + controlType + "']"));
        sleepInMilliSeconds(2000);
    }

    @And("User accept share URL on share activity page")
    public void userAcceptShare() {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        String shareURL = onSharePage.getTxt_ShareLink().getText();
        shareURL = shareURL.substring(shareURL.indexOf("https"));
        ((JavascriptExecutor) driver).executeScript("window.open()");
        ArrayList<String> tabs = new ArrayList<String>(driver.getWindowHandles());
        driver.switchTo().window(tabs.get(1));
        driver.get(shareURL);
        Assert.assertEquals("Thank you message Mismatched", testContext.getMapTestData().get("message"), onSharePage.getMsg_ThankYou().getText().trim());
        driver.close();
        driver.switchTo().window(tabs.get(0));
    }

    @Then("User clicks {string} button on share activity page")
    public void userClicksButton(String whichButton) {
        captureScreenshot(driver, testContext, false);
        int elemSize = 0;
        waitForPageToLoad(driver);
        switch (whichButton) {
            case "Search":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onSharePage.getBtn_Search(), onSharePage.getBtn_Search1(), null, null)));
                waitForPageToLoad(driver);
                break;
            case "X":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onSharePage.getBtn_CloseX(), onSharePage.getBtn_CloseX1(), onSharePage.getBtn_CloseX2(), null)));
                waitForPageToLoad(driver);
                break;
            default:
                clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.fieldWithTitleAttribute, whichButton,whichButton)));
                break;
        }
    }

    @Then("User Clicks on Complete Signing Checkbox")
    public void userClicksonCompleteSigningCheckbox() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onSharePage.getCheckbox_CompleteSigning());
    }

    @Then("User Clicks on Primary Agent Checkbox from Shared Limited Control")
    public void userClicksonPrimaryAgentCheckboxfromSharedLimitedControl() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onSharePage.getCompleteSigningWOPrimaryAgent());
    }

    @Then("User Select Pre Signature Review Checkbox")
    public void userSelectPreSignatureReviewCheckbox() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onSharePage.getCheckbox_CompletePreSignatureReview());
    }

    @Then("User verifies Remove Share is showing")
    public void user_verifies_Agree_Checkbox_and_Confirm_All_checkbox_is_showing() {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onSharePage.getTxt_RemoveShareButtton(),EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Remove Share is NOT showing", onSharePage.getTxt_RemoveShareButtton().isDisplayed());
    }

    @Then("User verifies Pre-Sign Review displayed")
    public void userVerifiesResendPasscode(){
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Pre-Sign Review is not displayed on external login page.",onSharePage.getTxt_PreSignReview().isDisplayed());
    }

    @Then("User verifies Pre-Sign Review is displayed")
    public void user_verifies_Pre_Sign_Review_is_displayed() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Pre-Sign Review is not displayed", onSharePage.getTxt_PreSignReviewReact().isDisplayed());
    }

    @Then("User verify {string} is displayed on search")
    public void verifyResult(String search) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Result does not contain string " + search, onSharePage.getTxt_Result().getText().contains(search));
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.SEARCHCOUNT.getText(), onSharePage.getTxt_ResultCount().getText().trim());
    }

    @Then("User verify record count is less than previous record count")
    public void verifyResult() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Current record count is greater than previous record count ", Integer.valueOf(onSharePage.getTxt_ResultCount().getText().trim()) < Integer.valueOf(testContext.getMapTestData().get("searchCount")));
    }

    @Then("User update records are displayed for {string}")
    public void verifyRecords(String search) {
        captureScreenshot(driver, testContext, false);
        int totalRecords = Integer.valueOf(testContext.getMapTestData().get("searchCount"));
        int lastPage = totalRecords/10 + 1;
        int countLastPageRecords = totalRecords%10;
        if (totalRecords > 10){
            clickElement(driver, findElement(driver, "//a[contains(@aria-label,'Page') and contains(text(),'" + lastPage + "')]"));
            compareRecords(search, countLastPageRecords);
            clickElement(driver, onSharePage.getTxt_Page1());
        }
        else
            compareRecords(search, totalRecords);
    }

    public void compareRecords(String search, int count) {
        if(driver.findElements(By.xpath("//label[contains(text(),'" + search + "')]")).size() > 0)
            Assert.assertTrue("Record does not match expected records " + search, driver.findElements(By.xpath("//label[contains(text(),'" + search + "')]")).size() == count);
        else if (driver.findElements(By.xpath("//div[contains(text(),'" + search + "')]")).size() > 0)
            Assert.assertTrue("Record does not match expected records " + search, driver.findElements(By.xpath("//div[contains(text(),'" + search + "')]")).size() == count);
        else
            Assert.assertTrue("Record does not match expected records " + search, driver.findElements(By.xpath("//a[contains(text(),'" + search + "')]")).size() == count);
    }

    @Then("User clicks {string} button on Advanced Dialog Box")
    public void userClicksButtonOnAdvancedDialogBox(String whichButton) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        switch (whichButton) {
            case "Search":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onSharePage.getBtn_SearchBtn(), onSharePage.getBtn_Search1(), null, null)));
                waitForPageToLoad(driver);
                break;
            case "Save":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onSharePage.getBtn_SaveBtn(), onSharePage.getBtn_CloseX1(), null, null)));
                waitForPageToLoad(driver);
                break;
            case "Cancel":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onSharePage.getBtn_CancelBtn(), onSharePage.getBtn_CloseX1(), null, null)));
                waitForPageToLoad(driver);
                break;
            default:
                throw new FLException("Invalid Button Type"+ whichButton);

        }

    }
    @Then("User clicks on All button on Advance Search dialogue box")
    public void userClicksOnAllButtonAdvanceSeacrh() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onSharePage.getBtn_All());
    }

    @Then("User clicks on Month button on Advance Seacrh dialogue box")
    public void userClicksOnMonthButtonOnAdvanceSeacrhDialogueBox() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onSharePage.getBtn_Month());
    }

    @Then("User Verifies second message {string}")
    public void user_Verifies_second_message(String message) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Thank you message Mismatched", findElement(driver, String.format(onSharePage.txtMessage, message)).isDisplayed());
    }

    @Then("User verifies {string} is not showing")
    public void User_verifies_Remove_Share_is_not_showing(String button) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        Assert.assertFalse("Button is showing", findElements(driver, String.format(onSharePage.anchorTagCommon, button)).size()>0);
    }
}

