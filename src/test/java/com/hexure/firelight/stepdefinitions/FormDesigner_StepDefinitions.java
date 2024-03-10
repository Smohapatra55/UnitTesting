package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.libraies.pages_react.FormControls;
import com.hexure.firelight.pages.AdminProductPage;
import com.hexure.firelight.pages.FormDesignerPage;
import com.hexure.firelight.pages.HomePage;
import cucumber.api.java.en.Then;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.List;

public class FormDesigner_StepDefinitions extends FLUtilities {

    private WebDriver driver;
    private FormDesignerPage formDesignerPage;
    private TestContext testContext;
    private HomePage onHomepage;
    private AdminProductPage onAdminProductPage;

    public FormDesigner_StepDefinitions(TestContext context){
        testContext = context;
        driver = context.getDriver();
        formDesignerPage = context.getPageObjectManager().getOnFormDesignerPage();
        onAdminProductPage = context.getPageObjectManager().getOnAdminProductPage();
    }

    @Then("User deletes all the controls on form")
    public void deleteAllControl() {
        sleepInMilliSeconds(3000);
        List<WebElement> elements = driver.findElements(By.xpath(formDesignerPage.list_ComboBox));
        if (driver.findElements(By.xpath(formDesignerPage.controlList)).size() > 0) {
            while (!driver.findElements(By.xpath(formDesignerPage.controlList)).isEmpty()) {
                sleepInMilliSeconds(3000);
                clickElementByJSE(driver, driver.findElements(By.xpath(formDesignerPage.controlList)).get(0));
                sleepInMilliSeconds(2000);
                formDesignerPage.getLink_deleteControl().click();
                sleepInMilliSeconds(2000);
            }
        } else if (elements.size() > 0) {
            while (!driver.findElements(By.xpath(formDesignerPage.list_ComboBox)).isEmpty()) {
                sleepInMilliSeconds(3000);
                clickElementByJSE(driver, driver.findElements(By.xpath(formDesignerPage.list_ComboBox)).get(0));
                sleepInMilliSeconds(2000);
                formDesignerPage.getLink_deleteControl().click();
                sleepInMilliSeconds(2000);
            }
        } else if (driver.findElements(By.xpath(formDesignerPage.controlListReact)).size() > 0) {
            while (!driver.findElements(By.xpath(formDesignerPage.controlListReact)).isEmpty()) {
                sleepInMilliSeconds(3000);
                clickElementByJSE(driver, formDesignerPage.getLink_deletePage());
                sleepInMilliSeconds(2000);
                clickElementByJSE(driver, formDesignerPage.getBtn_CloseReact());
            }
        }
    }

