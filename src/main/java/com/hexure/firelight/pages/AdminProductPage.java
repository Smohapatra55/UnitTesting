package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

@Data
public class AdminProductPage extends FLUtilities {

    private By msg_ErrorMVC = By.xpath("//span[@class='textbox__errorMessage']");
    private By msg_ErrorReact = By.xpath("//div[@class='wizardViewOrder__errorMessage']");
    private By msg_ErrorTeleSign = By.xpath("//span[@class='field-validation-error ErrorBox' and contains(@style,'display: inline')]");

    @FindBy(xpath = "//a[contains(text(),'Add New Product')]")
    private WebElement link_AddNewProduct;

    private String elementById = "//*[@id='%s']";
    private String anchorLinks = "//*[text()='%s']";

    private String chkBox_State = "//label[text()='%s']/parent::td/following-sibling::td/input";
    private String txtBox_FieldName = "//label[text()='%s']//preceding-sibling::input";

    @FindBy(id = "chkAll")
    private WebElement chkBox_All;

    @FindBy(xpath = "//div[@class='groupProdText']")
    private List<WebElement> list_ProductAccess;

    @FindBy(xpath = "//div[@class='roundCornersTop heading']")
    private WebElement header_FormAdmin;

    @FindBy(id = "NoProductFound")
    private WebElement productNotFound;

    @FindBy(xpath = "//div[@class='groupProdText']/div/input[@id]")
    private List<WebElement> list_CheckBoxProductAccess;

    @FindBy(xpath = "//div[@class='panelContent']/a")
    private List<WebElement> list_OptionProductConfig;


    private String optionByTextSalesAgreementTable = "//table[@id='tblProductList']//tr/td[normalize-space()='%s']";
    private String optionByTextPackage = "//div[@id='divAllFPackages']//tr/td[contains(text(),'%s')]";
    private String optionSelectedByTextPackage = "//div[@id='divSelectedPackages']//tr/td[contains(text(),'%s')]";

    private String icon_delete = "//a[text()='%s']//ancestor::tr//a[@class='clsDeleteLink']";

    private String listProductTypeNames="//div[@id='divProdList']//a[contains(text(),'%s')]";
    private String listDeploymentTypeNames="//div[@id='divDeployTab']//div[contains(text(),'%s')]";

    @FindBy(xpath = "//div[@id='tabDetails']//a[@href]")
    private WebElement link_WizardDesigner;

    private String optionPage = "//div[@class='wizardViewOptions__optionText' and text()='%s']";

    @FindBy(id = "imgSearch")
    private WebElement btn_searchIcon;

    @FindBy(xpath = "(//table[@id='tlbForms']/tbody/tr/td)[2]")
    private WebElement wizardName;

    @FindBy(xpath = "//div[@id='wizardViewOrder__content']//div[@class='wizardViewOrder__viewText']")
    private List<WebElement> sctionBreak;

    private String buttonPageWorkflow = "//button[text()='%s']";

    @FindBy(xpath = "//div[@class='dialog__content ']/div")
    private WebElement msg_Alert;

    @FindBy(xpath = "//span[@class='field-validation-error ErrorBox' and contains(@style,'display: inline')]//span[@class='ErrorClose']")
    private WebElement btn_Close;

    @FindBy(xpath = "//div[@id='viewSelection']//select")
    private WebElement select_Page;

    @FindBy(xpath = "//span[@id='ProductTypeFilter-error']")
    private WebElement msg_ProductTypeFilterError;

    @FindBy(xpath = "//div[@id='formSelection']//select")
    private WebElement select_Wizard;

    private String elementForDragAndDrop = "//div[@class='wizardViewOrder__viewText' and text()='%s']/preceding-sibling::i";

    @FindBy(xpath = "//div[@class='ITTooltipContainer dialog__help dialog__help--info']")
    private WebElement icon_Info;

    @FindBy(xpath = "//div[@class='wizardViewOrder__helpToolTip']/h3")
    private WebElement heading_InfoIcon;

    @FindBy(xpath = "//div[@class='wizardViewOrder__helpToolTip']/ul/li")
    private List<WebElement> list_ContentInfoIcon;

    private By heading_PopupSectionBreakMVC = By.xpath("//div[@id='wizardViewOrder__content']//header[@class='dialog__header']");
    private By heading_PopupSectionBreakReact = By.xpath("//div[@class='dialog ']//header[@class='dialog__header']");

    @FindBy(xpath = "//label[@for='titletextbox']/following-sibling::span[@class='textbox__errorMessage']")
    private WebElement msg_ErrorText;

