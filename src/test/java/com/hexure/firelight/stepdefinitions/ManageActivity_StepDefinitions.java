package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.ManageActivityPage;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;

public class ManageActivity_StepDefinitions extends FLUtilities
{
    private WebDriver driver;
    private ManageActivityPage onManageActivityPage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(ManageActivity_StepDefinitions.class);

    public ManageActivity_StepDefinitions(TestContext context)
    {
        testContext = context;
        driver = context.getDriver();
        onManageActivityPage = context.getPageObjectManager().getManageActivityPage();
    }

    @Then("User selects {string} Type in Dropdown")
    public void userSelectsTypeInDropdown(String allpicationType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        new Select(onManageActivityPage.getDd_applicationType()).selectByVisibleText(allpicationType);
    }

    @Then("User click Add activity button")
    public void userClickAddActivityButton() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onManageActivityPage.getBtn_addActivity());
    }


    @Then("Verifies Multiple Activities tab will Have new Table with recently added application")
    public void verifiesMultipleActivitiesTabWillHaveNewTableWithRecentlyAddedApplication() {
        captureScreenshot(driver, testContext, false);
        syncElement(driver,onManageActivityPage.getTable_applicationTable(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("New Table is not displayed",onManageActivityPage.getTable_applicationTable().isDisplayed());
        Assert.assertEquals("New Application not displayed in table",testContext.getMapTestData().get("newProductName"),onManageActivityPage.getTxt_NewApplicationNameinTable().getText().trim());
       }

    @Then("User verifies New Application Added on Multiple Activities page")
    public void userVerifiesNewApplicationAddedOnMultipleActivitiesPage() {
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("New Application not Added on Multiple Activities page",testContext.getMapTestData().get("newProductName"),onManageActivityPage.getTxt_NewApplicationNameinTable().getText().trim());
    }

    @Then("User clicks on Create Button on Top it get changed to {string}")
    public void userClicksOnCreateButtonOnTopItGetChangedToUpdate(String updatebuttontext) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onManageActivityPage.getBtn_CreateUpdate());
        syncElement(driver,onManageActivityPage.getBtn_Update(),EnumsCommon.TOVISIBLE.getText());
        Assert.assertEquals("Update button text mismatched",updatebuttontext,onManageActivityPage.getBtn_CreateUpdate().getText().trim());
    }

    @Then("User clicks on Link Icon")
    public void userClicksOnLinkIconAtTheBottomOfUpdateButton() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onManageActivityPage.getIcon_link());
    }

    @Then("User verifies the {string} is open & verify the name of linked activity")
    public void userVerifiesTheIsOpenVerifyTheNameOfLinkedActivity(String linkedActivityPopBoxTitle) {
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("linked activity mismatched/not open",linkedActivityPopBoxTitle,onManageActivityPage.getTxt_LinkedActivitiesPopupBox().getText().trim());
        Assert.assertEquals("Linked activity name mismatched.",testContext.getMapTestData().get("newProductName"),getElement(driver, getExistingLocator(driver, onManageActivityPage.getTxt_linkedActivityNameMVC(), onManageActivityPage.getTxt_linkedActivityNameReact(), null, null)).getText().trim());
    }

    @Then("User clicks on Linked activity name")
    public void userClicksOnLinkedActivityName() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,getElement(driver, getExistingLocator(driver, onManageActivityPage.getTxt_linkedActivityNameMVC(), onManageActivityPage.getTxt_linkedActivityNameReact(), null, null)));
    }

    @Then("User verifies the parent activity and product is {string}")
    public void verifyParentActivity(String appName) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Parent activity " + appName + " is not displayed", getElement(driver, getExistingLocator(driver, onManageActivityPage.getTxt_linkedActivityNameMVC(), onManageActivityPage.getTxt_linkedActivityNameReact(), null, null)).getText().trim().contains(appName));
    }

    @Then("User click on activity name {string}")
    public void user_click_on_activity_name(String activityName) {
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(4000);
        clickElementByJSE(driver, findElement(driver, String.format(onManageActivityPage.listNextActivity, activityName)));
    }
    @Then("User clicks on Linked activity button")
    public void user_clicks_on_Linked_activity_button() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onManageActivityPage.getBtn_LinkedActivty());
    }
    @Then("User verifies {string} is disabled in top menu")
    public void user_verifies_is_disabled_in_top_menu(String btnName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse(btnName+" was Enabled", findElement(driver,String.format(onManageActivityPage.getBtn_TopMenu(),btnName)).isEnabled());
    }
}
