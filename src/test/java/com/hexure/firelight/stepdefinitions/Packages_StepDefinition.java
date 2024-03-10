package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.AllActivitiesPage;
import com.hexure.firelight.pages.CommonMethodsPage;
import com.hexure.firelight.pages.PackagesPage;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import static org.junit.Assert.assertTrue;

import javax.swing.*;

import java.util.List;

import static org.junit.Assert.assertTrue;

public class Packages_StepDefinition extends FLUtilities {
    private WebDriver driver;;
    private PackagesPage packagePage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(Packages_StepDefinition.class);

    public Packages_StepDefinition(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        packagePage=context.getPageObjectManager().getPackagePage();
    }

    @Then("User Enter {string} into the Text field of replace with rule set")
    public void user_Enter_into_the_Text_field_of_Replace_With_Rule_Set(String value){
        captureScreenshot(driver, testContext, false);
        packagePage.getTxtbox_ReplaceWithFormWizard().sendKeys(value);
        packagePage.getTxtbox_ReplaceWithFormWizard().sendKeys(Keys.DOWN);
        packagePage.getTxtbox_ReplaceWithFormWizard().sendKeys(Keys.ENTER);
    }

    @Then("User clicks on {string} tab on Package page")
    public void selectTab(String tabName){
        waitForPageToLoad(driver);
        syncElement(driver,driver.findElement(By.xpath(String.format(packagePage.tabsOnPackage,tabName))), EnumsCommon.TOCLICKABLE.getText());
        driver.findElement(By.xpath(String.format(packagePage.tabsOnPackage,tabName))).click();
        WebElement parentElement=driver.findElement(By.xpath(String.format(packagePage.tabsOnPackage,tabName)+"/.."));
        Assert.assertTrue("Controller is not active",parentElement.getAttribute("class").equals("active"));
    }

    @Then("User verify {string} under Forms and Wizards")
    public void verifyForm(String formName){
    WebElement element=driver.findElement(By.xpath(String.format(packagePage.formElement,formName)));
    syncElement(driver,element,EnumsCommon.TOVISIBLE.getText());
    Assert.assertTrue("Element is not Displayed", element.isDisplayed());
    }