    @FindBy(xpath = "//input[@id='ExistingGroupsModel_SelectedUserGroup_Name']")
    private WebElement txtBoxArea_GroupRoleName;

    @FindBy(xpath="//select[@name='SelectedProduct.ProductTypeFilter']")
    private WebElement select_ProductTypeFilter;

    @FindBy(xpath="//select[@name='SelectedProduct.ProductTypeFilter']//option[@selected='selected']")
    private WebElement select_ProductTypeFilterSelected;

    @FindBy(xpath="//select[@id='productType']")
    private WebElement select_ProductType;

    @FindBy(xpath="//select[@id='productType']//option[@selected='selected']")
    private WebElement select_ProductTypeSelected;

    @FindBy(xpath="//div[contains(text(),'Home')]")
    private WebElement btn_HomePage;

    @FindBy(xpath="//div[contains(text(),'Log Off')]")
    private WebElement btn_LogOff;

    @FindBy(xpath="//textarea[@id='txtTemplate']")
    private WebElement txt_Template;

    @FindBy(xpath = "//span[text()='Ok']")
    private WebElement popup_Ok;

    @FindBy(xpath = "(//div[@id='tabProd']//table)[1]")
    private WebElement tab_productDetails;

    @FindBy(xpath = "//span[text()='Prev']")
    private WebElement button_prevDate;

    @FindBy(xpath = "(//div[@id='tabProd']//table)[1]//td//textarea[@id='Msg']")
    private WebElement sendToMessageBox;

    @FindBy(xpath = "//input[@name='SelectedProduct.ProductNotificationStartDate']")
    private WebElement selectStartDate;

    @FindBy(xpath = "//input[@name='SelectedProduct.ProductNotificationEndDate']")
    private WebElement selectEndDate;

    @FindBy(xpath = "//td/span[contains(text(),'Please enter notification message.')]")
    private WebElement msg_errorMessageBox;

    @FindBy(xpath = "//td/span[contains(text(),'Please enter start/end date.')]")
    private WebElement msg_errorDatePicker;

    @FindBy(xpath = "//td//span[contains(text(),'.')]")
    private List<WebElement> msg_allErrors;

    @FindBy(xpath = "//td//span[contains(text(),'End Date must be greater than Start Date.')]")
    private WebElement msg_errorSmallerDate;

    @FindBy(xpath = "//span//*[contains(text(),'Notification message cannot be longer than 400 characters.')]")
    private WebElement msg_errorLongerMessage;

    @FindBy(xpath = "//tr[contains(@class,'SelectedRowColor')]")
    private WebElement selectedProduct;

    @FindBy(xpath = "//a[text()='Product History']")
    private WebElement tab_productHistory;

    @FindBy(xpath = "//textarea[text()='Testing Product Notification-Test Message']")
    private WebElement txt_value;

    @FindBy(xpath = "//span//*[contains(text(),'Notification message cannot be longer than 400 characters.')]")
    private List<WebElement> msg_errorLongerMsg;

    public static String pickStartDate = "//div[@id='ui-datepicker-div']/table/tbody/tr/td/a[@data-date='%s']";

    public static String pickEndDate = "//div[@id='ui-datepicker-div']/table/tbody/tr/td/a[@data-date='%s']";

    public static String list_ProductDetailsOption = "(//div[@id='tabProd']//table)[1]//td//input[@type='%s']";

    public static String list_ProductDetailsOptions = "(//div[@id='tabProd']//table)[1]//td//*[@name='%s']";

    public static String msg_ProductNotification = "//td/span[contains(text(),'%s')]";

    public String values = "//div[@id='tabHistory']//table//tbody/tr/td[contains(text(),'%s')]";

    @FindBy(xpath = "//div[@class='wizardDesignerComponent__checkBox']//i")
    private WebElement checkBoxDesignerWizard;

    @FindBy(xpath = "//i[@title='Delete']")
    private WebElement icon_DeleteWizard;

    @FindBy(xpath = "//button[@class='button wizardDesigner__saveButton  ']")
    private WebElement btn_SaveWizard;

    @FindBy(xpath = "//div[@class='wizardDesignerGrid__fields']")
    private WebElement blankDestinationFormId;

    @FindBy(id = "SearchStr")
    private WebElement txt_SearchBoxAdmin;

    @FindBy(xpath = "//a[contains(text(),'Rules Window')]")
    private WebElement tab_RulesWindow;

    @FindBy(xpath = "//img[@onclick='Search()']")
    private WebElement btn_SearchStr;

