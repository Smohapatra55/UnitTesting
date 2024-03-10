package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.FormDesignerPage;
import com.hexure.firelight.pages.GroupsPage;
import com.hexure.firelight.pages.TabAppPage;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class Groups_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private GroupsPage onGroupsPage;
    private TabAppPage onTabAppPage;
    private FormDesignerPage onFormDesignerPage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(Groups_StepDefinitions.class);

    public Groups_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onGroupsPage = context.getPageObjectManager().getOnGroupsPage();
        onTabAppPage = context.getPageObjectManager().getOnTabAppPage();
        onFormDesignerPage = context.getPageObjectManager().getOnFormDesignerPage();
    }

    @Then("User on Groups page selects Role Code as {string}")
    public void userOnGroupsPageSelectsRoleCodeAs(String roleCode) {
        captureScreenshot(driver, testContext, false);
        selectOptionFromList(driver, onGroupsPage.getList_RoleCodes(), roleCode, EnumsCommon.CLICK.getText());
        new WebDriverWait(driver, 10).until(ExpectedConditions.textToBePresentInElement((onGroupsPage.getTxtBoxArea_roleCode()), roleCode));
        captureScreenshot(driver, testContext, false);
        scrollInBrowserTillEnd(driver);
    }

    @Then("User clicks {string} from Menu options")
    public void userClicksFromMenuOptions(String menuOption) {
        captureScreenshot(driver, testContext, false);
        switch (menuOption) {
            case "Log Off":
                scrollToWebElement(driver, onGroupsPage.getList_menuOptions().get(0));
                selectOptionFromList(driver, onGroupsPage.getList_menuOptions(), menuOption, EnumsCommon.CLICK.getText());
                driver.manage().deleteAllCookies();
                break;

            default:
                throw new FLException("Invalid value provided for menuOption " + menuOption);
        }
    }

    @Then("User {string} checkbox {string}")
    public void userSelectsCheckbox(String userAction, String whichCheckBox) {
        waitForPageToLoad(driver);
        scrollToWebElement(driver, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
        checkBoxSelectYesNO(userAction, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
        captureScreenshot(driver, testContext, false);
    }

    @Then("User {string} checkbox {string} rule set")
    public void userSelectsCheckboxdynamic(String userAction, String whichCheckBox) {
        waitForPageToLoad(driver);
        scrollToWebElement(driver, findElement(driver, String.format(TabAppPage.checkBoxDynmatic, testContext.getMapTestData().get(whichCheckBox))));
        checkBoxSelectYesNO(userAction, findElement(driver, String.format(TabAppPage.checkBoxDynmatic, testContext.getMapTestData().get(whichCheckBox))));
        captureScreenshot(driver, testContext, false);
    }

    @Then("User {string} checkbox {string} from list")
    public void userSelectsCheckboxList(String userAction, String action) {
        waitForPageToLoad(driver);
        scrollToWebElement(driver, findElement(driver, "//div[text()='" + action + "']//ancestor::tr[@class='odd' or @class='even']//input[@id='chkSelect']"));
        checkBoxSelectYesNO(userAction, findElement(driver, "//div[text()='" + action + "']//ancestor::tr[@class='odd' or @class='even']//input[@id='chkSelect']"));
        captureScreenshot(driver, testContext, false);
    }

    @Then("User Verifies Groups settings are saved")
    public void userVerifiesGroupsSettingsAreSaved() {
        syncElement(driver, onTabAppPage.getLabel_GroupSave(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Groups Save Message Mismatched ", onTabAppPage.getLabel_GroupSave().getText().trim()
                .equalsIgnoreCase(testContext.getMapTestData().get("groupSaveMessage")));
    }

    @Then("User clicks on {string} group in the list")
    public void user_clicks_on_group_in_the_list(String codeName) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, findElement(driver, String.format(onGroupsPage.listRoleCodes, codeName)));
    }

    @Then("User clicks on {string} tab")
    public void user_clicks_on_tab(String tabName) {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, findElement(driver, String.format(onGroupsPage.tabsNames, tabName)), EnumsCommon.TOCLICKABLE.getText());
        clickElementByJSE(driver, findElement(driver, String.format(onGroupsPage.tabsNames, tabName)));
    }

    @Then("User put {string} in text box")
    public void user_put_in_text_box(String url) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        onGroupsPage.getTxtBox_SubmitEnableHTTP().clear();
        onGroupsPage.getTxtBox_SubmitEnableHTTP().sendKeys(testContext.getMapTestData().get(url));
    }

    @Then("User clicks on save button")
    public void user_clicks_on_save_button() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if(findElements(driver, "//button[@id='btnSaveGroup']").size() > 0)
            clickElementByJSE(driver, onGroupsPage.getBtn_SaveGroup());
        else
            clickElementByJSE(driver, onGroupsPage.getBtn_Save());
    }

    @Then("User Verifies checkbox {string} is {string}")
    public void userVerifiesSelectsCheckbox( String whichCheckBox, String userAction) {
        waitForPageToLoad(driver);
        scrollToWebElement(driver, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
        switch (userAction.toLowerCase()){
            case "selected" :
                Assert.assertTrue(whichCheckBox+" was not "+userAction,findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))).isSelected());
                break;
            case "unchecked" :
                Assert.assertFalse(whichCheckBox+" was not "+userAction,findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))).isSelected());
                break;
            case "disabled" :
                Assert.assertTrue(whichCheckBox+" was not "+userAction,findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))).getAttribute(userAction).equalsIgnoreCase("true"));
                break;
            default:
                new FLException(" Invalid value for User Action :"+userAction);
        }
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies {string} message is displayed")
    public void user_verifies_message_is_displayed(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(message+" was not displayed",  onGroupsPage.getMsg_GroupsSaved().isDisplayed());
        driver.manage().deleteAllCookies();
    }

    @Then("User verifies URL text box below Enable HTTP Redirect checkbox is {string}")
    public void user_verifies_URL_text_box_below_Enable_HTTP_Redirect_checkbox_is(String whichStatus) {
        captureScreenshot(driver, testContext, false);
        if (whichStatus.equalsIgnoreCase("disabled")){
            Assert.assertFalse("The URL text box was enabled", onTabAppPage.getTxt_URL().isEnabled());
        } else {
            Assert.assertTrue("The URL text box was disabled", onTabAppPage.getTxt_URL().isEnabled());
        }
    }

    @Then("User enters {string} in the URL field")
    public void user_enters_in_the_URL_field(String urlValue) {
        captureScreenshot(driver, testContext, false);
        onTabAppPage.getTxt_URL().sendKeys(testContext.getMapTestData().get("urlValue"));
    }

    @Then("User verify {string} button {string} on Admin page")
    public void userVerifyButton(String whichButton, String state) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        if(state.equalsIgnoreCase("exists"))
            Assert.assertTrue("Button " + whichButton + " is not displayed",findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichButton))).isDisplayed());
        else {
            if(findElements(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichButton))).size() > 0)
                Assert.assertTrue("Button " + whichButton + " is displayed", findElements(driver, String.format(TabAppPage.checkBox_hidden, testContext.getMapTestData().get(whichButton))).size() > 0);
            else
                Assert.assertTrue("Button " + whichButton + " is displayed", findElements(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichButton))).size() == 0);
        }
    }
    @Then("User verify {string} button {string} on All Activity page")
    public void userVerifyButtonOnAllActivityPage(String whichButton, String state) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        if(state.equalsIgnoreCase("exists"))
            Assert.assertTrue("Button " + whichButton + " is not displayed",findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichButton))).isDisplayed());
        else {
            if(findElements(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichButton))).size() > 0)
                Assert.assertTrue("Button " + whichButton + " is displayed", findElements(driver, String.format(TabAppPage.checkBox_hidden, testContext.getMapTestData().get(whichButton))).size() > 0);
            else
                Assert.assertTrue("Button " + whichButton + " is displayed", findElements(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichButton))).size() == 0);
        }
    }

    @Then("User verifies {string} is {string} on groups page")
    public void verifyRequiredSigningUsers(String button, String state) {
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(3000);
        if(state.equalsIgnoreCase("displayed"))
            Assert.assertTrue("Roles does not contain " + button, driver.findElement(By.xpath("//a[text()='" + button + "']")).isDisplayed());
        else
            Assert.assertTrue("Roles contains " + button, driver.findElements(By.xpath("//a[text()='" + button + "']")).size() == 0);
    }

    @Then("User verify error message {string} is displayed on groups page")
    public void verifyErrorMessage(String message) {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onGroupsPage.getMsg_GroupsError(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Message is not displayed " + message, onGroupsPage.getMsg_GroupsError().getText().contains(message));
    }

    @Then("User select all checkboxes on groups page")
    public void selectCheckboxes() {
        captureScreenshot(driver, testContext, false);
        for(WebElement checkbox : onGroupsPage.getChkGroups())
            clickElement(driver, checkbox);
    }

    @Then("User verifies Alerts and Print Button")
    public void user_verifies_Alerts_and_Print_Button() {
        captureScreenshot(driver, testContext, false);
            Assert.assertTrue("Alerts and Print Button was not visible", onTabAppPage.getBtn_LeftButton().isDisplayed());
    }

}