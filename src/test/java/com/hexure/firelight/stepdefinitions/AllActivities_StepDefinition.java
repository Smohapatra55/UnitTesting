package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.libraies.pages_react.CommonMethods_ReactPage;
import com.hexure.firelight.libraies.pages_react.DataEntry_ReactPage;
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

import java.net.URL;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AllActivities_StepDefinition extends FLUtilities {
    private WebDriver driver;

    private AllActivitiesPage onAllActivitiesPage;
    private TestContext testContext;
    private HomePage onHomePage;
    private CommonMethods_ReactPage onCommonMethods_reactPage;
    private DataEntry_ReactPage onDataEntry_ReactPage;
    private DataEntryPage onDataEntryPage;
    private static final Logger Log = LogManager.getLogger(AllActivities_StepDefinition.class);

    public AllActivities_StepDefinition(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onAllActivitiesPage = context.getPageObjectManager().getAllActivitiesPage();
        onHomePage = context.getPageObjectManager().getHomePage();
        onCommonMethods_reactPage = context.getPageObjectManager().getCommonMethods_reactPage();
        onDataEntryPage = context.getPageObjectManager().getDataEntryPage();
    }

    @Then("User Verifies Recent application status is {string} in All Activities")
    public void user_Verifies_Recent_application_status_is_in_All_Activities(String appStatus) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Application Status is not matching",findElement(driver, "//td[@class='lblAppName']/span[contains(.,'" + testContext.getMapTestData().get("newProductName") + "')]/ancestor::tr/td/a[contains(@id,'status')]").getText().equalsIgnoreCase(appStatus));
    }

    @Then("User Opens application by clicking on view button")
    public void user_Opens_application_by_clicking_on_view_button() {
        captureScreenshot(driver, testContext, false);
     clickElement(driver,onAllActivitiesPage.getViewButton(driver,testContext));
    }

    @Then("User clicks on view History")
    public void user_clicks_on_view_History() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAllActivitiesPage.getViewHistoryLink(driver,testContext));
    }

    @Then("User clicks {string} for {string} activity")
    public void userClicksHistoryButton(String whichButton, String number) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver,findElement(driver, "(//a[@aria-label='" + whichButton + "'])[" + number.substring(0,1) + "]"));
    }
        @Then("User Searches for application")
    public void user_Searches_for_application() {
        captureScreenshot(driver, testContext, false);
        WebElement element = getElement(driver, getExistingLocator(driver, onAllActivitiesPage.getSearchTxtBox_AllActivitiesPageMVC(), onAllActivitiesPage.getSearchTxtBox_AllActivitiesPageReact(), null, null));
        if(!element.equals("")) {
            element.clear();
            element.sendKeys(testContext.getMapTestData().get(EnumsJSONProp.NEWPRODUCTNAME.getText()));
            clickElementByJSE(driver, onAllActivitiesPage.getBtn_searchIcon());
            waitForPageToLoad(driver);
        }
        else {
            element.sendKeys(testContext.getMapTestData().get(EnumsJSONProp.NEWPRODUCTNAME.getText()));
            clickElementByJSE(driver, onAllActivitiesPage.getBtn_searchIcon());
        }
    }

    @Then("User clicks on the status of application")
    public void user_clicks_on_the_status_of_application() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, getElement(driver, getExistingLocator(driver, onAllActivitiesPage.getApplicationStatusMVC(), onAllActivitiesPage.getApplicationStatusReact(), null, null)));
        waitForPageToLoad(driver);
    }

    @Then("User clicks on Pending Requests! link below of recent created activity name")
    public void userClicksOnLinkBelowOfRecentCreatedActivityName() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        String newProductName = testContext.getMapTestData().get("newProductName");
        clickElementByJSE(driver, driver.findElement(By.xpath("//td[@class='lblAppName']/span[contains(.,'" + newProductName + "')]/ancestor::tr/td/a[text()='(Pending Requests!)']")));
    }

    @Then("User open that recent created activity from recent Activities tab")
    public void userOpenThatRecentCreatedActivityFromRecentActivitiesTab() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, findElement(driver, "//div[@class='listRecent__name' and @aria-label='" + testContext.getMapTestData().get("newProductName") + ",']"));
    }

    @Then("reload the app")
    public void reloadTheApp() {
        driver.navigate().refresh();
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
    }

    @Then("User Verifies Message {string}")
    public void user_clicks_on_the_status_of_application(String message) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(message + " was not displayed", onAllActivitiesPage.getMsg_LastAction().getText().trim().contains(message));
    }

    @Then("User Clicks on Button {string} on AllActivities")
        public void userClicksOnButtonAllactivities(String button){
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAllActivitiesPage.getButton(driver,testContext,button));
    }

    @Then("User Clicks on disabled Button {string} on AllActivities")
    public void userClicksOnDisabledButtonAllactivities(String button){
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAllActivitiesPage.getDisabledButton(driver,testContext,button));
    }

    @Then("User clicks {string} button on All Activities Page")
    public void userClicksButton(String whichButton) {
        captureScreenshot(driver, testContext, false);
        switch (whichButton) {
            case "Share Cases":
                clickElement(driver, onAllActivitiesPage.getBtn_Share());
                break;
            case "Search":
                clickElement(driver, onAllActivitiesPage.getBtn_Search());
                break;
            default:
                throw new FLException("Invalid value for: " + whichButton);
        }
    }

    @And("User enters {string} on all activity page")
    public void userEnterTransferName(String name) {
        captureScreenshot(driver, testContext, false);
        sendKeys(driver, onAllActivitiesPage.getTxtbox_Name(), testContext.getMapTestData().get(name));
    }

    @And("User selects {string} with {string} on all activity page")
    public void userSelectOwner(String name, String control) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            if(findElements(driver, "//span[contains(text(),'" + testContext.getMapTestData().get(name) + "')]//parent::div//parent::div//a[text()='[Remove Share]']").size() > 0) {
                clickElement(driver, findElement(driver, "//span[contains(text(),'" + testContext.getMapTestData().get(name) + "')]//parent::div//parent::div//a[text()='[Remove Share]']"));
                clickElement(driver, onDataEntryPage.getBtn_popupOk());
                syncElement(driver, onAllActivitiesPage.getTxtbox_Name(), EnumsCommon.TOVISIBLE.getText());
                sendKeys(driver, onAllActivitiesPage.getTxtbox_Name(), testContext.getMapTestData().get("newOwnerName"));
                clickElement(driver, onAllActivitiesPage.getBtn_Search());
            }
            sleepInMilliSeconds(3000);
            WebElement controlElement = findElement(driver, "//span[contains(text(),'" + testContext.getMapTestData().get(name) + "')]//parent::div//parent::div//following-sibling::a[text()='" + control + "']");
            syncElement(driver, controlElement, EnumsCommon.TOVISIBLE.getText());
            clickElement(driver, controlElement);
        }
    }

    @And("User verify {string} share message for user {string} on all activity page")
    public void userVerifyMessage(String control, String user) {
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(3000);
        WebElement messageElement = findElement(driver, "//span[contains(text(),'" + testContext.getMapTestData().get(user) + "')]//parent::div//parent::div//div[contains(text(),'" + control + "')]");
        syncElement(driver, messageElement, EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Share message is not displayed", messageElement.isDisplayed());
    }

    @Then("User verify Thank you for using activity share should display")
    public void verifyThankMessage() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Thank you for using activity share is not displayed", onAllActivitiesPage.getTxt_ConformationApplication().isDisplayed());
        driver.manage().deleteAllCookies();
    }

    @Then("User verifies Share My Activities Dialog box is showing")
    public void user_verifies_Share_My_Activities_Dialog_box_is_showing() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Share my Activities is not displayed", onAllActivitiesPage.getDialogBoxShareMyActivities().isDisplayed());
    }

    @Then("User verifies {string} in Dialog box and Search Icon is displaying")
    public void user_verifies_in_Dialog_box_and_Search_Icon_is_displaying(String fieldValue) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(fieldValue + " was not displaying", onAllActivitiesPage.getTxt_shareMyContacts().getText().trim().contains(fieldValue));
        Assert.assertTrue("Icon was not displayed", onAllActivitiesPage.getBtn_Search().isDisplayed());
    }

    @Then("User search {string} in search field and click on search icon")
    public void user_search_in_search_field_and_click_on_search_icon(String inputValue) {
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            onAllActivitiesPage.getTxtBox_Search().sendKeys(inputValue);
            clickElementByJSE(driver, onAllActivitiesPage.getBtn_Search());
        } else if (onAllActivitiesPage.getTxtBox_Search().isDisplayed()) {
            onAllActivitiesPage.getTxtBox_Search().sendKeys(inputValue);
            clickElementByJSE(driver, onAllActivitiesPage.getBtn_Search());
        } else {
            onAllActivitiesPage.getSearchMYContactsReact().sendKeys(inputValue);
            clickElement(driver, onDataEntryPage.getSearchIcon());
        }
    }

    @Then("User verifies result is displayed or not")
    public void user_verifies_result_is_displayed_or_not() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Result was not showing", onAllActivitiesPage.getSearchResult().isDisplayed());
    }

    @Then("User clicks on Share Limited Control")
    public void user_clicks_on_Share_Limited_Control() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if (onAllActivitiesPage.getList_btnShareLimitedControl().size()>0) {
            clickElement(driver, onAllActivitiesPage.getBtn_ShareLimitedControl());
        }
        else{
            captureScreenshot(driver,testContext,false);
            clickElementByJSE(driver,onAllActivitiesPage.getShareLimitedControlReact());
        }
    }

    @Then("User verifies the data is present with not selected check box")
    public void user_verifies_the_data_is_present_with_not_selected_check_box(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<String> fieldValue = dataTable.asList(String.class);
        for (String inputValue : fieldValue) {
            if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
                Assert.assertFalse("Check box are selected", findElement(driver, String.format(onAllActivitiesPage.checkBoxShareFields, inputValue)).isSelected());
            }
            else {
                Assert.assertFalse("Check box are selected", findElement(driver, String.format(onAllActivitiesPage.checkBoxShareFieldsReact, inputValue)).isSelected());
            }
        }
    }

    @Then("User select {string} check box")
    public void user_select_check_box(String fieldValue) {
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_MVC.getText())) {
            clickElementByJSE(driver, findElement(driver, String.format(onAllActivitiesPage.checkBoxShareFields, fieldValue)));
        }
        else {
            clickElementByJSE(driver,findElement(driver, String.format(onAllActivitiesPage.checkBoxShareFieldsReact, fieldValue)));
        }
    }

    @Then("User close the Share Activity Dialog box")
    public void user_close_the_Share_Activity_Dialog_box() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onAllActivitiesPage.getCloseShareActivityDialog());
    }

    @Then("User verifies share audit records as {string}")
    public void user_verifies_share_audit_records_as(String expectedValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, findElement(driver, String.format(onAllActivitiesPage.shareAuditRecords, expectedValue)));
        Assert.assertTrue(expectedValue + " was not showing ", findElement(driver, String.format(onAllActivitiesPage.shareAuditRecords, expectedValue)).isDisplayed());
    }

    @Then("User verifies left section {string} audit showing")
    public void user_verifies_left_section_audit_showing(String inputValue) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(inputValue + " audit was not present", findElement(driver, String.format(onAllActivitiesPage.leftAuditShareRecords, inputValue)).isDisplayed());
    }

    @Then("User stores the shared link")
    public void user_stores_the_shared_link() {
        captureScreenshot(driver, testContext, false);
        String textURL = onAllActivitiesPage.getSharedLinkURL().getText();
        String urlPattern = "(https?://\\S+)";
        Pattern pattern = Pattern.compile(urlPattern);
        Matcher matcher = pattern.matcher(textURL);
        String extractedUrl = "";
        if (matcher.find()) {
            extractedUrl = matcher.group(1);
        }
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.REVIEWERURL.getText(), extractedUrl);
        System.setProperty("External URL", extractedUrl);
    }

    @Then("User verifies the {string}")
    public void user_verifies_the(String expValue) {
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("The activity mismatched", expValue, onAllActivitiesPage.getNoActivitesShared().getText().trim());
    }

    @Then("User clicks on Shared Activity")
    public void user_clicks_on_Shared_Activity() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAllActivitiesPage.getBtn_SharedActivity());
    }

    @Then("User select the activity from shared activity tab")
    public void user_select_the_activity_from_shared_activity_tab() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, findElement(driver, String.format(onAllActivitiesPage.sharedActivityResults, testContext.getMapTestData().get("newProductName") + ",")));
    }

    @Then("User clicks log off")
    public void user_clicks_log_off() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, getElement(driver, getExistingLocator(driver, onHomePage.getLogOff_HomeMVC(), onHomePage.getLogOff_HomeReact(), null, null)));
        captureScreenshot(driver, testContext, false);
    }

    @Then("User provides the first login username as {string} and clicks on search")
    public void user_provides_the_first_login_username_as_and_clicks_on_search(String key) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        new Select(onAllActivitiesPage.getDropDownUserActivities()).selectByVisibleText(key);
        clickElementByJSE(driver, onAllActivitiesPage.getBtn_SearchFilterIcon());
    }

    @Then("User selects clicks on {string} in list")
    public void user_selects_clicks_on_in_list(String userName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onAllActivitiesPage.getTxt_SearchBox(), EnumsCommon.TOVISIBLE.getText());
        onAllActivitiesPage.getTxt_SearchBox().sendKeys(userName, Keys.ENTER);
        clickElementByJSE(driver, findElement(driver, String.format(onAllActivitiesPage.searchFields, userName)));
    }

    @Then("User Clicks on View Button on All Activity")
    public void user_Clicks_on_View_Button_on_All_Activity() {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        clickElement(driver, onAllActivitiesPage.getBtn_View());
    }

    @Then("User verifies {string} is enabled on page")
    public void user_verifies_is_enabled_on_page(String buttonName) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(buttonName+"was not enabled", findElement(driver, String.format(onCommonMethods_reactPage.alt_Field, buttonName,buttonName)).isEnabled());
    }

    @Then("User verifies the {string} is showing in result list")
    public void user_verifies_the_is_showing_in_result_list(String fieldName) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(fieldName+" was not displayed",findElement(driver, String.format(onDataEntry_ReactPage.btn_UploadaCopyofVoidedCheck_MVC, fieldName)).isDisplayed());
    }

    @Then("User clicks on Remove Share")
    public void user_clicks_on_Remove_Share() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAllActivitiesPage.getLinkRemoveShare());
    }

    @Then("User verifies remove user share Dialog box appear")
    public void user_verifies_remove_user_share_Dialog_box_appear() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Remove User Dialog box was not displayed", onAllActivitiesPage.getRemoveActivityHeading().isDisplayed());
    }

    @Then("User close the Share Activity Dialog box second")
    public void user_close_the_Share_Activity_Dialog_box_second() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onAllActivitiesPage.getCloseShareActivityDialog2());
    }

    @Then("User filter date to All")
    public void user_filter_date_to_All() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onAllActivitiesPage.getBtn_DateAll());
    }

    @Then("User clicks on {string} on new Activity")
    public void user_clicks_on_on_new_Activity(String inputValue) {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver, String.format(onAllActivitiesPage.listNewActivity,inputValue)));
    }

    @Then("User verifies shared app {string} not showing any more")
    public void user_verifies_shared_app_not_showing_any_more(String inputValue) {
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse(inputValue+" was showing", findElements(driver, String.format(onAllActivitiesPage.sharedActivityResults, inputValue)).size()>0);
    }
    @Then("User Clicks on Search Icon Next to User Dropdown")
    public void user_Clicks_on_Search_Icon_Next_to_User_Dropdown() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAllActivitiesPage.getDd_UserListSearch());
    }

    @Then("User selects {string} from drop down list")
    public void user_selects_from_drop_down_list(String userType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, findElement(driver, String.format(onAllActivitiesPage.userList, userType)));
    }

    @Then("User clicks Copy button on All Activity Page")
    public void user_clicks_Copy_button_on_All_Activity_Page() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAllActivitiesPage.getBtn_CopyApplication());
    }

    @Then("User clicks on I have reviewed and agree with the terms expressed within this document")
    public void user_clicks_on_I_have_reviewed_and_agree_with_the_terms_expressed_within_this_document() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onAllActivitiesPage.getCheckBoxReviewedAgree());
    }
    @Then("User Verifies check-uncheck all is {string}")
    public void user_Verifies_check_uncheck_all_is_(String whichState) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (whichState){
            case "checked":
                Assert.assertTrue("Check/Uncheck Checkbox was not checked", onAllActivitiesPage.getList_CheckUncheckAll().size()>0);
                break;
            case "unchecked":
                Assert.assertFalse("Check/Uncheck Checkbox was checked", onAllActivitiesPage.getList_CheckUncheckAll().size()>0);
            default:
                throw new FLException("Invalid value provided for: " + whichState);
        }
    }

    @Then("User verify document {string} exists in Select Documents to Print Dialog Box")
    public void user_verify_document_exists_in_Select_Documents_to_Print_Dialog_Box(String documentName) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Document " + documentName + " does not exists", driver.findElement(By.xpath("//div[contains(text(),'" + documentName + "')]")).isDisplayed());
    }

    @Then("User verifies {string} option is not present in the other actions submenu")
    public void userVerifiesOptionIsNotPresentInTheOtherActionsSubmenu(String subMenuValue) {
        captureScreenshot(driver, testContext, false);
        List<WebElement> subMenuOptions = onHomePage.getList_Submenu_OtherActions();
        for (WebElement subMenuOption : subMenuOptions) {
            Assert.assertNotEquals("Given option is present in the subMenu", subMenuOption.getText(), subMenuValue);
        }
    }

    @Then("User verifies Username and Code is displayed in the first column")
    public void user_verifies_Username_and_Code_is_displayed_in_the_st_column() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Username and Code is not displayed",onAllActivitiesPage.getTxt_DivShareResult().isDisplayed());
    }

    @Then("User verifies {string} is displayed in the second column")
    public void user_verifies_Share_Full_Control_is_displayed_in_the_second_column(String value) {
        captureScreenshot(driver, testContext, false);
        for(WebElement singleElement:findElements(driver, String.format(
                onAllActivitiesPage.getListSharedActivityFullControl(), value))) {
            Assert.assertTrue("Share Full Control is not displayed",singleElement.isDisplayed());
        }
    }

    @Then("User verifies Share Full Control is not displayed in the second column")
    public void user_verifies_Share_Full_Control_is_not_displayed_in_the_second_column() {
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("Share Full Control is displayed", findElements(driver, onAllActivitiesPage.getListSharedActivityFullControl()).size()>0);
    }

    @Then("User verifies {string} is displayed in the third column")
    public void user_verifies_is_displayed_in_the_third_column(String value) {
        captureScreenshot(driver, testContext, false);
        for(WebElement singleElement:findElements(driver, String.format(
                onAllActivitiesPage.getListSharedActivityResult(), value))) {
            Assert.assertTrue("Share limited Control is not displayed",singleElement.isDisplayed());
        }
    }

    @Then("User verifies Share Limited Control is not displayed in the third column")
    public void user_verifies_Share_Limited_Control_is_not_displayed_in_the_third_column() {
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("Share limited Control is displayed", findElements(driver, onAllActivitiesPage.getListSharedActivityResult()).size()>0);
    }

    @Then("User verifies {string} is displayed in the fourth column")
    public void user_verifies_is_displayed_in_the_fourth_column(String value) {
        captureScreenshot(driver, testContext, false);
        for(WebElement singleElement:findElements(driver, String.format(
                onAllActivitiesPage.getListSharedActivityReadOnly(), value))) {
            Assert.assertTrue("Share Read Only is not displayed",singleElement.isDisplayed());
        }
    }

    @Then("User Verifies Pending Requests! link below of recent created activity name")
    public void userVerifiesLinkBelowOfRecentCreatedActivityName() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        String newProductName = testContext.getMapTestData().get("newProductName");
        for (int i = 0; i < onAllActivitiesPage.getList_ProductName().size(); i++) {
            if (onAllActivitiesPage.getList_ProductName().get(i).getText().trim().equalsIgnoreCase(newProductName)) {
                Assert.assertTrue("Pending Requests! link Was not Shown",  findElement(driver,String.format(onAllActivitiesPage.getLink_PendingRequest(),newProductName)).isDisplayed());
            }
        }
    }

    @Then("User Verifies text Message in Popup {string}")
    public void user_Verifies_text_Message_in_Popup(String message) {
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Message Mismatched",message,onAllActivitiesPage.getMsg_Popup().getText().trim());
    }

    @Then("User notes first application name from all activities tab")
    public void noteFirstApplication(){
        captureScreenshot(driver, testContext, false);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.NEWPRODUCTNAME.getText(), onAllActivitiesPage.getList_ProductName().get(0).getText());
    }

    @Then("User clicks on {string} to {string} on share activity page")
    public void user_clicks_on_to_on_share_activity_page(String controlBtn, String userName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,driver.findElement(By.xpath("//span[contains(text(),'"+userName+"')]/../following-sibling::div/a[contains(text(),'"+controlBtn+"')]")));
    }

    @Then("User verifies {string} is visible on Activities list")
    public void user_verifies_is_visible_on_Activities_list(String name) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("New Activity was not displayed on Home Page", findElement(driver, "//div[@class='listRecent__name' and @aria-label='" + testContext.getMapTestData().get(name) + ",']").isDisplayed());
    }


    @Then("User verifies {string} is not showing in Activity list")
    public void user_verifies_is_not_showing_in_Activity_list(String string) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("New Activity was not displayed on Home Page", findElements(driver, "//div[@class='listRecent__name' and @aria-label='" + testContext.getMapTestData().get("newProductName") + ",']").size() == 0);
    }

    @Then("User Renames the Application Name For Copy Activity")
    public void user_Renames_the_Application_Name_For_Copy_Activity() {
        String newAppName = "AT COPY " + testContext.getMapTestData().get("product") + " " + getDate("newAppName");
        onAllActivitiesPage.getTxtBox_CopyAppName().clear();
        onAllActivitiesPage.getTxtBox_CopyAppName().sendKeys(newAppName);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.NEWPRODUCTNAME.getText(), newAppName);
        captureScreenshot(driver, testContext, false);
    }
    @Then("User store the second shared Url")
    public void user_store_the_second_shared_Url() {
        captureScreenshot(driver, testContext, false);
        String textURL = onAllActivitiesPage.getSharedLinkURL().getText();
        String urlPattern = "(https?://\\S+)";
        Pattern pattern = Pattern.compile(urlPattern);
        Matcher matcher = pattern.matcher(textURL);
        String extractedUrl = "";
        if (matcher.find()) {
            extractedUrl = matcher.group(1);
        }
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.SIGNERURL.getText(), extractedUrl);
        System.setProperty("External URL", extractedUrl);
    }

    @Then("User verifies {string} value is present in view list")
    public void user_selects_value_form_view_list(String ddValue) {
        captureScreenshot(driver, testContext, false);
        boolean flagValue = new Select(onAllActivitiesPage.getDd_ViewUserList()).getOptions().stream().anyMatch(actualValue -> actualValue.getText().equals(ddValue));
        Assert.assertTrue(ddValue + " was not present ", flagValue);
    }

    @Then("User verifies {string} is displayed in form view list")
    public void user_verifies_is_not_displayed_in_form_view_list(String ddValue) {
        captureScreenshot(driver, testContext, false);
        boolean flag = new Select(onAllActivitiesPage.getDd_ViewUserList()).getOptions().stream().anyMatch(actual -> actual.getText().equals(ddValue));
        Assert.assertTrue("The option was not present", flag);
    }

    @Then("User selects {string} from view list")
    public void user_selects_from_view_list(String dataValue) {
        captureScreenshot(driver, testContext, false);
        new Select(onAllActivitiesPage.getDd_ViewUserList()).selectByVisibleText(dataValue);
    }
    @Then("User clicks on NO checkbox on both replacement question")
    public void user_clicks_on_NO_checkbox_on_both_replacement_question() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        for (int i = 0; i < onAllActivitiesPage.getList_CheckBoxNo().size(); i++){
            scrollToWebElement(driver, onAllActivitiesPage.getList_CheckBoxNo().get(i));
            onAllActivitiesPage.getList_CheckBoxNo().get(i).click();
        }
    }

    @Then("User verifies check box are selected")
    public void user_verifies_check_box_are_selected(DataTable dataTable) {
        captureScreenshot(driver, testContext, false);
        List<String> formFields = dataTable.asList(String.class);
        for (String fieldData : formFields) {
        Assert.assertEquals("Check Box are not selected", "true", findElement(driver, String.format(onDataEntryPage.getCheckBox_Trigger(),fieldData)).getAttribute("aria-checked"));
        }
    }

    @Then("User verifies NO checkbox is selected")
    public void user_verifies_NO_checkbox_is_selected() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        for (int i = 0; i < onAllActivitiesPage.getList_CheckBoxNo().size(); i++){
            scrollToWebElement(driver, onAllActivitiesPage.getList_CheckBoxNo().get(i));
            Assert.assertEquals("Check Box was not selected", "true", onAllActivitiesPage.getList_CheckBoxNo().get(i).getAttribute("aria-checked"));
        }
    }

    @Then("User verifies all content of Copy Activity popup")
    public void user_verifies_all_content_of_Copy_Activity_popup() {
        sendKeys(driver, onAllActivitiesPage.getTxt_popup(), testContext.getMapTestData().get("newActivityName"));
        Assert.assertTrue("Ok Button Was not Displayed", onAllActivitiesPage.getTxt_popup().isDisplayed());
        Assert.assertTrue("Cancel Button Was not Displayed", onDataEntryPage.getBtn_CancelPopup().isDisplayed());
    }

    @Then("User verifies New Activity is {string} on All Activities page")
    public void user_verifies_New_Application_is_not_Added_on_Multiple_Activities_page(String action) {
        waitForPageToLoad(driver);
        WebElement elementActivity = getElement(driver, getExistingLocator(driver, onAllActivitiesPage.getSearchTxtBox_AllActivitiesPageMVC(), onAllActivitiesPage.getSearchTxtBox_AllActivitiesPageReact(), null, null));
        switch (action) {
            case "Added":
                if (!elementActivity.equals("")) {
                    elementActivity.clear();
                    elementActivity.sendKeys(testContext.getMapTestData().get("illustrationName"));
                    clickElementByJSE(driver, onAllActivitiesPage.getBtn_searchIcon());
                    waitForPageToLoad(driver);
                    for (WebElement element : onHomePage.getList_RecentApplication()) {
                        if (element.getText().contains(testContext.getMapTestData().get("illustrationName")))
                            Assert.assertTrue("Activity was not displayed on All Activities Page", element.getText().trim().equalsIgnoreCase(testContext.getMapTestData().get("illustrationName")));
                    }
                } else {
                    elementActivity.sendKeys(testContext.getMapTestData().get("illustrationName"));
                    clickElementByJSE(driver, onAllActivitiesPage.getBtn_searchIcon());
                    waitForPageToLoad(driver);
                    for (WebElement element : onHomePage.getList_RecentApplication()) {
                        if (element.getText().contains(testContext.getMapTestData().get("illustrationName")))
                            Assert.assertTrue("Activity was not displayed on All Activities Page", element.getText().trim().equalsIgnoreCase(testContext.getMapTestData().get("illustrationName")));
                    }
                }
                break;
            default:
                throw new FLException("Invalid action provided: " + action);
        }
    }
    @Then("User verifies {string} Activity is present")
    public void user_verifies_Activity_is_displayed(String productName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        boolean flagValue = false;
        for (WebElement allValues : onAllActivitiesPage.getList_LinkedActivities()) {
            syncElement(driver, allValues, EnumsCommon.TOVISIBLE.getText());
            if (allValues.getText().contains(productName)) {
                flagValue = true;
                break;
            }
        }
        Assert.assertTrue("Activity was not present", flagValue);
    }
    @Then("User clicks on {string} activity on linked activity")
    public void user_clicks_on_activity_on_linked_activity(String productName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<WebElement> allActivity = onAllActivitiesPage.getList_LinkedActivities();
        for(WebElement allValues : allActivity){
            syncElement(driver, allValues, EnumsCommon.TOCLICKABLE.getText());
            if (allValues.getText().contains(productName)){
                clickElement(driver,allValues);
                break;
            }
        }
    }

    @Then("User verifies the data is present with unchecked check box")
    public void user_verifies_the_data_is_present_with_unchecked_check_box(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<String> fieldValue = dataTable.asList(String.class);
        for (String inputValue : fieldValue) {
            if ( findElements(driver, String.format(onAllActivitiesPage.checkBoxShareField, inputValue)).size()>0) {
                Assert.assertFalse("Check box are selected", findElement(driver, String.format(onAllActivitiesPage.checkBoxShareField, inputValue)).isSelected());
            } else {
                Assert.assertFalse("Check box are selected", findElement(driver, String.format(onAllActivitiesPage.checkBoxShareFieldsReact, inputValue)).isSelected());
            }
        }
    }

    @Then("User selects {string} check box")
    public void user_selects_check_box(String fieldValue) {
        captureScreenshot(driver, testContext, false);
        if (findElements(driver, String.format(onAllActivitiesPage.checkBoxShareField, fieldValue)).size()>0) {
            clickElementByJSE(driver, findElement(driver, String.format(onAllActivitiesPage.checkBoxShareField, fieldValue)));
        } else {
            clickElementByJSE(driver, findElement(driver, String.format(onAllActivitiesPage.checkBoxShareFieldsReact, fieldValue)));
        }
    }

    @Then("User clicks on any {string} Share Limited Control")
    public void user_clicks_on_Any_Share_Limited_Control(String index) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver, String.format(onAllActivitiesPage.btn_shareLimitControl, index)));
    }

    @Then("User verifies All linked Activities are present")
    public void user_verifies_All_linked_Activities_Are_displayed(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<String> fields = dataTable.asList(String.class);
        boolean flagValue = false;
        for (WebElement allValues : onAllActivitiesPage.getList_LinkedActivities()) {
            syncElement(driver, allValues, EnumsCommon.TOVISIBLE.getText());
            for (String singleField : fields) {
                if (allValues.getText().contains(singleField)) {
                    flagValue = true;
                }
            }
        }
        Assert.assertTrue("Activity was not present", flagValue);
    }

    @Then("User verifies {string} Menu List option is {string}")
    public void user_verifies_Menu_List_option_is_disabled(String menuOption, String visibility) {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onDataEntryPage.getList_FormsWizards(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Menu Option was Enabled", driver.findElements(By.xpath("//li[contains(@class,'" + visibility + "')]//a[contains(text(),'" + menuOption + "')]")).size() > 0);
    }

    @Then("User verifies Apply Link is disabled")
    public void user_verifies_Apply_Link_is_disabled() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Button was Enabled", onAllActivitiesPage.getBtnApply().getAttribute("class").contains("Disabled"));
    }

    @Then("User verifies {string} is present in Share my activities popup")
    public void user_verifies_is_present_in_Share_my_activities_popup(String value) {
        captureScreenshot(driver, testContext, false);
            Assert.assertTrue(value+" is not present in Share Full Control popup",onAllActivitiesPage.getMsg_ShareActivity().getText().contains(value));
    }
    @Then("User verifies link {string} is present in Share my activities popup")
    public void user_verifies_link_is_present_in_Share_my_activities_popup(String value) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(value+" is not present in Share Full Control popup",onAllActivitiesPage.getLink_RemoveShare().getText().contains(value));
    }

    @Then("User verifies {string} is Disabled on page")
    public void user_verifies_is_disabled_on_page(String buttonName) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(buttonName+"was enabled", findElement(driver, String.format(onCommonMethods_reactPage.alt_Field, buttonName,buttonName)).getAttribute("style").contains("opacity: 0.5"));
    }

    @Then("User verifies {string} is not present in Share my activities popup")
    public void user_verifies_is_not_present_in_Share_my_activities_popup(String value) {
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse(value+" is not present in Share Full Control popup",onAllActivitiesPage.getMsg_ShareActivity().getText().contains(value));
    }

    @Then("User Searches for application second time")
    public void user_Searches_for_application_second_time() {
        captureScreenshot(driver, testContext, false);
        WebElement element = getElement(driver, getExistingLocator(driver, onAllActivitiesPage.getSearchTxtBox_AllActivitiesPageMVC(), onAllActivitiesPage.getSearchTxtBox_AllActivitiesPageReact(), null, null));
        scrollToWebElement(driver, element);
        element.clear();
        sendKeys(driver, element, testContext.getMapTestData().get("newProductName1"));
        clickElementByJSE(driver, onAllActivitiesPage.getBtn_searchIcon());
        waitForPageToLoad(driver);
    }

    @Then("User verifies Dialog box Disappear")
    public void user_verifies_Dialog_box_Disappear() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("Dialog box was displayed", onAllActivitiesPage.getList_removeActivityHeading().size()>0);
    }


    @Then("User verifies {string} Tab from NavBar disappears")
    public void user_verifies_Tab_from_NavBar_disappears(String tabOption) {
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("Tab option was Displayed", findElements(driver, String.format(onAllActivitiesPage.listNewActivity, tabOption)).size()>0);
    }

    @Then("User Verifies {string} {string} navbar tab showing {string} icon")
    public void user_Verifies_navbar_tab_showing_icon(String page, String tabOption, String icon) {
        captureScreenshot(driver, testContext, false);
        switch (page) {
            case "first":
                Assert.assertTrue("Expected icon was not Displayed", findElement(driver, String.format(onAllActivitiesPage.navBarFirstTabIcon, tabOption)).getAttribute("class").contains(icon));
                break;
            case "second":
                Assert.assertTrue("Expected icon was not Displayed", onAllActivitiesPage.getList_navBarSecondTabIcon().size() > 0);
                break;
            default:
                throw new FLException("Invalid value provided for page: " + page);
        }
    }

    @Then("User verifies the {string} is not showing in result list")
    public void user_verifies_the_is_not_showing_in_result_list(String fieldName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse(fieldName+" was displayed",findElements(driver, String.format(onDataEntry_ReactPage.btn_UploadaCopyofVoidedCheck_MVC, fieldName)).size()>0);
    }

    @Then("User verifies No Dialog box appear for {string}")
    public void user_verifies_No_Dialog_box_appear(String heading) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse(heading + " Dialog box was displayed", onAllActivitiesPage.getList_removeActivityHeading().size()>0);
    }
}
