package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.*;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;

public class ClientAuthentication_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private ClientAuthenticationPage onClientAuthenticationPage;
    private TestContext testContext;

    private static final Logger Log = LogManager.getLogger(ClientAuthentication_StepDefinitions.class);

    public ClientAuthentication_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onClientAuthenticationPage = context.getPageObjectManager().getClientAuthenticationPage();
    }


    @Then("User Verifies Lexis Nexis Questionnaire is showing")
    public void User_Verifies_Lexis_Nexis_Questionnaire_is_showing() {
        captureScreenshot(driver, testContext, false);
        if (testContext.getUiType().equalsIgnoreCase(EnumsCommon.UITYPE_REACT.getText())) {
            syncElement(driver, onClientAuthenticationPage.getClient_AuthenticationBox(), EnumsCommon.TOVISIBLE.getText());
            captureScreenshot(driver, testContext, false);
            Assert.assertTrue("Client Authentication Page Visible", onClientAuthenticationPage.getClient_AuthenticationBox().isDisplayed());
        } else {
            syncElement(driver, onClientAuthenticationPage.getClient_AuthenticationBox(), EnumsCommon.TOVISIBLE.getText());
            captureScreenshot(driver, testContext, false);
            Assert.assertTrue("Client Authentication Page NOT Visible", onClientAuthenticationPage.getClient_AuthenticationBox().isDisplayed());
        }
    }

    @Then("User Select {string} Answer in Questionnaire")
    public void User_Select_First_Answer_in_Questionnaire(String questionNumber){
        captureScreenshot(driver, testContext, false);
        switch (questionNumber) {
            case "First":
                getElement(driver, getExistingLocator(driver, onClientAuthenticationPage.getSelectAnswerForFirstQuestionMVC(), onClientAuthenticationPage.getSelectAnswerForFirstQuestionReact(), null, null)).click();
                break;
            case "Second":
                getElement(driver, getExistingLocator(driver, onClientAuthenticationPage.getSelectAnswerForSecondQuestionMVC(), onClientAuthenticationPage.getSelectAnswerForSecondQuestionReact(), null, null)).click();
                break;
            case "Third":
                getElement(driver, getExistingLocator(driver, onClientAuthenticationPage.getSelectAnswerForThirdQuestionMVC(), onClientAuthenticationPage.getSelectAnswerForThirdQuestionReact(), null, null)).click();
                break;
            default:
                throw new FLException("Invalid Value Provided For Question Number " + questionNumber);
        }
    }

    @Then("User clicks Authentication Submit button")
    public void userClickSubmitLink() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver,getElement(driver, getExistingLocator(driver, onClientAuthenticationPage.getBtn_submitButtonReact(), onClientAuthenticationPage.getBtn_submitButtonMvc(), null, null)));
    }

}