    @Then("User verifies {string} is displayed")
    public void user_verifies_message_is_displayed(String tab) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(tab+" was not displayed",  packagePage.getTabs_RuleSetAndFormWizardPackage().isDisplayed());
    }

    @Then("User verifies rule set name {string} is displayed")
    public void user_verifies_rule_set_name_is_displayed(String tab) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(tab+" was not displayed",  packagePage.getTabs_RuleSetWindowName().isDisplayed());
    }

    @Then("User Enters {string} into the Text field of rule set to replace")
    public void user_Enters_into_the_Text_field_of_Rule_Set_To_Replace(String value){
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        packagePage.getTxtbox_RuleSetPackage().sendKeys(value);
        packagePage.getTxtbox_RuleSetPackage().sendKeys(Keys.DOWN);
        packagePage.getTxtbox_RuleSetPackage().sendKeys(Keys.ENTER);
    }

    @Then("User click {string} button")
    public void userClicksButton(String whichButton) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (whichButton) {
            case "Replace Rule Set":
                clickElement(driver, packagePage.getBtn_SubmitRulesSwapping());
                break;
            case "Yes":
                clickElement(driver, packagePage.getBtn_SubmitRulesSwappingYes());
                break;
            case "ok":
                clickElement(driver, packagePage.getBtn_SaveDialogYes());
                break;
            case "Replace Form/Wizard":
                clickElement(driver, packagePage.getBtn_SubmitFormSwapping());
                break;
            default:
                throw new FLException("Invalid value for: " + whichButton);
        }
    }

    @Then("User click on {string} link on Package page")
    public void clickOnLinkOnPackagePage(String tabName){
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver,driver.findElement(By.xpath(String.format(packagePage.tabsOnPackage,tabName))), EnumsCommon.TOCLICKABLE.getText());
        driver.findElement(By.xpath(String.format(packagePage.tabsOnPackage,tabName))).click();
    }

    @Then("User Enters {string} into the Text field of replace with rule set")
    public void user_Enters_into_the_Text_field_of_Replace_With_Rule_Set(String value){
        captureScreenshot(driver, testContext, false);
        packagePage.getTxtbox_ReplaceWithRuleSet().sendKeys(value);
        packagePage.getTxtbox_ReplaceWithRuleSet().sendKeys(Keys.DOWN);
        packagePage.getTxtbox_ReplaceWithRuleSet().sendKeys(Keys.ENTER);
    }

    @Then("User click {string} from Menu options")
    public void userClickFromMenuOptions(String menuOption) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (menuOption) {
            case "Designer":
                scrollToWebElement(driver, packagePage.getList_menuOptions().get(0));
                selectOptionFromList(driver, packagePage.getList_menuOptions(), menuOption, EnumsCommon.CLICK.getText());
                break;
            default:
                throw new FLException("Invalid value provided for menuOption " + menuOption);
        }
    }

    @Then("User Enter {string} into the Text field of rule set to replace")
    public void user_Enter_into_the_Text_field_of_Rule_Set_To_Replace(String value){
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        packagePage.getTxtbox_FormWizardToReplace().sendKeys(value);
        packagePage.getTxtbox_FormWizardToReplace().sendKeys(Keys.DOWN);
        packagePage.getTxtbox_FormWizardToReplace().sendKeys(Keys.ENTER);
    }

    @Then("User Verifies toast message")
    public void verifyToastMassageAndClose() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(2000);
        Assert.assertEquals("Replace Rule Set Toast box message mismatched", testContext.getMapTestData().get("replaceRuleSetPopup"), packagePage.getBtn_ReplaceRuleSetPopUp().getText().trim());
    }

    @Then("User verify {string} is present in Default Primary Rule Set in Wizard")
    public void user_verify_is_present_in_Default_rule_set_wizard(String expValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<WebElement> options = new Select(packagePage.getDd_DefaultPrimaryRuleSetWizard()).getOptions();
        if (expValue.isEmpty()) {
            boolean hasBlankOption = options.stream().anyMatch(actualValue -> actualValue.getText().isEmpty());
            Assert.assertTrue("Blank option was not present in Default primary Rule Set.", hasBlankOption);
        } else {
            boolean hasExpValue = options.stream().anyMatch(actualValue -> actualValue.getText().equals(expValue));
            Assert.assertTrue(expValue + " was not present in Default primary Rule Set.", hasExpValue);
        }
    }

    @Then("User verifies {string} is display")
    public void user_verifies_message_is_display(String tab) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(tab+" was not displayed", findElement(driver, String.format(packagePage.txt_FormHistoryMsg, tab)).isDisplayed());
    }

    @Then("User Verifies message as {string}")
    public void userVerifiesPopupMessage(String popupMsg) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Pop message different", packagePage.getBtn_ReplaceRuleSetMsg().getText().trim().contains(popupMsg));
    }

    @Then("User verify {string} is displayed")
    public void user_verify_message_is_displayed(String tab) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(tab+" was not displayed", findElement(driver, String.format(packagePage.txt_PackageHistoryMsg, tab)).isDisplayed());
    }

    @Then("User verify {string} is present in Default Primary Rule Set")
    public void user_verify_is_present_in_Default_Product_Type(String expValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<WebElement> options = new Select(packagePage.getDd_DefaultPrimaryRuleSet()).getOptions();
        if (expValue.isEmpty()) {
            boolean hasBlankOption = options.stream().anyMatch(actualValue -> actualValue.getText().isEmpty());
            Assert.assertTrue("Blank option was not present in Default primary Rule Set.", hasBlankOption);
        } else {
            boolean hasExpValue = options.stream().anyMatch(actualValue -> actualValue.getText().equals(expValue));
            Assert.assertTrue(expValue + " was not present in Default primary Rule Set.", hasExpValue);
        }
    }

    @Then("User Verifies toast message for replace form and wizard")
    public void verifyToastMassageforReplaceFormAndWizard() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(2000);
        Assert.assertEquals("Replace Rule Set Toast box message mismatched", testContext.getMapTestData().get("replaceRuleSetPopup"), packagePage.getBtn_ReplaceRuleSetPopUpFormWizard().getText().trim());
    }

    @Then("User verifies Product for Script status should be display {string}")
    public void UserverifiesProductforScriptstatusshouldbedisplayFalse(String option) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver, packagePage.getTxt_SingleLabelSales(),EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue(option + "Single Label is NOT showing", packagePage.getTxt_SingleLabelSales().isDisplayed());
    }
}