    @Then("User add new page on form")
    public void addPageOnForm() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, formDesignerPage.getBtn_AddPage());
    }

    @Then("User add {string} control on form")
    public void addControlOnForm(String control){
        waitForPageToLoad(driver);
        WebElement element=null;
        switch(control.toUpperCase()){
            case  "BUTTON":
                element = driver.findElement(By.xpath(String.format(formDesignerPage.formControl, FormControls.BUTTON.getText())));
                break;
            case "TEXTBOX":
                element = driver.findElement(By.xpath(String.format(formDesignerPage.formControl, FormControls.TEXTBOX.getText())));
                break;
            case "COMBOBOX":
                element = driver.findElement(By.xpath(String.format(formDesignerPage.formControl, FormControls.COMBOBOX.getText())));
                break;
            case "SIGNATUREBOX":
                element = driver.findElement(By.xpath(String.format(formDesignerPage.formControl, FormControls.SIGNATURE_BOX.getText())));
                break;
            default:
        }
        scrollToWebElement(driver,element);
        syncElement(driver, element, EnumsCommon.TOCLICKABLE.getText());
        clickElement(driver, element);
    }

    @Then("User open properties for {string}")
    public void openProperties(String controlName){
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        Actions action = new Actions(driver);
        List<WebElement> elements=driver.findElements(By.xpath(formDesignerPage.list_ComboBox));
        if(driver.findElements(By.xpath(formDesignerPage.controlList)).size() > 0) {
            for(WebElement element:driver.findElements(By.xpath(formDesignerPage.controlList))){
                syncElement(driver, element,EnumsCommon.TOVISIBLE.getText());
                if(element.getAttribute("id").toLowerCase().contains(controlName.toLowerCase())) {
                    scrollToWebElement(driver,element);
                    action.click(element).build().perform();
                    action.doubleClick(element).build().perform();
                    syncElement(driver,formDesignerPage.getFieldPropertiesDialog(),EnumsCommon.TOVISIBLE.getText());
                }
            }
        }
        else if(elements.size() > 0) {
            for(WebElement element:elements){
                syncElement(driver, element,EnumsCommon.TOVISIBLE.getText());
                if(element.getAttribute("id").toLowerCase().contains(controlName.toLowerCase())) {
                    scrollToWebElement(driver,element);
                    action.click(element).build().perform();
                    action.doubleClick(element).build().perform();
                    syncElement(driver,formDesignerPage.getFieldPropertiesDialog(),EnumsCommon.TOVISIBLE.getText());
                }
            }
        } else if(driver.findElements(By.xpath(formDesignerPage.controlWizards)).size() > 0) {
            elements = driver.findElements(By.xpath(formDesignerPage.controlWizards));
            for(WebElement element:elements){
                if(element.getText().toLowerCase().contains(testContext.getMapTestData().get(controlName).toLowerCase())) {
                    scrollToWebElement(driver,element);
                    action.click(element).build().perform();
                    action.doubleClick(element).build().perform();
                    syncElement(driver,formDesignerPage.getCustomActionDialog(),EnumsCommon.TOVISIBLE.getText());
                }
            }
        }
    }

    @Then("User delete control for {string}")
    public void deleteControl(String controlName){
        captureScreenshot(driver, testContext, false);
        List<WebElement> elements=driver.findElements(By.xpath(formDesignerPage.controlList));
        Actions action = new Actions(driver);
        for(WebElement element:elements){
            if(element.getAttribute("id").toLowerCase().contains(controlName.toLowerCase())) {
                scrollToWebElement(driver,element);
                action.click(element).build().perform();
                sleepInMilliSeconds(2000);
                formDesignerPage.getLink_deleteControl().click();
            }
        }
    }

    @Then("User verify all controls are deleted")
    public void countControl(){
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Controls are not deleted", formDesignerPage.getControlCountFormDesigner().size() == 0);
    }

    @Then("User select {string} as current action and {string} as custom action")
    public void selectActionProperties(String action,String customAction){
        syncElement(driver,formDesignerPage.getCurrentActionType(),EnumsCommon.TOVISIBLE.getText());
        Select actiontype=new Select(formDesignerPage.getCurrentActionType());
        actiontype.selectByVisibleText(action);
        syncElement(driver,formDesignerPage.getCustomActionType(),EnumsCommon.TOVISIBLE.getText());
        Select customActionType=new Select(formDesignerPage.getCustomActionType());
        customActionType.selectByVisibleText(customAction);
        formDesignerPage.getBtn_Update().click();
        syncElement(driver,driver.findElement(By.xpath(formDesignerPage.dialogWait)),EnumsCommon.TOINVISIBLE.getText());
        formDesignerPage.getBtn_Close().click();
        syncElement(driver,formDesignerPage.getBtn_FormControlSave(),EnumsCommon.TOCLICKABLE.getText());
    }

    @Then("User save form controls")
    public void saveFormControls(){
        waitForPageToLoad(driver);
        formDesignerPage.getBtn_FormControlSave().click();
        syncElement(driver,driver.findElement(By.xpath(formDesignerPage.dialogWait)),EnumsCommon.TOVISIBLE.getText());
        syncElement(driver,driver.findElement(By.xpath(formDesignerPage.dialogWait)),EnumsCommon.TOINVISIBLE.getText());
        scrollToTopOfPage(driver);
        sleepInMilliSeconds(4000);
    }

    @Then("User selects {string} Form Designer list")
    public void user_selects_Form_Designer_list(String ddValue) {
        captureScreenshot(driver, testContext, false);
        new Actions(driver).moveToElement(formDesignerPage.getDdFormDesigner()).click().sendKeys(ddValue).click().perform();
    }
    @Then("User clicks on previous the fields and delete all fields")
    public void user_clicks_on_the_previous_fields_and_delete_all_fields() {
        captureScreenshot(driver, testContext, false);
        if(formDesignerPage.getListWizardField().size()!=0) {
            for (WebElement field : formDesignerPage.getListWizardField()) {
                    waitForPageToLoad(driver);
                    clickElementByJSE(driver, field);
                    sleepInMilliSeconds(1000);
                    clickElementByJSE(driver, onAdminProductPage.getIcon_DeleteWizard());
            }
        }
        else {
            Assert.assertTrue("Field is present", true);
        }
    }

    @Then("User selects {string} as current action and {string} as custom action from Custom Action Properties Dialog box")
    public void user_selects_as_current_action_and_as_custom_action_from_Custom_Action_Properties_Dialog_box(String action, String customAction) {
        captureScreenshot(driver, testContext, false);
        for(WebElement field : formDesignerPage.getListWizardField()) {
            new Actions(driver).doubleClick(field).perform();
            break;
        }
        syncElement(driver, formDesignerPage.getSelectCustomAction(), EnumsCommon.TOVISIBLE.getText());
        Select actiontype = new Select(formDesignerPage.getSelectCustomAction());
        actiontype.selectByVisibleText(action);
        syncElement(driver, formDesignerPage.getSelectCustomActionType(), EnumsCommon.TOVISIBLE.getText());
        Select customActionType = new Select(formDesignerPage.getSelectCustomActionType());
        customActionType.selectByVisibleText(customAction);
    }

    @Then("User Drags {string} to the droppable field")
    public void user_Drags_to_the_droppable_field(String dragValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver, findElement(driver,String.format(onAdminProductPage.sourceDragToolBox, dragValue)), EnumsCommon.TOCLICKABLE.getText());
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, "fieldName", findElement(driver,String.format(onAdminProductPage.sourceDragToolBox, dragValue)).getText());
       new Actions(driver).dragAndDrop(findElement(driver,String.format(onAdminProductPage.sourceDragToolBox, dragValue)), onAdminProductPage.getBlankDestinationFormId()).perform();
    }

    @Then("User verifies {string} the field is showing in wizard")
    public void user_verifies_the_field_is_showing_in_wizard(String dragValue) {
        Assert.assertTrue("Field is Not Present", findElement(driver, String.format(onAdminProductPage.sourceDragToolBox, dragValue)).getText().contains(testContext.getMapTestData().get("fieldName")));
    }

    @Then("User verifies {string} as current action and {string} as custom action from Custom Action Properties Dialog box")
    public void user_verifies_as_current_action_and_as_custom_action_from_Custom_Action_Properties_Dialog_box(String action, String customAction) {
        for(WebElement field : formDesignerPage.getListWizardField()) {
            if(formDesignerPage.getVerifyCustomAction().isDisplayed()) {
                waitForPageToLoad(driver);
                new Actions(driver).doubleClick(formDesignerPage.getVerifyCustomAction()).perform();
                break;
            }
        }
        syncElement(driver, formDesignerPage.getSelectCustomAction(), EnumsCommon.TOVISIBLE.getText());
        Select actiontype = new Select(formDesignerPage.getSelectCustomAction());
        actiontype.getFirstSelectedOption().getText().contains(action);
        syncElement(driver, formDesignerPage.getSelectCustomActionType(), EnumsCommon.TOVISIBLE.getText());
        Select customActionType = new Select(formDesignerPage.getSelectCustomActionType());
        customActionType.getFirstSelectedOption().getText().contains(customAction);
    }
    @Then("User Clicks on Delete Control")
    public void userClicksDeleteControl() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, formDesignerPage.getLink_deleteControl());

    }
    @Then("User Clicks on Close PopUp")
    public void userClicksClosePop() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, formDesignerPage.getClosePopUpp());

    }

    @Then("User deletes all the combobox on form")
    public void deleteAllCombobox() {
        while (!driver.findElements(By.xpath(formDesignerPage.getComboBox())).isEmpty()) {
            sleepInMilliSeconds(500);
            clickElementByJSE(driver, driver.findElements(By.xpath(formDesignerPage.getComboBox())).get(0));
            sleepInMilliSeconds(500);
            formDesignerPage.getLink_deleteControl().click();
            sleepInMilliSeconds(500);
        }
    }

}
