package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.EnrollmentPage;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.*;

public class Enrollment_StepDefinition extends FLUtilities {
    private WebDriver driver;
    private EnrollmentPage onEnrollmentPage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(Enrollment_StepDefinition.class);

    public Enrollment_StepDefinition(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onEnrollmentPage = context.getPageObjectManager().getOnEnrollmentPage();
    }

    @Then("User verify {int} records are imported in {string}")
    public void userVerifyButtonExistence(int occurrence, String buttonName) {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Expected records " + occurrence + " does not match" ,driver.findElements(By.xpath("//*[@class='" + testContext.getMapTestData().get(buttonName) + "']")).size() == occurrence);
    }

    @Then("User Verifies the error message {string} displayed")
    public void user_VerifiesTheErrorMessageDisplayed(String message) {
       waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        addPropertyValueInJSON(testContext.getTestCaseID(),testContext,"message",onEnrollmentPage.getTxt_MasterAgreementError().getText().trim());
        addPropertyValueInJSON(testContext.getTestCaseID(),testContext,"color",onEnrollmentPage.getTxt_MasterAgreementError().getCssValue("color"));
        Assert.assertEquals(message + "Error Message is not displayed", message, onEnrollmentPage.getTxt_MasterAgreementError().getText().trim());
        Assert.assertTrue(message + "Error Message is not displayed in red color",onEnrollmentPage.getTxt_MasterAgreementError().getCssValue("color").contains("rgba(255, 0, 0, 1)"));

    }

}
