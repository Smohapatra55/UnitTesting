package com.hexure.firelight.stepdefinitions;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.AdminReviewQPage;
import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import java.util.List;
import java.util.Map;

public class AdminReviewQ_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private TestContext testContext;
   private AdminReviewQPage onAdminReviewQPage;
    private static final Logger Log = LogManager.getLogger(AdminReviewQ_StepDefinitions.class);
    public AdminReviewQ_StepDefinitions(TestContext context){
        testContext = context;
        driver = context.getDriver();
        onAdminReviewQPage = context.getPageObjectManager().getAdminReviewQPage();

    }

    @Then("User Verifies {string} Queue is Selected")
    public void user_Verifies_Queue_is_Selected(String queueName) {
        captureScreenshot(driver, testContext, false);
        if(queueName.equalsIgnoreCase("first")){
            Assert.assertTrue(queueName+ " Queue was not selected",onAdminReviewQPage.getList_QueueName().get(0).getAttribute("onclick").contains("Selected"));
        } else {
            boolean flag=false;
            for (WebElement queue : onAdminReviewQPage.getList_QueueName()){
                if(queue.getText().trim().equalsIgnoreCase(queueName)){
                   flag = true;
                }
            }
            Assert.assertTrue(queueName+ " Queue was not selected",flag);
        }
    }
    @Then("User Clicks on {string} Queue")
    public void user_Clicks_on_Queue(String queueName) {
        captureScreenshot(driver, testContext, false);
            for (WebElement queue : onAdminReviewQPage.getList_QueueName()){
                if(queue.getText().trim().equalsIgnoreCase(queueName)){
                   clickElementByJSE(driver,queue);
                }
            }
    }

    @Then("User verifies values")
    public void user_verifies_values(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for(Map<String, String> fieldData : formFields) {
            String dataItemId = fieldData.get("data-dataitemid");
            String id = fieldData.get("id");
            String value = fieldData.get("value");
            Assert.assertTrue("The values was not filled ",findElement(driver, String.format(onAdminReviewQPage.dataFields,  dataItemId,id)).getAttribute("value").toString().equalsIgnoreCase(value) );
        }
    }

    @Then("User sets values")
    public void user_sets_values(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for(Map<String, String> fieldData : formFields) {
            String dataItemId = fieldData.get("data-dataitemid");
            String id = fieldData.get("id");
            String value = fieldData.get("value");
            sendKeys(driver,findElement(driver, String.format(onAdminReviewQPage.dataFields,  dataItemId,id)),value);
        }
    }

    @Then("User Verifies Error Message")
    public void user_Verifies_errormsg(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for(Map<String, String> fieldData : formFields) {
            String dataItemId = fieldData.get("data-dataitemid");
            String id = fieldData.get("id");
            String value = fieldData.get("value");
            String errorMsg = fieldData.get("errorMessage");
            Assert.assertTrue("The error message was not matched ",findElement(driver, String.format(onAdminReviewQPage.dataFieldsError,  dataItemId,id)).getText().trim().equalsIgnoreCase(errorMsg) );
        }
    }

}
