package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.DSBQueuePage;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;

public class DSBQueue_StepDefinitions extends FLUtilities
{
    private WebDriver driver;
    private DSBQueuePage onDSBQueuePage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(DSBQueue_StepDefinitions.class);

    public DSBQueue_StepDefinitions(TestContext context)
    {
        testContext = context;
        driver = context.getDriver();
        onDSBQueuePage = context.getPageObjectManager().getOnDSBQueuePage();
    }

    @Then("User verifies Application should be removed from current Queue DSB")
    public void userVerifiesApplicationShouldBeRemovedFromCurrentQueueDSB() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Application Failed To Remove from Current DSB Queue",
                onDSBQueuePage.getMsg_ReviewQueue().getText().trim().contains("No review found"));
    }

    @Then("User verifies Application should not appear in review queue page")
    public void userVerifiesApplicationShouldAppearInReviewQueuePaged() {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        Assert.assertTrue("Application Failed To Remove from Review Queue",
                onDSBQueuePage.getMsg_ReviewQueue().getText().trim().contains("No review found"));
    }

}
