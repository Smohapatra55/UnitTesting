package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.*;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class Transfer_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private ReviewPage onReviewPage;
    private TestContext testContext;
    private TransferPage onTransferPage;

    private DataEntryPage onDataEntryPage;

    private CommonMethodsPage onCommonMethodsPage;
    private static final Logger Log = LogManager.getLogger(Transfer_StepDefinitions.class);
    String pdfFileName = "";
    public Transfer_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onTransferPage = context.getPageObjectManager().getTransferPage();
        onDataEntryPage=context.getPageObjectManager().getDataEntryPage();
    }

    @And("User enters {string} on transfer activity page")
    public void userEnterTransferName(String name) {
        captureScreenshot(driver, testContext, false);
        sendKeys(driver, onTransferPage.getTxtbox_TransferName(), testContext.getMapTestData().get(name));
    }

    @And("User verify transfer message on transfer activity page")
    public void userVerifyMessage() {
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(3000);
        syncElement(driver, getElement(driver, getExistingLocator(driver, onTransferPage.getTxt_TransferMessage(), onTransferPage.getTxt_TransferMessage1(), null, null)), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Message is not as expected", getElement(driver, getExistingLocator(driver, onTransferPage.getTxt_TransferMessage(), onTransferPage.getTxt_TransferMessage1(), null, null)).getText().equals(testContext.getMapTestData().get("message")));
    }

    @And("User verify transfer pending request message")
    public void userVerifyPendingRequestMessage() {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onTransferPage.getTxt_popUpMessage(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Message is not as expected", onTransferPage.getTxt_popUpMessage().getText().equals(testContext.getMapTestData().get("pendingRequestMessage")));
    }

    @And("User selects {string} on transfer activity page")
    public void userSelectOwner(String name) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        if(testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            syncElement(driver, findElement(driver, "//span[contains(text(),'" + testContext.getMapTestData().get(name) + "')]//parent::div//following-sibling::a"), EnumsCommon.TOVISIBLE.getText());
            clickElement(driver, findElement(driver, "//span[contains(text(),'" + testContext.getMapTestData().get(name) + "')]//parent::div//following-sibling::a"));
        }
        else {
            String tempOwner = "";
            Select selectOwner = new Select(onTransferPage.getSelect_User());
            for (WebElement owner : selectOwner.getOptions()) {
                if (owner.getText().contains(testContext.getMapTestData().get(name))) {
                    tempOwner = owner.getText();
                    break;
                }
            }
            selectOwner.selectByVisibleText(tempOwner);
        }
    }

    @Then("User clicks {string} button on transfer activity page")
    public void userClicksButton(String whichButton) {
        captureScreenshot(driver, testContext, false);
        int elemSize = 0;
        waitForPageToLoad(driver);
        switch (whichButton) {
            case "Search":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onTransferPage.getBtn_Search(), onTransferPage.getBtn_Search1(), null, null)));
                waitForPageToLoad(driver);
                break;
            case "X":
                clickElement(driver, getElement(driver, getExistingLocator(driver, onTransferPage.getBtn_CloseX(), onTransferPage.getBtn_CloseX1(), null, null)));
                waitForPageToLoad(driver);
                break;
            default:
                clickElement(driver, onCommonMethodsPage.findElement(driver, String.format(onCommonMethodsPage.fieldWithTitleAttribute, whichButton,whichButton)));
                break;
        }
    }

    @Then("User verifies Dialog box and search {string} in search field")
    public void user_verifies_Dialog_box_and_search_in_search_field(String inputValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Dialog box was not showing", onDataEntryPage.getHeading_Lookup().isDisplayed());
        getElement(driver, getExistingLocator(driver, onDataEntryPage.getTxtBox_CRMSearchMVC(), onDataEntryPage.getTxtBox_CRMSearchReact(), null, null)).sendKeys(inputValue);
        clickElementByJSE(driver, onDataEntryPage.getSearchIcon());
    }

    @Then("User selects any one value from search records")
    public void user_selects_any_one_value_from_search_records() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onDataEntryPage.getExchangeFirstValue());
    }

    @Then("User verifies the page heading as {string}")
    public void user_verifies_the_page_heading_as(String headingName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Page heading is mismatched ", headingName, findElement(driver, String.format(onDataEntryPage.pageHeading, headingName)).getText().trim());
    }

    @Then("User clicks on Surrendering Company lookup")
    public void user_clicks_on_Surrendering_Company_lookup() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, getElement(driver, getExistingLocator(driver, onTransferPage.getBtn_SurrenderingCompanyLookupMVC(), onTransferPage.getBtn_SurrenderingCompanyLookupReact(), null, null)));
    }

    @Then("User search {string} in search ceding company")
    public void user_search_in_search_ceding_company(String textValue) {
        captureScreenshot(driver, testContext, false);
        onTransferPage.getTxtBox_SearchCeedingCompany().sendKeys(textValue);
        clickElementByJSE(driver, onDataEntryPage.getSearchIcon());
    }

    @Then("User clicks on lookup button")
    public void user_clicks_on_lookup_button() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onTransferPage.getBtn_LookupEForm());
    }

    @Then("User clicks on {string} to {string} on transfer activity page")
    public void user_clicks_on_to_on_transfer_activity_page(String controlBtn, String userName) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, driver.findElement(By.xpath("//span[contains(text(),'"+userName+"')]/../following-sibling::a[contains(text(),'"+controlBtn+"')]")));
    }

    @Then("User verifies the Transfer complete message is displayed")
    public void user_verifies_the_Transfer_complete_message_is_displayed() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Transfer message was not displayed", onTransferPage.getMessageTransferComplete().isDisplayed());
    }

    @Then("User close the Transfer Dialog box")
    public void user_close_the_Transfer_Dialog_box() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onTransferPage.getBtn_CloseTransfer());
    }

    @Then("User verifies {string} Dialog box appears")
    public void user_verifies_Dialog_box_appears(String header) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Dialog box was not appeared ", onDataEntryPage.getMsg_Header().getText().contains(header));
    }
    @Then("User enters {string} in Search Field on transfer activity page")
    public void userEntersSearchFieldOnTransferName(String name) {
        captureScreenshot(driver, testContext, false);
        sendKeys(driver, onTransferPage.getTxtbox_TransferName(), name);
    }

    @Then("User selects value by {int} index on transfer activity page")
    public void userSelectsValueByIndexOnTransferActivityPage(int indexNum) {
        Select selectOwner = new Select(onTransferPage.getSelect_User());
        selectOwner.selectByIndex(indexNum);
    }

    @Then("User verifies Application should appear in Search page")
    public void userVerifiesApplicationShouldAppearInSearchPage() {
        waitForPageToLoad(driver);
        List<WebElement> applicationNameInQueue = driver.findElements(By.xpath("//span[contains(text(),'" + testContext.getMapTestData().get("newProductName") + "')]"));
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Application Did not Appear in Search Page", applicationNameInQueue.size() > 0);
    }

    @Then("User verifies Application should not appear in Search page")
    public void userVerifiesApplicationShouldNotAppearInSearchPage() {
        waitForPageToLoad(driver);
        List<WebElement> applicationNameInQueue = driver.findElements(By.xpath("//span[contains(text(),'" + testContext.getMapTestData().get("newProductName") + "')]"));
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("Application Did not Appear in Search Page", applicationNameInQueue.size() > 0);
    }

    @Then("User verifies number of Records {string}")
    public void userVerifiesUser_number_of_Records(String record) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("number of Records not matching ", onTransferPage.getNumberOfRecord().getText().trim().contains(record));
    }
    @Then("User verifies {string} TextBox has {string} is not displayed under name box")
    public void user_verifies_Nameboxvalue(String txtBox, String value) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse(txtBox + " Text Box has value " +value , findElements(driver, String.format(onTransferPage.getNamebox(), txtBox)).size()>0);
    }

    @Then("User clicks on close Activity Summary dialog box")
    public void user_clicks_on_close_Activity_dialogbox() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onTransferPage.getActivityTabCloseButton());
    }
    @Then("User clicks on close Document dialog box")
    public void user_clicks_on_close_Document_dialogbox() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onTransferPage.getDocumentTabCloseButton());
    }

    @Then("User Verifies Activity Summary opens in read only mode")
    public void user_Verifies_Field_is_read_only() {
        captureScreenshot(driver, testContext, false);
        boolean notreadonly = true;
        try {
            driver.findElement(By.xpath("//div[text()='" + testContext.getMapTestData().get("newProductName") +"']")).sendKeys("Editable");
            notreadonly =  driver.findElement(By.xpath("//div[text()='" + testContext.getMapTestData().get("newProductName") +"']")).getText().trim().contains("Editable");
        } catch (Exception e) {
            notreadonly = false;
        }
        Assert.assertFalse( " Activity Summary did not opes in read only mode",notreadonly);
    }
    @Then("User Verifies Data Entry Review custom button is displayed")
    public void verifyDataEntryReviewButton() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Data Entry Review not displayed", onTransferPage.getBtn_DataEntry().isDisplayed());
    }

}

