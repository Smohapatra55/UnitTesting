package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.*;
import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.pages.GmailPage;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.util.*;

public class Gmail_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private GmailPage onGmailPage;
    private TestContext testContext;
    private static final Logger Log = LogManager.getLogger(Gmail_StepDefinitions.class);
    String mailBody = "";

    public Gmail_StepDefinitions(TestContext context) {
        testContext = context;
        driver = context.getDriver();
        onGmailPage = context.getPageObjectManager().getGmailPage();
    }

    @Then("User login to gmail account with signer email")
    public void loginToGmailAccount() {
        captureScreenshot(driver, testContext, false);
        driver.get("https://www.gmail.com");
        onGmailPage.getTxtbox_Username().sendKeys(testContext.getMapTestData().get("emailAddress"));
        clickElement(driver, onGmailPage.getBtn_Next());
        syncElement(driver, onGmailPage.getTxtbox_Password(), EnumsCommon.TOVISIBLE.getText());
        onGmailPage.getTxtbox_Password().sendKeys(testContext.getMapTestData().get("emailPassword"));
        clickElement(driver, onGmailPage.getBtn_Next());
        syncElement(driver, onGmailPage.getBtn_Compose(), EnumsCommon.TOVISIBLE.getText());
        driver.navigate().refresh();
    }

    @Then("User moves to gmail account and delete all existing mails")
    public void deleteMails() {
        captureScreenshot(driver, testContext, false);
        driver.get("https://www.gmail.com");
        syncElement(driver, onGmailPage.getBtn_Compose(), EnumsCommon.TOVISIBLE.getText());
        clickElement(driver, onGmailPage.getBtn_SelectAllEmails());
        clickElement(driver, onGmailPage.getBtn_Delete());
    }

    @Then("User select email with subject {string} on gmail page")
    public void selectEmail(String subject) {
        captureScreenshot(driver, testContext, false);
        String appName = testContext.getMapTestData().get("newProductName");
        String tempSigner = testContext.getMapTestData().get("signerFullName") + appName.substring(appName.lastIndexOf(" "));
        HashMap<String, String> mail= GMailUtil.getGmailDataByBodyAndSubject(testContext.getMapTestData().get(subject), testContext.getMapTestData().get("signerFullName") + " " + appName.substring(appName.indexOf("AT " + testContext.getMapTestData().get("product"))));
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.EMAILLINK.getText(), mail.get("body").substring(mail.get("body").indexOf("https"), mail.get("body").indexOf("and enter the last")).trim());
    }

    @Then("User saves the external SSN link from email on gmail page")
    public void navigateExternalSSN() {
        captureScreenshot(driver, testContext, false);
        int linkSSNSize =onGmailPage.getLink_ExternalSSN().size() - 1;
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.EMAILLINK.getText(), onGmailPage.getLink_ExternalSSN().get(linkSSNSize).getText().trim());
        sleepInMilliSeconds(2000);
    }

    @Then("User verify {string} email with subject {string} on gmail page is not received")
    public void selectReviewEmail(String operation, String subject) {
        captureScreenshot(driver, testContext, false);
        HashMap<String, String> mail = new HashMap<String, String>();
        try {
            mail = GMailUtil.getGmailDataByBodyAndSubject(subject, testContext.getMapTestData().get("ownerName1"));
        } catch (Exception e) {
            Assert.assertTrue("Mail is received", mail.size() == 0);
        }
    }

    @Then("User select {string} email with subject {string} on gmail page and save {string}")
    public void selectReviewEmail(String operation, String subject, String requiredParam) {
        captureScreenshot(driver, testContext, false);
        String additionalContent = "";
        mailBody = "";
        Calendar calendar = Calendar.getInstance();
        TimeZone fromTimeZone = calendar.getTimeZone();
        TimeZone toTimeZone = TimeZone.getTimeZone("UTC");

        calendar.setTimeZone(fromTimeZone);
        calendar.add(Calendar.MILLISECOND, fromTimeZone.getRawOffset() * -1);
        if (fromTimeZone.inDaylightTime(calendar.getTime()))
            calendar.add(Calendar.MILLISECOND, calendar.getTimeZone().getDSTSavings() * -1);

        calendar.add(Calendar.MILLISECOND, toTimeZone.getRawOffset());
        if (toTimeZone.inDaylightTime(calendar.getTime()))
            calendar.add(Calendar.MILLISECOND, toTimeZone.getDSTSavings());

        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String timeZoneDate = dateFormat.format(calendar.getTime()).toString();

        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.MAILDATE.getText(), DateTimeFormatter.ofLocalizedDate(FormatStyle.FULL).format(LocalDate.parse(timeZoneDate)));
        if (subject.contains("AppNameDate"))
            subject = subject.replace("AppNameDate", testContext.getMapTestData().get("newProductName").substring(testContext.getMapTestData().get("newProductName").lastIndexOf(" ")));
        else if (subject.contains("AppName"))
            subject = subject.replace("AppName", "newProductName");

        subject = replaceContent(subject);

        HashMap<String, String> mail = new HashMap<String, String>();
        if(operation.contains("additionalContent")) {
            switch (operation) {
                case "account email additionalContent":
                    additionalContent = testContext.getMapTestData().get("additionalContent");
                    operation = operation.replace(" additionalContent", "");
                    break;
                case "account email additionalContent1":
                    additionalContent = testContext.getMapTestData().get("additionalContent1");
                    operation = operation.replace(" additionalContent1", "");
                    break;
                case "account email additionalContent2":
                    additionalContent = testContext.getMapTestData().get("additionalContent2");
                    operation = operation.replace(" additionalContent2", "");
                    break;
                default:
                    additionalContent = testContext.getMapTestData().get("additionalContent");
            }
        }

        if (additionalContent.contains("AppName"))
            additionalContent = additionalContent.replace("AppName", "newProductName");

        additionalContent = replaceContent(additionalContent);

        switch (operation.toLowerCase()) {
            case("owner complete filling application"):
               mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("ownerName1"));
                break;
            case("joint owner"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("jointOwnerName"));
                break;
            case("owner complete signature additionalcontent"):
            case("owner complete signature"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("reviewerName"));
                break;
            case("insured complete signature"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("insuredName1"));
                break;
            case("passcode application"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("reviewerName"));
                break;
            case("passcode application reviewer1"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("reviewerName1"));
                break;
            case("signer download application additionalcontent"):
            case("signer download application"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("signerName1"));
                break;
            case("agent email additionalcontent"):
            case("agent email"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("agentName"));
                break;
            case("account email"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent  + testContext.getMapTestData().get("accountName"));
                break;
            case("user email"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("userName"));
                break;
            case("email body"):
            case("email body additionalcontent"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent );
                break;
            case("reviewer1 email"):
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, "Dear " + testContext.getMapTestData().get("reviewerName1"));
                break;
            default:
                mail = GMailUtil.getGmailDataByBodyAndSubject(subject, additionalContent + testContext.getMapTestData().get("reviewerName"));
        }
        mailBody = mail.get("body");
        String link = "";
        if(requiredParam.equalsIgnoreCase("email link")) {
            link = getEmailLink(mailBody);
            addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.EMAILLINK.getText(), link);
        }
        else if (requiredParam.equalsIgnoreCase("passcode"))
            addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.PASSCODE.getText(), mailBody.substring(mailBody.lastIndexOf(" ")).trim().replace(".",""));
        else if (requiredParam.equalsIgnoreCase("body"))
            addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.MAILBODY.getText(), mailBody);
    }

    public String getEmailLink(String mailBody) {
        String[] lstContent = {", and enter the", "and enter the", ">Click here", ", enter the", ", Enter the", ". If","Sincerely"};
        for (String content : lstContent) {
            if (mailBody.contains(content) & mailBody.indexOf(content) > mailBody.lastIndexOf("https"))
                return mailBody.substring(mailBody.lastIndexOf("https"), mailBody.lastIndexOf(content)).trim();
        }
        if (mailBody.contains("access to view"))
            return mailBody.substring(mailBody.lastIndexOf("https"), mailBody.indexOf(" \r\n\r\nSincerely")).trim();
        return null;
    }

    @Then("User verify expected mailbody is {string}")
    public void verifyMailContent(String content) {
        mailBody = mailBody.replaceAll("[\\\r\\\n]+","");
        content = replaceContent(testContext.getMapTestData().get(content));
        Log.info("Mail body is " + mailBody);
        Log.info("Content is " + content);
        Assert.assertTrue("Email content does not match expected :"+ content.trim() +" Actual :"+mailBody.trim(), mailBody.trim().contains(content.trim()));
    }

    @Then("User verify saved {string} and {string} from mail are same")
    public void verifyMailContent(String actualLink, String expectedLink) {
        Assert.assertTrue(actualLink + " is not equal to " + expectedLink, testContext.getMapTestData().get(actualLink).equalsIgnoreCase(testContext.getMapTestData().get(expectedLink)));
    }

    public String replaceContent(String content) {
        String[] replacement = new String[]{"emailLink", "agentName", "reviewerName1", "reviewerName", "signerName1", "jurisdiction", "newProductName", "mailCurrentDate", "userName", "accountName", "reviewerUrl", "recipientPasscode", "signerFullName", "ownerPasscode", "reviewerPasscode"};
        for(String replace : replacement) {
            if(content.contains(replace))
                content = content.replaceAll(replace, testContext.getMapTestData().get(replace));
        }
        return content;
    }

}
