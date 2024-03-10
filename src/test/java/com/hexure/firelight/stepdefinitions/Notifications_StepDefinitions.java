package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.CommonMethodsPage;
import com.hexure.firelight.pages.ReviewPage;
import com.hexure.firelight.pages.NotificationsPage;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

public class Notifications_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private TestContext testContext;
    private NotificationsPage onNotificationsPage;

    private CommonMethodsPage onCommonMethodsPage;
    private static final Logger Log = LogManager.getLogger(Notifications_StepDefinitions.class);
    String pdfFileName = "";
    public Notifications_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onNotificationsPage = context.getPageObjectManager().getNotificationsPage();
    }

    @And("User search application name from notifications page")
    public void userSearchApplicationName() {
        captureScreenshot(driver, testContext, false);
        sendKeys(driver, onNotificationsPage.getTxtbox_Search(), testContext.getMapTestData().get("newProductName"));
        clickElement(driver, onNotificationsPage.getBtn_Search());
    }

    @And("User expand application from notifications page")
    public void userExpandApplication() {
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(3000);
        syncElement(driver, findElement(driver, "//a[@aria-label='" + testContext.getMapTestData().get("newProductName") + "']"),EnumsCommon.TOCLICKABLE.getText());
        clickElement(driver, findElement(driver, "//a[@aria-label='" + testContext.getMapTestData().get("newProductName") + "']"));
    }

    @Then("User verify notification entries contains {string} on history dialog")
    public void verifyNotificationMessage(String entries){
        captureScreenshot(driver, testContext, false);
        entries += "," + testContext.getMapTestData().get("newProductName") + " - Activity Transferred";
        String[] entryList = entries.split(",");
        for (String entry : entryList) {
            Assert.assertTrue("Notification entries does not contain " + entry, onNotificationsPage.getTxt_Subject().getText().trim().contains(entry));
        }
    }



}

