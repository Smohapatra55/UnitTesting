package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.HistoryPage;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

public class History_StepDefinitions extends FLUtilities
{
    private WebDriver driver;
    private HistoryPage onHistoryPage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(History_StepDefinitions.class);

    public History_StepDefinitions(TestContext context)
    {
        testContext = context;
        driver = context.getDriver();
        onHistoryPage = context.getPageObjectManager().getOnHistoryPage();
    }

    @Then("User verifies Application appears in History with comment {string}")
    public void userVerifiesApplicationAppearsInHistoryWithComment(String status) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Application Did Not Appear In History With Comment " + status, onHistoryPage.verifyIfApplicationInHistory(testContext));
    }

    @Then("User verifies Application appears in History with comment {string} for Reject")
    public void userVerifiesApplicationAppearsInHistoryWithCommentforReject(String status) {
        waitForPageToLoad(driver);
        syncMultipleElement(driver,onHistoryPage.getList_HistoryApplicationReject(),EnumsCommon.TOVISIBLE.getText());
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Application Did Not Appear In History With Comment " + status, onHistoryPage.verifyIfApplicationInHistoryforReject(testContext));
    }

}
