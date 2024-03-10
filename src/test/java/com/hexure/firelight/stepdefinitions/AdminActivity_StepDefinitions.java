package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.*;
import cucumber.api.java.en.Then;
import cucumber.api.java.eo.Se;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

public class AdminActivity_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private TestContext testContext;
    private HomePage onHomePage;
    private AdminActivityPage onAdminActvityPage;
    private ManageActivityPage onManageActivityPage;
    private AllActivitiesPage onAllActivtiesPage;
    private AdminProductPage onAdminProductPage;
    private static final Logger Log = LogManager.getLogger(AdminActivity_StepDefinitions.class);
    public AdminActivity_StepDefinitions(TestContext context){
        testContext = context;
        driver = context.getDriver();
        onAdminActvityPage = context.getPageObjectManager().getOnAdminActivityPage();
        onHomePage = context.getPageObjectManager().getHomePage();
        onManageActivityPage = context.getPageObjectManager().getManageActivityPage();
        onAllActivtiesPage = context.getPageObjectManager().getAllActivitiesPage();
        onAdminProductPage = context.getPageObjectManager().getOnAdminProductPage();
    }

    @Then("User scroll to {string} tab")
    public void user_scroll_to_tab(String activityname) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, findElement(driver, String.format(onAdminActvityPage.listActivityTypeNames, activityname)));
    }

    @Then("User clicks on {string} and click on {string} tab")
    public void user_clicks_on_and_click_on_tab(String activityName, String nextActivityName) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, findElement(driver, String.format(onAdminActvityPage.listActivityNames, activityName)));
        syncElement(driver, findElement(driver, String.format(onAdminActvityPage.listActivityNames, nextActivityName)), EnumsCommon.TOCLICKABLE.getText());
        clickElementByJSE(driver, findElement(driver, String.format(onAdminActvityPage.listActivityNames, nextActivityName)));
    }

    @Then("User click on {string} and select {string} form menu list")
    public void user_click_on_and_select_form_menu_list(String formMenu, String formName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, findElement(driver, String.format(onHomePage.homeToolbar, formMenu)));
        if(!formName.equals(""))
            clickElementByJSE(driver, findElement(driver, String.format(onHomePage.listOrganisationConfig, formName)));
    }

    @Then("User remove Activity from Next Activities tab")
    public void user_remove_Activity_from_Next_Activities_tab() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver,onManageActivityPage.getBtn_RemoveActivity(),EnumsCommon.TOCLICKABLE.getText());
        clickElementByJSE(driver,onManageActivityPage.getBtn_RemoveActivity());
    }

    @Then("User add Activity from Next Activities tab")
    public void user_add_Activity_from_Next_Activities_tab() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver,onManageActivityPage.getBtn_AddActivityMVC(),EnumsCommon.TOCLICKABLE.getText());
        clickElement(driver, onManageActivityPage.getBtn_AddActivityMVC());
    }
    @Then("User clicks on {string} on admin toolbar")
    public void user_clicks_on_on_admin_toolbar(String barName) {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver,String.format(onAdminActvityPage.toolbarAdmin ,barName)));
    }
    @Then("User clicks on {string} on designer")
    public void user_clicks_on_on_wizard_designer(String value) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver, String.format(onAdminActvityPage.toolbar_SubMenu, value)));
    }
    @Then("User clicks on {string} button on designer page")
    public void user_clicks_on_button_on_designer_page(String btnName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver, String.format(onAdminActvityPage.listActivityNames,btnName)));
    }

    @Then("User verifies {string} organization name {string} in the dropdown list at the top of the page")
    public void user_verifies_organization_name_in_the_dropdown_list_at_the_top_of_the_page(String organizationName, String action) {
        switch (action) {
            case "showing":
                Assert.assertTrue("Organization name is not present in the list", onAdminActvityPage.txt_organizationName.stream().map(WebElement::getText).anyMatch(text -> text.equalsIgnoreCase(organizationName)));
                break;
            case "not showing":
                Assert.assertFalse("Organization name is present in the list", onAdminActvityPage.txt_organizationName.stream().map(WebElement::getText).anyMatch(text -> text.equalsIgnoreCase(organizationName)));
                break;
            default:
                throw new FLException("Invalid value provided for action: " + action);
        }
    }

    @Then("User {string} the checkbox {string}")
    public void user_the_checkbox(String action, String whichCheckBox) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
        switch (action) {
            case "check":
                Assert.assertFalse("Checkbox was checked", findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))).isSelected());
                clickElement(driver, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
                break;
            case "uncheck":
                Assert.assertTrue("Checkbox was unchecked", findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))).isSelected());
                clickElement(driver, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
                break;
            default:
                throw new FLException("Invalid value provided for action: " + action);
        }
    }
    @Then("User clicks {string} Tab on admin Home")
    public void user_clicks_Tab_on_admin_Home(String tabName) {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver, String.format(onAdminActvityPage.tab_AdminHomePage, tabName)));
        }
    @Then("User clicks on copy button on form url")
    public void user_clicks_on_copy_button_on_form_url() {
        waitForPageToLoad(driver);
        String formURl = onAdminProductPage.getFormURLCopied().getText();
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.FORMURL.getText(),formURl);
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(1000);
        clickElement(driver,onAdminProductPage.getBtn_CopyFormURL());
    }
}
