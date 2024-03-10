package com.hexure.firelight.stepdefinitions;

import com.hexure.firelight.libraies.Enums.EnumsJSONProp;
import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import com.hexure.firelight.pages.*;
import cucumber.api.java.en.Then;
import io.cucumber.datatable.DataTable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Assert;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import org.openqa.selenium.interactions.Actions;
import io.cucumber.datatable.DataTable;
import org.openqa.selenium.interactions.Actions;
import java.util.List;

import java.util.List;
import java.util.Map;

public class AdminProduct_StepDefinitions extends FLUtilities {
    private WebDriver driver;
    private TestContext testContext;
    private AdminProductPage onAdminProductPage;
    private Groups_StepDefinitions onGroupsStepDefinitions;
    private SignaturesPage onSignaturesPage;
    private DataEntryPage onDataEntryPage;
    private AllActivitiesPage onAllActivitiesPage;
    private FormDesignerPage onFormDesignerPage;
    private GroupsPage onGroupsPage;
    private AdminActivityPage onAdminActvityPage;
    private static final Logger Log = LogManager.getLogger(AdminProduct_StepDefinitions.class);
    int i;
    public AdminProduct_StepDefinitions(TestContext context){
        testContext = context;
        driver = context.getDriver();
        onAdminProductPage = context.getPageObjectManager().getOnAdminProductPage();
        onGroupsStepDefinitions = new Groups_StepDefinitions(testContext);
        onSignaturesPage = context.getPageObjectManager().getOnSignaturesPage();
        onDataEntryPage = context.getPageObjectManager().getDataEntryPage();
        onAllActivitiesPage = context.getPageObjectManager().getAllActivitiesPage();
        onFormDesignerPage = context.getPageObjectManager().getOnFormDesignerPage();
        onGroupsPage = context.getPageObjectManager().getOnGroupsPage();
        onAdminActvityPage = context.getPageObjectManager().getOnAdminActivityPage();
    }