    @FindBy(xpath = "//div[text()='Custom Action']")
    private WebElement lnk_CustomAction;

    private String sourceDragElement = "//div[@class='wizardDesignerToolboxComponent__description' and text()='%s']/preceding-sibling::i";

    private String txtBox_All= "//div[contains(text(),'%s')]/following-sibling::div[@class='wizardDesignerComponent__textboxField']";

    @FindBy(xpath = "//button[contains(text(),'OK')]")
    private WebElement btn_OK;

    private String list_FormTextBox = "//span[contains(text(),'%s')]/preceding-sibling::span[@id='%s']";

    @FindBy(id = "btnUpdateFieldProps")
    private WebElement btn_Update;

    @FindBy(id = "btnUpdateMask")
    private WebElement btn_UpdateMasks;
    @FindBy(xpath = "//select[@id='ddlBrokerOrgList']")
    private List<WebElement> list_DdlBrokerOrgList;

    @FindBy(xpath = "//div[@id='lblStatus']")
    private WebElement txt_SalesAgreementSaveMsg;

    private String deleteOptionPage = "//td[contains(text(),'Product for Script')]/parent::tr//td//a[contains(text(),'%s')]";

    @FindBy(xpath = "//div[@id='delete-dialog']")
    private WebElement msg_AlertDeleteSalesAgreement;

    @FindBy(xpath = "//button[@id='btnManage']")
    private WebElement btn_ManageSalesAgreement;

    @FindBy(xpath = "//div[@id='divBatchList']//a[contains(text(),'Rename')]")
    private WebElement btn_RenameSalesAgreement;

    @FindBy(xpath = "(//input[@id='orglist'])[1]")
    private WebElement btn_DivOrgSalesAgreement;

    @FindBy(xpath = "//button[@id='btnSaveBatch']")
    private WebElement btn_SaveBatch;

    @FindBy(xpath = "//div[@id='lblBatchStatus']")
    private WebElement txt_SalesAgreementlblBatchStatus;

    @FindBy(xpath = "//button[@id='btnCopySA']")
    private WebElement btn_CopySalesAgreement;

    @FindBy(xpath = "(//div[contains(text(),'1 Sales Agreements will be overwritten')]/following-sibling::div//span)[1]")
    private WebElement btn_CopyConfirmationSalesAgreement;

    @FindBy(xpath = "//select[@id='ddlBatchList']")
    private List<WebElement> list_DdlBatchList;

    @FindBy(xpath = "//button[@id='btnDeleteSA']")
    private WebElement btn_DeleteSalesAgreement;

    @FindBy(xpath = "(//div[contains(text(),'delete 1 Sales Agreement?')]/following-sibling::div//span)[1]")
    private WebElement btn_DeleteConfirmationSalesAgreement;

    @FindBy(xpath = "(//input[@id='txtBatch'])[1]")
    private WebElement txt_SavedBatchesBox;

    private String deleteSalesAgreement = "//td[contains(text(),'Auto Multi SA')]/parent::tr//td//a[contains(text(),'%s')]";

    @FindBy(xpath = "//table[@id='tblActivityList']/tbody//tr//a")
    private List<WebElement> list_AdminActivities;

    private String list_ActivityDetail = "//div[@id='tabI']//tbody//tr/td[contains(text(),'%s')]/following-sibling::td/input";

    @FindBy(xpath = "//button[@title='Copy']")
    private WebElement btn_CopyFormURL;

    @FindBy(xpath = "//td[contains(text(),'Form URL')]/following-sibling::td//input[@id='FormURL']")
    private WebElement formURLCopied;

    @FindBy(xpath = "//select[@id='ddlBatchList']")
    private WebElement select_SavedBatches;

    @FindBy(xpath = "//div[@id='divBatchTxt']//a")
    private WebElement txt_CanceledBatches;

    @FindBy(xpath = "(//div[@id='dialogCopySA'])[1]")
    private WebElement txt_CopyAlertMsg;

    public String sourceDragToolBox = "//div[@data-fieldtype='%s']/i";

    public String btnAnyOnAdmin = "//button[contains(text(),'%s')]";

    public String option_Review = "//li[@title='%s']/a";

    public String dD_city = "//select[@id='%s']";

    public String anyHeader = "//header[contains(text(),'%s')]";

    public String chkBox_ManageSalesAgreeBox = "//input[@chkname='%s']";

    @FindBy(xpath = "//span[@id='SelectedProduct_MarketingName-error']")
    private WebElement msg_ProductNameError;

    public AdminProductPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
        PageFactory.initElements(driver, this);
    }
}