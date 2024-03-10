package com.hexure.firelight.stepdefinitions;


import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.*;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.*;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.Select;
import java.util.*;
public class MyPreferences_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private MyPreferencesPage onMyPreferencesPage;
    private LoginPage onLoginPage;
    private TestContext testContext;

    private static final Logger Log = LogManager.getLogger(MyPreferences_StepDefinitions.class);

    public MyPreferences_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onMyPreferencesPage = context.getPageObjectManager().getOnMyPreferencesPage();
        onLoginPage = context.getPageObjectManager().getLoginPage();
    }

    @Then("User Select CRM dropdown as {string}")
    public void userSelectCRMDropdownAs(String CRMType) {
        captureScreenshot(driver, testContext, false);
        new Select(onMyPreferencesPage.getBtn_CRMDropdownValue()).selectByVisibleText(CRMType);
    }

    @Then("User on enters valid username as {string} and password for CRM Preferences and Save")
    public void userOnEntersValidUsernameAsAndPasswordForCRMPreferencesAndSave(String userName) {
        testContext.setCurrentTestUserName(userName);
        System.out.println("Current Test UserName = " + testContext.getCurrentTestUserName());
        sendKeys(driver,onLoginPage.getTxtbox_userName(), configProperties.getProperty(testContext.getCurrentTestUserName()));
        sendKeys(driver,onLoginPage.getTxtbox_Password(), configProperties.getProperty(testContext.getCurrentTestUserName() + "-password"));
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onMyPreferencesPage.getBtn_CRMSave());
    }

    @Then("User goes to Home page from My Preferences")
    public void userGoesToHomePagefromMyPreferences() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onMyPreferencesPage.getToolBar_HomePreferences());
    }

    @Then("User Now Navigate to Preferences page")
    public void user_Now_Navigate_to_Preferences_page() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onMyPreferencesPage.getToolBar_Preferences());
    }

    @Then("User verifies {string} is selected in locale")
    public void user_verifies_is_selected_in_locale(String dataValue) {
        captureScreenshot(driver, testContext, false);
        String actValue = new Select(getElement(driver, getExistingLocator(driver, onMyPreferencesPage.getDd_PreferencesLocaleMVC(), onMyPreferencesPage.getDd_PreferencesLocaleReact(), null, null))).getFirstSelectedOption().getText();
        Assert.assertEquals("Values are mismatched",dataValue, actValue);

    }

    @Then("User clicks on Save btn on preferences page")
    public void user_clicks_on_Save_btn_on_preferences_page() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onMyPreferencesPage.getBtn_CRMSave());
        waitForPageToLoad(driver);
    }

    @Then("User clicks  preferences tab in Review Queue Page")
    public void user_clicks_preferences_tab_in_Review_Queue_Page() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onMyPreferencesPage.getTab_Preference());
    }

    @Then("User Clicks on Unlock Button of {string}")
    public void user_Clicks_on_Unlock_Button_of(String appname) {
        waitForPageToLoad(driver);
        scrollToWebElement(driver,findElement(driver,String.format(onMyPreferencesPage.getBtnUnlockByAppName(),testContext.getMapTestData().get(appname))));
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver,String.format(onMyPreferencesPage.getBtnUnlockByAppName(),testContext.getMapTestData().get(appname))));
    }

    @Then("User Clicks on Review Button of {string}")
    public void user_Clicks_on_Review_Button_of(String appname) {
        waitForPageToLoad(driver);
        scrollToWebElement(driver,findElement(driver,String.format(onMyPreferencesPage.getBtnReviewByAppName(),testContext.getMapTestData().get(appname))));
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver,String.format(onMyPreferencesPage.getBtnReviewByAppName(),testContext.getMapTestData().get(appname))));
    }

    @Then("User Clicks on Button {string} in queue")
    public void user_Clicks_on_Button_in_queue(String button) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver,String.format(onMyPreferencesPage.getBtnInQueue(),button)));
    }

    @Then("User Clicks on Approve Button of {string}")
    public void user_Clicks_on_Approve_Button_of(String appname) {
        waitForPageToLoad(driver);
        scrollToWebElement(driver,findElement(driver,String.format(onMyPreferencesPage.getBtnApproveByAppName(),testContext.getMapTestData().get(appname))));
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver,String.format(onMyPreferencesPage.getBtnApproveByAppName(),testContext.getMapTestData().get(appname))));
    }

    @Then("User Verifies Button {string} is not Showing in queue")
    public void user_Verifies_Button_in_queue(String button) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(button+" was shown in Queue", driver.findElement(By.xpath(String.format(onMyPreferencesPage.getBtnInQueue(),button))).getAttribute("class").contains("shadow"));
    }

    @Then("User Verifies Preference Tab is not Visible")
    public void user_Verifies_Preference_Tab_is_not_Visible() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("Preference tab was visible", onMyPreferencesPage.getList_TabPreference().size()>0);
    }

    @Then("User Clicks On Link Attaching Supplemental Documents")
    public void user_Clicks_On_Link_Attaching_Supplemental_Documents() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver,onMyPreferencesPage.getLink_AttachingSupplementalDocuments());
    }

    @Then("User Returns To Main Window By closing The Traing Tab")
    public void user_Returns_To_Main_Window_By_closing_The_Traing_Tab() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        ArrayList<String> tabs = new ArrayList<>(driver.getWindowHandles());
        if (tabs.size() > 1)
            driver.close();

        driver.switchTo().window(tabs.get(0));
    }

}