    @Then("User Clicks on Add New Product Link")
    public void user_Clicks_on_Add_New_Product_Link() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAdminProductPage.getLink_AddNewProduct());
    }

    @Then("User Enters {string} in Text Field {string}")
    public void user_Enters_in_Text_Field(String text, String txtFieldName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        WebElement field;
        if(findElements(driver,String.format(onAdminProductPage.getElementById(),testContext.getMapTestData().get(txtFieldName))).size() > 0)
            field = findElement(driver,String.format(onAdminProductPage.getElementById(),testContext.getMapTestData().get(txtFieldName)));
        else
            field = findElement(driver,String.format(onAdminProductPage.getTxtBox_FieldName(),txtFieldName));
        field.clear();
        clickElement(driver, field);
        field.sendKeys(text);
    }

    @Then("User select {string} as {int} {string} days from current date")
    public void selectDate(String field, int value, String dateValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        LocalDate currentDate = LocalDate.now();
        DateTimeFormatter format = DateTimeFormatter.ofPattern(("MM/dd/yyyy"));
        if(dateValue.equalsIgnoreCase("previous"))
            currentDate = currentDate.minusDays(value);
        else
            currentDate = currentDate.plusDays(value);

        sendKeys(driver,findElement(driver,String.format(onAdminProductPage.getElementById(),testContext.getMapTestData().get(field))),currentDate.format(format));
    }

    @Then("User Enters {string} in Email Template")
    public void userEnterTemplate(String text) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        sendKeys(driver, onAdminProductPage.getTxt_Template(), onAdminProductPage.getTxt_Template().getText() + text);
    }

    @Then("User removes {string} in Email Template")
    public void userRemoveTemplate(String text) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        sendKeys(driver, onAdminProductPage.getTxt_Template(), onAdminProductPage.getTxt_Template().getText().substring(0, onAdminProductPage.getTxt_Template().getText().indexOf(text)));
    }

    @Then("User clicks on {string} button in Admin App")
    public void user_clicks_on_Save_Product_Config_button(String button) {
        onGroupsStepDefinitions.user_clicks_on_save_button();
    }

    @Then("User Clicks on toolbar {string}")
    public void user_Verifies_toolbar(String toolbar) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,findElement(driver,String.format(onSignaturesPage.toolBarWithText,toolbar)));
    }

    @Then("User Selects {string} in Product Config Tab")
    public void user_Selects_in_Product_Config_Tab(String option) {
        captureScreenshot(driver, testContext, false);
        selectOptionFromList(driver,onAdminProductPage.getList_OptionProductConfig(),option, EnumsCommon.CLICK.getText());
    }

    @Then("User Selects {string} in Sales Agreement Table")
    public void user_Selects_in_Sales_Agreement_Table(String productName) {
        scrollToWebElement(driver,findElement(driver,String.format(onAdminProductPage.getOptionByTextSalesAgreementTable(),productName)));
        captureScreenshot(driver, testContext, false);
       clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getOptionByTextSalesAgreementTable(),productName)));
    }

    @Then("User Selects {string} in Package")
    public void user_Selects_in_Package(String productName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if(findElements(driver,String.format(onAdminProductPage.getOptionSelectedByTextPackage(),productName)).size() == 0)
        clickElement(driver,findElement(driver,String.format(onAdminProductPage.getOptionByTextPackage(),productName)));
    }

    @Then("User Clicks on {string} in admin APP")
    public void userClicksonInAdminApp(String txtFieldName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if(testContext.getMapTestData().containsKey(txtFieldName))
            clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getElementById(),testContext.getMapTestData().get(txtFieldName))));
        else
            clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getElementById(),txtFieldName)));
    }
   @Then("User Deletes Control {string} on Admin Form Designer if Present")
   public void userClicksAndDeletesControlOnFormDesigner(String txtFieldName) {
       syncElement(driver, onFormDesignerPage.getLink_deleteControl(), EnumsCommon.TOCLICKABLE.getText());
       captureScreenshot(driver, testContext, false);
       List<WebElement> list_formControl = findElements(driver, String.format(onAdminProductPage.getElementById(), txtFieldName));
       if (!list_formControl.isEmpty()) {
           clickElementByJSE(driver, findElement(driver, String.format(onAdminProductPage.getElementById(), txtFieldName)));
           syncElement(driver, onFormDesignerPage.getLink_deleteControl(), EnumsCommon.TOCLICKABLE.getText());
           clickElement(driver, onFormDesignerPage.getLink_deleteControl());
           sleepInMilliSeconds(2000);
       }
    }

    @Then("User Deletes checkbox on Admin Wizard Designer if Present")
    public void userClicksAndDeletesControlOnWizardDesigner() {
        captureScreenshot(driver, testContext, false);
        List<WebElement> list_wizControl = driver.findElements(By.xpath("//div[@class='wizardDesignerComponent__checkBox']//i"));
           if (!list_wizControl.isEmpty()) {
            clickElementByJSE(driver, onAdminProductPage.getCheckBoxDesignerWizard());
            syncElement(driver, onAdminProductPage.getIcon_DeleteWizard(), EnumsCommon.TOCLICKABLE.getText());
            clickElement(driver, onAdminProductPage.getIcon_DeleteWizard());
            }
    }


    @Then("User {string} {string} state")
    public void userSelectsCheckbox(String userAction, String whichCheckBox) {
        waitForPageToLoad(driver);
        if(whichCheckBox.equalsIgnoreCase("all")){
            scrollToWebElement(driver, onAdminProductPage.getChkBox_All());
            checkBoxSelectYesNO(userAction, onAdminProductPage.getChkBox_All());
        } else {
            scrollToWebElement(driver, findElement(driver, String.format(onAdminProductPage.getChkBox_State(), whichCheckBox)));
            checkBoxSelectYesNO(userAction, findElement(driver, String.format(onAdminProductPage.getChkBox_State(), whichCheckBox)));
        }
            captureScreenshot(driver, testContext, false);
    }

    @Then("User {string} checkbox {string} in Product Access Tab")
    public void userSelectsCheckboxin_ProductAccessTab(String userAction, String whichCheckBox) {
        waitForPageToLoad(driver);
        for (int i=0; i<onAdminProductPage.getList_ProductAccess().size();i++) {
            if (onAdminProductPage.getList_ProductAccess().get(i).getText().trim().contains(whichCheckBox)){
                scrollToWebElement(driver,onAdminProductPage.getList_CheckBoxProductAccess().get(i));
                checkBoxSelectYesNO(userAction, onAdminProductPage.getList_CheckBoxProductAccess().get(i));
            }
        }
               captureScreenshot(driver, testContext, false);
    }

    @Then("User Verifies checkbox {string} is {string} in Product Access Tab")
    public void userVerifiesSelectsCheckbox( String whichCheckBox, String userAction) {
        waitForPageToLoad(driver);
        for (int i=0; i<onAdminProductPage.getList_ProductAccess().size();i++) {
            if (onAdminProductPage.getList_ProductAccess().get(i).getText().trim().contains(whichCheckBox)) {
                scrollToWebElement(driver, onAdminProductPage.getList_ProductAccess().get(i));
                switch (userAction.toLowerCase()) {
                    case "selected":
                        Assert.assertTrue(whichCheckBox + " was not " + userAction, onAdminProductPage.getList_CheckBoxProductAccess().get(i).isSelected());
                        break;
                    case "unchecked":
                        Assert.assertFalse(whichCheckBox + " was not " + userAction, onAdminProductPage.getList_CheckBoxProductAccess().get(i).isSelected());
                        break;
                    default:
                        new FLException(" Invalid value for User Action :" + userAction);
                }
            }
        }
        captureScreenshot(driver, testContext, false);
    }

    @Then("User Verifies {string} after search")
    public void user_Verifies_after_search(String errorMessage) {
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Message not matching",errorMessage , onAdminProductPage.getProductNotFound().getText().trim());
    }

    @Then("User Clicks and Deletes product {string}")
    public void user_Clicks_and_Deletes_product(String product) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getIcon_delete(),product)));
    }

    @Then("User Clicks on Search icon")
    public void user_Clicks_on_Search_icon() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAdminProductPage.getBtn_searchIcon());
    }

    @Then("User Clicks on Wizard Designer Link")
    public void user_Clicks_on_Wizard_Designer_Link() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAdminProductPage.getLink_WizardDesigner());
    }

    @Then("User Clicks on Page Option {string}")
    public void user_Clicks_on_Page_Option(String option) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getOptionPage(),option)));
    }

    @Then("User Verifies Wizard Number {string}")
    public void user_Verifies_Wizard_Number(String wizNo) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Wizard number Did not match",wizNo,onAdminProductPage.getWizardName().getText().trim());
    }

    @Then("User Verifies Section Break {string}")
    public void user_Verifies_Section_Break(String expectedsectionBreak) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        boolean flag=false;
        for(WebElement actualSectionBreak : onAdminProductPage.getSctionBreak()  ){
           if( actualSectionBreak.getText().trim().equalsIgnoreCase(expectedsectionBreak)) {
               flag = true;
               break;
           }
        }
        Assert.assertTrue("Section Break did not display",flag);
    }

    @Then("User Clicks on {string} Button in Admin Page")
    public void user_Clicks_on_Button_in_Admin_Page(String button) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getButtonPageWorkflow(),button)));
    }

    @Then("User Verifies Alert Message {string}")
    public void user_Verifies_Alert_Message(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Alert message did not match",message , onAdminProductPage.getMsg_Alert().getText().trim());
    }

    @Then("User Verifies Section Break {string} Should not Display")
    public void user_Verifies_Section_BreakShouldnotDisplay(String expectedsectionBreak) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        boolean flag=false;
        for(WebElement actualSectionBreak : onAdminProductPage.getSctionBreak()  ){
            if( actualSectionBreak.getText().trim().equalsIgnoreCase(expectedsectionBreak)) {
                flag = true;
                break;
            }
        }
        Assert.assertFalse("Section Break displayed",flag);
    }

    @Then("User Clicks on {string} on aleret Popup")
    public void user_Clicks_on_on_aleret_Popup(String option) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (option.toLowerCase()){
            case "leave":
                driver.switchTo().alert().accept();
                break;
            case "cancel":
                driver.switchTo().alert().dismiss();
                break;
            default:
                new FLException("Invalid option for Alert Popup :"+option);
        }
    }

    @Then("User Selects {string} in Page")
    public void user_Selects_in_Page(String option) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        new Select(onAdminProductPage.getSelect_Page()).selectByVisibleText(option);
    }

    @Then("User Notes All Section Break")
    public void user_Notes_All_Section_Break() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        i=1;
        for(WebElement actualSectionBreak : onAdminProductPage.getSctionBreak()  ){
            addPropertyValueInJSON(testContext.getTestCaseID(),testContext,"SectionBreak"+i,actualSectionBreak.getText().trim());
            i++;
        }
    }

    @Then("User Verifies All Section Breakpoints Present")
    public void user_Verifies_All_Section_Breakpoints_Present() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        boolean flag = false;
        for(WebElement actualSectionBreak : onAdminProductPage.getSctionBreak()){
            for(int j=1;j<i;j++){
               if( actualSectionBreak.getText().trim().equalsIgnoreCase(testContext.getMapTestData().get("SectionBreak"+j))){
                   flag=true;
                   break;
               }
            }
            Assert.assertTrue(actualSectionBreak.getText().trim() + " was not found",flag);
        }
    }

    @Then("User Verifies Option {string} not in Page")
    public void user_Verifies_in_Page(String expOption) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        boolean flag = true;
        for(WebElement actOption :new Select(onAdminProductPage.getSelect_Page()).getOptions()) {
            if (actOption.getText().trim().equals(expOption))
                flag = false;
        }
        Assert.assertTrue(expOption + " Present In Page dropdown", flag);
    }
    @Then("User Verifies error message {string}")
    public void user_Verifies_error_message(String message) {
        scrollToWebElement(driver,onAdminProductPage.getMsg_ProductTypeFilterError());
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Product Type Filter error message Mismatched", message, onAdminProductPage.getMsg_ProductTypeFilterError().getText().trim());
    }

    @Then("User Selects {string} in Wizard")
    public void user_Selects_in_Wizard(String option) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        new Select(onAdminProductPage.getSelect_Wizard()).selectByVisibleText(option);
    }

    @Then("User Verifies Default option is {string} for Wizard Dropdown")
    public void user_Verifies_Default_option_is_for_Wizard_Dropdown(String expOption) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :"+new Select(onAdminProductPage.getSelect_Wizard()).getFirstSelectedOption().getText().trim()+" in place of :"+expOption,
                expOption,new Select(onAdminProductPage.getSelect_Wizard()).getFirstSelectedOption().getText().trim());
    }

    @Then("User click {string} button on Admin App")
    public void clickButton(String button) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (button) {
            case "Close":
                clickElement(driver, onAdminProductPage.getBtn_Close());
                break;
            default:
                throw new FLException("Invalid value for: " + button);
        }
    }

    @Then("User Verifies {string} Button in Admin Page")
    public void user_Verifies_Button_in_Admin_Page(String button) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue(button+" was not Displayed", findElement(driver,String.format(onAdminProductPage.getButtonPageWorkflow(),button)).isDisplayed());
    }

    @Then("User Verifies Error Message {string}")
    public void user_Verifies_Error_Message(String expErrorMessage) {
        waitForPageToLoad(driver);
        WebElement errorElement = getElement(driver, getExistingLocator(driver, onAdminProductPage.getMsg_ErrorMVC(), onAdminProductPage.getMsg_ErrorReact(), onAdminProductPage.getMsg_ErrorTeleSign(), null));
        scrollToWebElement(driver, errorElement);
        captureScreenshot(driver, testContext, false);
        String errorMessage = errorElement.getText().substring(0, errorElement.getText().indexOf(".")).trim();
        Assert.assertEquals("Error Message should be :"+expErrorMessage+" But Found :"+errorMessage
                ,expErrorMessage,errorMessage);
    }

    @Then("User Drags {string} to {string}")
    public void user_Drags_to(String fromElementStr, String toElementStr) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Actions actions = new Actions(driver);
        WebElement fromElement= findElement(driver,String.format(onAdminProductPage.getElementForDragAndDrop(),fromElementStr));
        WebElement toElement= findElement(driver,String.format(onAdminProductPage.getElementForDragAndDrop(),toElementStr));
        scrollToWebElement(driver,fromElement);
        actions.dragAndDrop(fromElement,toElement).build().perform();
    }

    @Then("User Verifies Section Break {string} is First Page")
    public void user_Verifies_Section_BreakisFirstPage(String expectedsectionBreak) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Section Break did not display",onAdminProductPage.getSctionBreak().get(0).getText().trim().contains(expectedsectionBreak));
    }


    @Then("User MouseHover to Info Icon")
    public void user_MouseHover_to_Info_Icon() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        moveToElement(driver,onAdminProductPage.getIcon_Info());
    }

    @Then("User Verifies Following Elements")
    public void user_Verifies_Following_Elements(DataTable dataTable) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        List<String> data = dataTable.asList(String.class);
        boolean flag=false;
        for (int j=0;j<data.size();j++){
            for(WebElement content : onAdminProductPage.getList_ContentInfoIcon()){
                if (content.getText().trim().equalsIgnoreCase(data.get(j))){
                    flag = true;
                    break;
                }
            }
            Assert.assertTrue(data.get(j)+" Not Found",flag);
        }
    }

    @Then("User Verifies Icon Heading {string}")
    public void user_Verifies_Icon_Heading(String heading) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Icon heading did not match",heading,onAdminProductPage.getHeading_InfoIcon().getText().trim());
    }



    @Then("User Verifies Group role name is disabled")
    public void verifyContinueButton() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Group role name field is enabled", onAdminProductPage.getTxtBoxArea_GroupRoleName().getAttribute("disabled").contains("true"));
    }

    @Then("User verifies {string} displayed on the Products Page")
    public void user_verifies_displayed_on_the_Products_Page(String whichProductAttribute) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        boolean flag = false;
        By locator;
        switch (whichProductAttribute) {
            case "Product Category":
                locator = getExistingLocator(driver, By.id("category"), null, null, null);
                break;
            case "Product Filter Type (UI)":
                locator = getExistingLocator(driver, By.id("ProductTypeFilter"), null, null, null);
                break;
            case "Rank Order":
                locator = getExistingLocator(driver, By.id("SelectedProduct_RankOrder"), null, null, null);
                break;
            default:
                throw new FLException("Invalid Value Provided For attribute under Products in Admin");
        }
        try {
            syncElement(driver, driver.findElement(locator), EnumsCommon.TOVISIBLE.getText());
            Assert.assertTrue(whichProductAttribute + " attribute was displayed",  driver.findElements(locator).size() > 0 );
        } catch (Exception e) {
            Assert.assertFalse(whichProductAttribute + " attribute was not displayed",  driver.findElements(locator).size() > 0 );
        }
    }

    @Then("User clicks on product {string} under Product List")
    public void user_clicks_on_product_under_Product_List(String whichProduct) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, findElement(driver, String.format(onAdminProductPage.getListProductTypeNames(), whichProduct)));
        clickElementByJSE(driver, findElement(driver, String.format(onAdminProductPage.getListProductTypeNames(), whichProduct)));
    }

    @Then("User clicks on product {string} under Deployment List")
    public void user_clicks_on_deployment_under_Product_List(String whichProduct) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, findElement(driver, String.format(onAdminProductPage.getListDeploymentTypeNames(), whichProduct)));
        clickElementByJSE(driver, findElement(driver, String.format(onAdminProductPage.getListDeploymentTypeNames(), whichProduct)));
    }

    @Then("User selects {string} Type from Products Type Filter UI dropdown")
    public void user_selects_Type_from_Products_Type_Filter_UI_dropdown(String prodFilterType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        new Select(onAdminProductPage.getSelect_ProductTypeFilter()).selectByVisibleText(prodFilterType);
    }

    @Then("User selects {string} from {string} dropdown")
    public void userSelectDropdown(String value, String dropdown) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
       try {
           new Select(findElement(driver, "//select[@id='" + testContext.getMapTestData().get(dropdown) + "']")).selectByVisibleText(value);
       } catch (NoSuchElementException e){
           Assert.fail(e.getMessage());
       } catch (Exception e){
           Assert.fail(e.getMessage());
       }
    }

    @Then("User selects {string} Type from Products Type dropdown")
    public void user_selects_Type_from_Products_Type_dropdown(String prodType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        new Select(onAdminProductPage.getSelect_ProductType()).selectByVisibleText(prodType);
    }

    @Then("User Clicks on Home button on Admin page")
    public void user_Clicks_on_Home_button_on_Admin_page() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_HomePage());
    }

    @Then("User Logs off from Admin page")
    public void user_Logs_off_from_Admin_page() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_LogOff());
        waitForAdminCacheTime(testContext);
    }

    @Then("User Logs off from Admin page without Cache time")
    public void user_Logs_off_from_Admin_pageWithoutCacheTime() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_LogOff());
       }

       @Then("User verifies {string} is selected from the Product Type")
    public void user_verifies_is_selected_from_the_Product_Type(String strProductType) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Product type did not match",strProductType,onAdminProductPage.getSelect_ProductTypeSelected().getText().trim());
    }

    @Then("User verifies {string} is selected from the Product Type Filter UI")
    public void user_verifies_is_selected_from_the_Product_Type_Filter_UI(String strProductTypeFilter) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Product Type Filter UI did not match",strProductTypeFilter,onAdminProductPage.getSelect_ProductTypeFilterSelected().getText().trim());
    }

    @Then("User Double Clicks on {string}")
    public void user_Double_Clicks_on(String element) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        new Actions(driver).doubleClick(findElement(driver,String.format(onAdminProductPage.getElementForDragAndDrop(),element))).build().perform();
    }

    @Then("User Verifies PopHeading {string} for section Break")
    public void user_Verifies_PopHeading_for_section_Break(String heading) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Popup Heading Mismatched",heading,getElement(driver, getExistingLocator(driver, onAdminProductPage.getHeading_PopupSectionBreakMVC(), onAdminProductPage.getHeading_PopupSectionBreakReact(), null, null)).getText().trim());
    }

    @Then("User Verifies Section Break {string} Does not Exist")
    public void user_Verifies_Section_BreakDoesnotExist(String expectedsectionBreak) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        boolean flag=true;
        for(WebElement actualSectionBreak : onAdminProductPage.getSctionBreak()  ){
            if( actualSectionBreak.getText().trim().equalsIgnoreCase(expectedsectionBreak)) {
                flag = false;
                break;
            }
        }
        Assert.assertTrue("Section Break displayed",flag);
    }

    @Then("User Verifies Length of the value present in {string} TextField is less than {string}")
    public void user_Verifies_Length_of_the_value_present_in_TextField_is(String txtBox, String length) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
      Assert.assertTrue("Length should be "+length, findElement(driver, String.format(onSignaturesPage.txtFieldWithId, txtBox, txtBox, txtBox)).getAttribute("value").length() <Integer.parseInt(length));
    }

    @Then("User Verifies Error Message {string} for Text")
    public void user_Verifies_Error_MessageforText(String expErrorMessage) {
        waitForPageToLoad(driver);
        scrollToWebElement(driver,onAdminProductPage.getMsg_ErrorText());
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Error Message should be :"+expErrorMessage+" But Found :"+onAdminProductPage.getMsg_ErrorText().getText().trim()
                ,expErrorMessage,onAdminProductPage.getMsg_ErrorText().getText().trim());
    }

    @Then("User clicks {string} on Confirmation Dialog in Admin App")
    public void userClicksOnConfirmationDialogAdmin(String whichOption) {
        waitForPageToLoad(driver);
        switch (whichOption.toLowerCase()) {
            case "ok":
                clickElement(driver, onAdminProductPage.getPopup_Ok());
                break;
            default:
                throw new FLException("Invalid operation : " + whichOption);
        }
    }

    @Then("User verify {string} message in {string} field on Admin app")
    public void verifyMessageSignature(String message, String field) {
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(2000);
        syncElement(driver, findElement(driver,String.format(onAdminProductPage.getElementById(),testContext.getMapTestData().get(field))), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Message on Signature Page Mismatched", findElement(driver,String.format(onAdminProductPage.getElementById(),testContext.getMapTestData().get(field))).getText().trim().contains(testContext.getMapTestData().get(message)));
    }

    @Then("User verifies Availability of fields under tab")
    public void user_verifies_Availability_of_fields_under_tab(DataTable dataTable) {
        waitForPageToLoad(driver);
        syncElement(driver, onAdminProductPage.getTab_productDetails(), EnumsCommon.TOVISIBLE.getText());
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> formFields = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> fieldData : formFields) {
            String type = fieldData.get("Type");
            String value = fieldData.get("Value");

            switch (type) {
                case "checkbox":
                    scrollToWebElement(driver, findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOption, value)));
                    Assert.assertTrue("checkbox was not displayed", findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOption, value)).isDisplayed());
                    break;

                case "textbox":
                    scrollToWebElement(driver, findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOption, value)));
                    Assert.assertTrue("textbox was not displayed", findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOption, value)).isDisplayed());
                    break;

                default:
                    throw new FLException("Invalid Type : " + type);
            }
        }
    }

    @Then("User selects {string} value form the Wizard Designer dropdown")
    public void user_selects_value_form_the_Wizard_Designer_dropdown(String ddValue) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        new Select(onAdminProductPage.getSelect_Wizard()).selectByVisibleText(ddValue);
    }

    @Then("User selects checkbox on wizard designer")
    public void user_selects_checkbox_on_wizard_designer() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onAdminProductPage.getCheckBoxDesignerWizard());
        waitForPageToLoad(driver);
    }

    @Then("User clicks on delete icon")
    public void user_clicks_on_delete_icon() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onAdminProductPage.getIcon_DeleteWizard());
        waitForPageToLoad(driver);
    }

    @Then("User clicks on save wizard button")
    public void user_clicks_on_save_wizard_button() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onAdminProductPage.getBtn_SaveWizard());
        sleepInMilliSeconds(2000);
    }

    @Then("User search for {string} and click on search icon")
    public void user_search_for_and_click_on_search_icon(String value) {
        captureScreenshot(driver, testContext, false);
        onAdminProductPage.getTxt_SearchBoxAdmin().clear();
        onAdminProductPage.getTxt_SearchBoxAdmin().sendKeys(value);
        clickElementByJSE(driver,onAllActivitiesPage.getBtn_searchIcon());
    }

    @Then("User clicks on {string} button on admin")
    public void user_clicks_on_Form_Designer_button(String btnName) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,findElement(driver, String.format(onFormDesignerPage.formControl,btnName)));
    }

    @Then("User Drags {string} to blank field")
    public void user_Drags_to_blank_field(String dragValue) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Actions actions = new Actions(driver);
        WebElement fromElement= findElement(driver,String.format(onAdminProductPage.getSourceDragElement(),dragValue));
        WebElement toElement= onAdminProductPage.getBlankDestinationFormId();
        scrollToWebElement(driver,fromElement);
        actions.dragAndDrop(fromElement,toElement).build().perform();
    }

    @Then("User Drags Custom Action to blank field")
    public void clickCustomAction() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Actions actions = new Actions(driver);
        scrollToWebElement(driver,onAdminProductPage.getLnk_CustomAction());
        onAdminProductPage.getLnk_CustomAction().click();
        actions.dragAndDrop(onAdminProductPage.getLnk_CustomAction(),onAdminProductPage.getBlankDestinationFormId()).build().perform();
    }

    @Then("User verifies Combox is displayed on page")
    public void user_verifies_Combox_is_displayed_on_page() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Combo Box was not present", getElements(driver, getExistingLocator(driver, onDataEntryPage.getDdComboBoxMVC(), onDataEntryPage.getDdComboBoxReact(), onDataEntryPage.getDdComboBoxMVC1(), null)).size()>0);
    }

    @Then("User verifies fields depends on particular field")
    public void user_verifies_fields_depends_on_particular_field(DataTable dataTable) {
        waitForPageToLoad(driver);
        syncElement(driver, onAdminProductPage.getTab_productDetails(), EnumsCommon.TOVISIBLE.getText());
        captureScreenshot(driver, testContext, false);
        List<Map<String, String>> tableFields = dataTable.asMaps(String.class, String.class);
        for (Map<String, String> singleField : tableFields) {
            String name = singleField.get("Name");
            String toCheckName = singleField.get("ToCheckName");
            if (!findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, name)).isSelected()) {
                Assert.assertFalse("Field was not disabled", findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, toCheckName)).isEnabled());
            } else if (!findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, name)).isSelected()) {
                clickElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, toCheckName));
                Assert.assertTrue("Field was not enabled", findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, toCheckName)).isEnabled());
            }
        }
    }

    @Then("User Verifies product error message {string}")
    public void user_Verifies_product_error_message(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (message) {
            case "Please enter notification message.":
                Assert.assertTrue("Error message mismatched: ", findElement(driver, String.format(onAdminProductPage.msg_ProductNotification, testContext.getMapTestData().get("errorMessage1"))).getText().contains(message));
                break;

            case "Please enter start/end date.":
                Assert.assertTrue("Error message mismatched: ", findElement(driver, String.format(onAdminProductPage.msg_ProductNotification, testContext.getMapTestData().get("errorMessage2"))).getText().contains(message));
                break;

            case "End Date must be greater than Start Date.":
                Assert.assertTrue("Error message mismatched: ", findElement(driver, String.format(onAdminProductPage.msg_ProductNotification, testContext.getMapTestData().get("errorMessage3"))).getText().contains(message));
                break;

            case "Notification message cannot be longer than 400 characters.":
                Assert.assertTrue("Error message mismatched: ", onAdminProductPage.getMsg_errorLongerMessage().getText().contains(message));
                break;

            case "Please select link name.":
                Assert.assertTrue("Error message mismatched: ", findElement(driver, String.format(onAdminProductPage.msg_ProductNotification, testContext.getMapTestData().get("errorMessage4"))).getText().contains(message));
                break;

            case "Please enter URL value.":
                Assert.assertTrue("Error message mismatched: ", findElement(driver, String.format(onAdminProductPage.msg_ProductNotification, testContext.getMapTestData().get("errorMessage5"))).getText().contains(message));
                break;

            default:
                throw new FLException("Invalid value provided for message "  + message);
        }

    }

    @Then("User selects the {string} date from {string} date picker")
    public void user_selects_the_date_from_date_picker(String dateNum, String date) {
        sleepInMilliSeconds(1000);
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (date) {
            case "start date":
                if (onAdminProductPage.getSelectStartDate().isEnabled()) {
                    syncElement(driver, onAdminProductPage.getSelectStartDate(), EnumsCommon.TOVISIBLE.getText());
                    clickElement(driver, onAdminProductPage.getSelectStartDate());
                    clickElement(driver, findElement(driver, String.format(onAdminProductPage.pickStartDate, dateNum)));
                }
                break;

            case "end date":
                if (onAdminProductPage.getSelectEndDate().isEnabled()) {
                    syncElement(driver, onAdminProductPage.getSelectEndDate(), EnumsCommon.TOVISIBLE.getText());
                    clickElement(driver, onAdminProductPage.getSelectEndDate());
                    clickElement(driver, findElement(driver, String.format(onAdminProductPage.pickEndDate, dateNum)));
                }
                break;

            default:
                throw new FLException("Invalid value provided for Date: " + date);
        }
    }

    @Then("User selects Allow Notification checkbox")
    public void user_selects_Allow_Notification_checkbox() {
        scrollToWebElement(driver, findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, testContext.getMapTestData().get("productionNotification"))));
        waitForPageToLoad(driver);
        clickElement(driver, findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, testContext.getMapTestData().get("productionNotification"))));
        captureScreenshot(driver, testContext, false);
    }

    @Then("User verifies the {string} error message is not showing")
    public void user_verifies_the_error_message_is_not_showing(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        for (WebElement element : onAdminProductPage.getMsg_allErrors()) {
            if (element.getAttribute("style").contains("none")) {
                sleepInMilliSeconds(1000);
                switch (message) {
                    case "Please enter notification message.":
                        Assert.assertTrue("Error Message is still visible & Matched", onAdminProductPage.getMsg_errorMessageBox().getAttribute("style").contains("none"));
                        break;

                    case "Please enter start/end date.":
                        Assert.assertTrue("Error Message is still visible & Matched", onAdminProductPage.getMsg_errorDatePicker().getAttribute("style").contains("none"));
                        break;

                    case "End Date must be greater than Start Date.":
                        Assert.assertTrue("Error Message is still visible & Matched", onAdminProductPage.getMsg_errorSmallerDate().getAttribute("style").contains("none"));
                        break;

                    case "Notification message cannot be longer than 400 characters.":
                        Assert.assertFalse("Error Message is still visible & Matched", onAdminProductPage.getMsg_errorLongerMsg().size()>0);
                        break;

                    default:
                        throw new FLException("Invalid value provided for message: "+message);
                }
            } else {
                Assert.assertFalse("Error Message is still visible & Matched",element.getAttribute("style").contains("none"));
            }
        }
    }

    @Then("User Enter {int} characters in the MessageBox")
    public void user_Enter_characters_massage_in_the_MessageBox(int length) {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        onAdminProductPage.getSendToMessageBox().clear();
        syncElement(driver, onAdminProductPage.getSendToMessageBox(), EnumsCommon.TOVISIBLE.getText());

        if (length == 400) {
            onAdminProductPage.getSendToMessageBox().sendKeys(testContext.getMapTestData().get("characters"));
            addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.OLDMEASSAGEVALUE.getText(), onAdminProductPage.getSendToMessageBox().getText());
        } else if (length > 400) {
           onAdminProductPage.getSendToMessageBox().sendKeys(testContext.getMapTestData().get("characters").concat("sa1f2"));
        } else {
            onAdminProductPage.getSendToMessageBox().sendKeys(testContext.getMapTestData().get("enterInMessagebox"));
        }
    }

    @Then("User save {string} in Admin App")
    public void saveValue(String value) {
        captureScreenshot(driver, testContext, false);
        addPropertyValueInJSON(testContext.getTestCaseID(), testContext, EnumsJSONProp.NEWMESSAGEVALUE.getText(), onAdminProductPage.getTxt_value().getText());
    }

    @Then("User validates the data in Product History tab")
    public void user_validates_the_data_in_Product_History_tab() {
        clickElement(driver, onAdminProductPage.getTab_productHistory());
        Assert.assertTrue("Login ID doesn't match", configProperties.getProperty("AUTOUser1_FLADEMO").trim().equalsIgnoreCase(testContext.getMapTestData().get("User")));
        Assert.assertTrue("Selected Product doesn't match with final result", onAdminProductPage.getSelectedProduct().getText().contains(testContext.getMapTestData().get("product")));
        Assert.assertTrue("Old Message Entered Into MessageBox Was Incorrect", findElement(driver, String.format(onAdminProductPage.values, testContext.getMapTestData().get("oldMessageValue"))).getText().equals(testContext.getMapTestData().get("characters")));
        Assert.assertTrue("New Message Entered Into MessageBox Was Incorrect", findElement(driver, String.format(onAdminProductPage.values, testContext.getMapTestData().get("newMessageValue"))).getText().equals(testContext.getMapTestData().get("enterInMessagebox")));
    }

    @Then("User select rule set from list")
    public void UserSelectRuleSetFromList() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onAdminProductPage.getSelectedProduct());
    }

    @Then("User select rules window")
    public void UserSelectRulesWindow() {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver, onAdminProductPage.getTab_RulesWindow());
    }

    @Then("User Click on Search icon")
    public void user_Click_on_Search_icon() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,onAdminProductPage.getBtn_SearchStr());
    }
    @Then("User double click on {string}")
    public void user_double_click_on(String value) {
        captureScreenshot(driver, testContext, false);
      new Actions(driver).doubleClick(findElement(driver,String.format(onAdminProductPage.getTxtBox_All(), value))).build().perform();
    }
    @Then("User clicks on Ok button on popup")
    public void user_clicks_on_Ok_button_on_popup() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_OK());
    }
    @Then("User double click {string} on {string} Form Designer page")
    public void user_double_click_on_Form_Designer_page(String dataValue, String textBoxValue) {
        waitForPageToLoad(driver);
        sleepInMilliSeconds(1000); // This wait is required to click proper control on form Designer
        captureScreenshot(driver, testContext, false);
        new Actions(driver).doubleClick(findElement(driver,String.format(onAdminProductPage.getList_FormTextBox(),dataValue, textBoxValue))).build().perform();
    }
    @Then("User clicks on Update button and close the window")
    public void user_clicks_on_Update_button() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_Update());
        sleepInMilliSeconds(2000);
        syncElement(driver, onDataEntryPage.getBtn_CrossActivity(), EnumsCommon.TOCLICKABLE.getText());
        clickElementByJSE(driver, onDataEntryPage.getBtn_CrossActivity());
    }

    @Then("User clicks {string} and select {string} from dropdown")
    public void selectValue(String dropdown, String value) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        syncElement(driver, findElement(driver, String.format(onAdminProductPage.getElementById(), dropdown)), EnumsCommon.TOCLICKABLE.getText());
        clickElement(driver, findElement(driver, String.format(onAdminProductPage.getElementById(), dropdown)));
        syncElement(driver, findElement(driver, String.format(onAdminProductPage.getAnchorLinks(), value)), EnumsCommon.TOCLICKABLE.getText());
        clickElement(driver, findElement(driver, String.format(onAdminProductPage.getAnchorLinks(), value)));
        sleepInMilliSeconds(2000);
    }

    @Then("User clicks on update Mask")
    public void user_clicks_on_update_Mask() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_UpdateMasks());
    }
    @Then("User Select {string} in Selling Org Tab")
    public void user_Select_in_Selling_Org_Tab(String option) {
        captureScreenshot(driver, testContext, false);
        selectOptionFromList(driver,onAdminProductPage.getList_DdlBrokerOrgList(),option, EnumsCommon.CLICK.getText());
    }

    @Then("User Verifies Sales Agreement saved")
    public void userVerifiesSalesAgreementSaved() {
        syncElement(driver, onAdminProductPage.getTxt_SalesAgreementSaveMsg(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Sales Agreement Save Message Mismatched ", onAdminProductPage.getTxt_SalesAgreementSaveMsg().getText().trim()
                .equalsIgnoreCase(testContext.getMapTestData().get("salesAgreementSaveMessage")));
    }

    @Then("User Click on Page Option {string}")
    public void user_Click_on_Page_Option(String option) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getDeleteOptionPage(),option)));
    }

    @Then("User Verify Alert Message {string}")
    public void user_Verify_Alert_Message(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Alert message did not match",message , onAdminProductPage.getMsg_AlertDeleteSalesAgreement().getText().trim());
    }

    @Then("User click on Manage Sales Agreement button in Admin App")
    public void user_click_on_Manage_Sales_Agreement_button() {
        captureScreenshot(driver, testContext, false);
        waitForPageToLoad(driver);
        clickElement(driver, onAdminProductPage.getBtn_ManageSalesAgreement());
    }

    @Then("User clicks on Rename link")
    public void user_clicks_on_Rename_Link() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_RenameSalesAgreement());
    }

    @Then("User Select Selling Org")
    public void user_Select_Selling_Org() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_DivOrgSalesAgreement());
    }
    @Then("User click on save batch button")
    public void user_Click_On_Save_Batch() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_SaveBatch());
    }

    @Then("User Verifies error message of saved batch")
    public void userVerifiesErrorMessageOfSavedBatch() {
        syncElement(driver, onAdminProductPage.getTxt_SalesAgreementlblBatchStatus(), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Saved Batch Message Mismatched ", onAdminProductPage.getTxt_SalesAgreementlblBatchStatus().getText().trim()
                .equalsIgnoreCase(testContext.getMapTestData().get("salesAgreementBatchErrorMessage")));
    }

    @Then("User clicks on copy batch")
    public void user_Clicks_On_Copy_Batch() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_CopySalesAgreement());
    }

    @Then("User clicks on copy confirmation button")
    public void user_Clicks_On_Copy_Confirmation_Button() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_CopyConfirmationSalesAgreement());
    }

    @Then("User clicks on delete batch from manage sales agreement")
    public void user_Clicks_On_Delete_Batch_From_Manage_Sales_Agreement() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_DeleteSalesAgreement());
    }

    @Then("User clicks on delete agreement confirmation button")
    public void user_Clicks_On_Delete_Agreement_Confirmation_Button() {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, onAdminProductPage.getBtn_DeleteConfirmationSalesAgreement());
    }

    @Then("User Verifies Manage Sales Agreement is disabled")
    public void verifies_Manage_Sales_Agreement_Is_Disabled() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Manage Sales Agreement field is enabled", onAdminProductPage.getBtn_ManageSalesAgreement().getAttribute("disabled").equals("true"));
    }

    @Then("User Clicks on Sales Agreement Page Option {string}")
    public void user_Clicks_on_Sales_Agreement_Page_Option(String option) {
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getDeleteSalesAgreement(),option)));
    }
    @Then("User selects {string} from list Activities")
    public void user_selects_from_list_Activities(String actName) {
        captureScreenshot(driver, testContext, false);
        List<WebElement> allActivity = onAdminProductPage.getList_AdminActivities();
        for (WebElement activity : allActivity){
            if (activity.getText().contains(actName)){
                clickElementByJSE(driver, activity);
                break;
            }
        }
    }
    @Then("User clicks {string} checkbox from activity detail")
    public void user_clicks_checkbox_from_activity_detail(String actName) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver,findElement(driver, String.format(onAdminProductPage.getList_ActivityDetail(),actName)));
        clickElementByJSE(driver, findElement(driver, String.format(onAdminProductPage.getList_ActivityDetail(),actName)));
    }

    @Then("User verifies Activity saved succesfully")
    public void user_verifies_Activity_saved_succesfully() {
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Activity was not saved", onGroupsPage.getMsg_GroupsSaved().isDisplayed());
    }

    @Then("User verifies {string} value is selected in the Wizard Designer dropdown")
    public void user_verifies_value_is_selected_in_the_Wizard_Designer_dropdown(String dropDownValue) {
        captureScreenshot(driver, testContext, false);
        new Select(onAdminProductPage.getSelect_Wizard()).getFirstSelectedOption().getText().contains(dropDownValue);
    }

    @Then("User clicks {string} button on popup")
    public void user_clicks_button_on_popup(String button) {
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver, String.format(onAdminProductPage.btnAnyOnAdmin, button)));
    }
    @Then("User single click {string} on {string} Form Designer page")
    public void user_single_click_on_Form_Designer_page(String dataValue, String textBoxValue) {
        waitForPageToLoad(driver);
//        Note This wait is required as Form Designer page is not stable enough.
        sleepInMilliSeconds(2000);
        captureScreenshot(driver, testContext, false);
        clickElement(driver, findElement(driver,String.format(onAdminProductPage.getList_FormTextBox(),dataValue, textBoxValue)));
        }

    @Then("User verifies allow notification is not checked")
    public void user_verifies_allow_notification_is_not_checked() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("Checkbox was checked", findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, testContext.getMapTestData().get("productionNotification"))).isSelected());
    }

    @Then("User enters {string} in the MessageBox")
    public void user_enters_in_the_MessageBox(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        onAdminProductPage.getSendToMessageBox().clear();
        syncElement(driver, onAdminProductPage.getSendToMessageBox(), EnumsCommon.TOVISIBLE.getText());
        sendKeys(driver, onAdminProductPage.getSendToMessageBox(), message);
    }

    @Then("User verifies {string} message without any error")
    public void user_verifies_message_without_any_error(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertTrue("Product was not saved", findElement(driver,String.format(onAdminActvityPage.toolbarAdmin ,message)).isDisplayed());
    }

    @Then("User verifies selling Org {string} not contain star at the end")
    public void verifySellingOrgWithoutStarAtTheEnd(String option) {
        selectOptionFromList(driver, onAdminProductPage.getList_DdlBrokerOrgList(), option, EnumsCommon.CLICK.getText());
        Assert.assertFalse("Star displayed at the end", option.endsWith("*"));
    }

    @Then("User verifies selling Org {string} contain star at the end")
    public void verifySellingOrgWithStarAtTheEnd(String option) {
        selectOptionFromList(driver, onAdminProductPage.getList_DdlBrokerOrgList(), option, EnumsCommon.CLICK.getText());
        Assert.assertTrue("Star not displayed at the end", option.endsWith("*"));
    }

    @Then("User Verifies Default option is {string} for Saved Batches")
    public void user_Verifies_Default_option_is_for_SavedBatches(String expOption) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Found :"+new Select(onAdminProductPage.getSelect_SavedBatches()).getFirstSelectedOption().getText().trim()+" in place of :"+expOption,
                expOption,new Select(onAdminProductPage.getSelect_SavedBatches()).getFirstSelectedOption().getText().trim());
    }


    @Then("User verifies {string} should be display")
    public void Userverifiesstatusshouldbedisplayed(String option) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        switch (option){
            case "Cancel":
                syncElement(driver, onAdminProductPage.getTxt_CanceledBatches(),EnumsCommon.TOVISIBLE.getText());
                Assert.assertTrue(option + "Cancel is NOT showing", onAdminProductPage.getTxt_CanceledBatches().isDisplayed());
                break;
            case "Copy Agreement":
                syncElement(driver, onAdminProductPage.getBtn_CopySalesAgreement(),EnumsCommon.TOVISIBLE.getText());
                Assert.assertTrue(option + "Copy Agreement is NOT showing", onAdminProductPage.getBtn_CopySalesAgreement().isDisplayed());
                break;
            case "Delete Agreement":
                syncElement(driver, onAdminProductPage.getBtn_DeleteSalesAgreement(),EnumsCommon.TOVISIBLE.getText());
                Assert.assertTrue(option + "Delete Agreement is NOT showing", onAdminProductPage.getBtn_DeleteSalesAgreement().isDisplayed());
                break;
            case "Save Batch":
                syncElement(driver, onAdminProductPage.getBtn_SaveBatch(),EnumsCommon.TOVISIBLE.getText());
                Assert.assertTrue(option + "Save Batch is NOT showing", onAdminProductPage.getBtn_SaveBatch().isDisplayed());
                break;
            default:
                throw new FLException("Invalid value for Sales Agreement : " + option);
        }
    }

    @Then("User Verify Copy Alert Message")
    public void user_Verify_Copy_Alert_Message() {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        sleepInMilliSeconds(2000);
        Assert.assertEquals("Copy Alert box message mismatched", testContext.getMapTestData().get("replaceRuleSetPopup"), onAdminProductPage.getTxt_CopyAlertMsg().getText().trim());
    }

    @Then("User Selects {string} in Product Table")
    public void user_Selects_in_Product_Table(String productName) {
        scrollToWebElement(driver,findElement(driver,String.format(onAdminProductPage.getOptionByTextSalesAgreementTable(),productName)));
        captureScreenshot(driver, testContext, false);
        clickElementByJSE(driver,findElement(driver,String.format(onAdminProductPage.getOptionByTextSalesAgreementTable(),productName)));
    }

    @Then("User clicks on {string} from expand menu options")
    public void user_clicks_on_from_expand_menu_options(String option) {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, findElement(driver, String.format(onAdminProductPage.getOption_Review(), option)), EnumsCommon.TOCLICKABLE.getText());
        clickElement(driver, findElement(driver, String.format(onAdminProductPage.getOption_Review(), option)));
    }

    @Then("User verifies {string} dialog box")
    public void user_verifies_dialog_box(String name) {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, findElement(driver, String.format(onAdminProductPage.anyHeader, name)), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("Dialogbox is not displayed", findElement(driver, String.format(onAdminProductPage.anyHeader, name)).isDisplayed());
    }
    @Then("User verifies {string} message")
    public void user_verifies_message(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        if(message.equalsIgnoreCase("Disappeared")) {
            Assert.assertFalse("message was displayed", findElements(driver, String.format(onAdminActvityPage.toolbarAdmin, message)).size()>0);
        }
        else {
            Assert.assertTrue("message was not displayed", findElement(driver, String.format(onAdminActvityPage.toolbarAdmin, message)).isDisplayed());
        }
    }

    @Then("User verifies {string} is showing after search")
    public void user_verifies_is_showing_after_search(String name) {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, findElement(driver, String.format(onAllActivitiesPage.listNewActivity, testContext.getMapTestData().get(name))), EnumsCommon.TOVISIBLE.getText());
        Assert.assertTrue("showing result didn't Matched", findElement(driver, String.format(onAllActivitiesPage.listNewActivity, testContext.getMapTestData().get(name))).getText().contains(testContext.getMapTestData().get(name)));
    }

    @Then("User Verifies checkbox is checked or unchecked and unchecks it")
    public void User_Verifies_Checkbox() {
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, testContext.getMapTestData().get("productionNotification"))));
        captureScreenshot(driver, testContext, false);
        if(findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, testContext.getMapTestData().get("productionNotification"))).isSelected()) {
            clickElement(driver, findElement(driver, String.format(onAdminProductPage.list_ProductDetailsOptions, testContext.getMapTestData().get("productionNotification"))));
        }
    }

    @Then("User Single click on Text Mask")
    public void user_Single_click_on_Text_Mask() {
        captureScreenshot(driver, testContext, false);
        new Actions(driver).click(onFormDesignerPage.getSelectCustomMask()).build().perform();
    }

    @Then("User clicks on Update button on field properties window")
    public void user_clicks_on_Update_button_On_Field_Properties() {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, onFormDesignerPage.getFieldPropertiesDialog(),EnumsCommon.TOVISIBLE.getText());
        syncElement(driver, onAdminProductPage.getBtn_Update(), EnumsCommon.TOCLICKABLE.getText());
        clickElementByJSE(driver, onAdminProductPage.getBtn_Update());
        waitForPageToLoad(driver);
    }

    @Then("User verifies {string} message is Disappeared")
    public void user_verifies_message_Is_Disappeared(String message) {
        waitForPageToLoad(driver);
        captureScreenshot(driver, testContext, false);
        Assert.assertFalse("message was displayed", findElements(driver, String.format(onAdminActvityPage.toolbarAdmin, message)).size()>0);
    }

    @Then("User Verifies {string} selling orgs should be selected")
    public void User_Verifies_Selling_Orgs_Should_Be_Selected(String chkBoxName) {
        captureScreenshot(driver, testContext, false);
        syncElement(driver, findElement(driver, String.format(onAdminProductPage.chkBox_ManageSalesAgreeBox, chkBoxName)), EnumsCommon.TOCLICKABLE.getText());
        Assert.assertTrue("Checkbox was not checked", findElement(driver, String.format(onAdminProductPage.chkBox_ManageSalesAgreeBox, chkBoxName)).getAttribute("name").contains("IsChecked"));
    }

    @Then("User Verifies http redirect {string} checkbox is checked or unchecked and unchecks it")
    public void User_Verifies_Http_Redirect_Checkbox(String whichCheckBox) {
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
        captureScreenshot(driver, testContext, false);
        if(findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))).isSelected()) {
            clickElement(driver, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
        }
    }
    @Then("User Verifies error message for Product name {string}")
    public void user_Verifies_error_message_for_Product_Name(String message) {
        scrollToWebElement(driver,onAdminProductPage.getMsg_ProductNameError());
        captureScreenshot(driver, testContext, false);
        Assert.assertEquals("Product Type Filter error message Mismatched", message, onAdminProductPage.getMsg_ProductNameError().getText().trim());

    }
    @Then("User Verifies {string} checkbox is checked or unchecked and checks it")
    public void User_Verifies_Checkbox_And_Checks_It(String whichCheckBox) {
        captureScreenshot(driver, testContext, false);
        scrollToWebElement(driver,  findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
        captureScreenshot(driver, testContext, false);
        if(!findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))).isSelected()) {
            clickElement(driver, findElement(driver, String.format(TabAppPage.checkBox, testContext.getMapTestData().get(whichCheckBox))));
        }
    }

}