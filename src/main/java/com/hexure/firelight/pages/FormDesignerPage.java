package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;

import lombok.Data;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;
@Data
public class FormDesignerPage extends FLUtilities {

    public static String formControl="//a[text()='%s']";
    public static String controlList="//div[@id='divPageDisplay']//span";
    public static String list_ComboBox="//div[@id='divPageDisplay']/div[@readonly]";
    public static String controlListReact="//div[@id='viewSelection']";
    public static String controlWizards="//div[@class='wizardDesignerComponent__content ']//div[contains(@class,'wizardDesignerComponent')]";
    public static String dialogWait="//div[@id='dialogWait']";
    public static String customAction="//select[@id='CustomActionType']";

    @FindBy(xpath="//select[@id='CustomActionType']")
    private WebElement customActionType;

    @FindBy(xpath="//select[@id='CurrentActionType']")
    private WebElement currentActionType;

    @FindBy(xpath = "//input[@value='Update']")
    private WebElement btn_Update;

    @FindBy(xpath = "//input[@value='Close']")
    private WebElement btn_Close;

    @FindBy(xpath = "//button[text()='Close']")
    private WebElement btn_CloseReact;

    @FindBy(xpath = "//button[text()='Add New Page']")
    private WebElement btn_AddPage;

    @FindBy(xpath="//div[@id='btnSaveFormControls']")
    private WebElement btn_FormControlSave;

    @FindBy(xpath = "//div[@id='divPageDisplay']//span")
    private List<WebElement> list_Controls;

    @FindBy(xpath="//a[@id='lnkDeleteControl']")
    private WebElement link_deleteControl;

    @FindBy(xpath="//div[text()='Delete Page']")
    private WebElement link_deletePage;

    @FindBy(xpath="//div[@id='dialogFieldProperties']")
    private WebElement fieldPropertiesDialog;

    @FindBy(xpath="//header[@class='dialog__header']")
    private WebElement customActionDialog;

    @FindBy(xpath = "//select[@id='ddlForm']")
    private WebElement ddFormDesigner;

    @FindBy(xpath = "//span[contains(@class,'formDesignItem')]")
    private List<WebElement> controlCountFormDesigner;

    @FindBy(xpath = "//div[contains(@class,'wizardDesignerComponent__content')]")
    private List<WebElement> listWizardField;

    @FindBy(xpath = "//div[@id='customAction']//select[@class='dropdown__element']")
    private WebElement selectCustomAction;

    @FindBy(xpath = "//div[@id='customActionType']//select[@class='dropdown__element']")
    private WebElement selectCustomActionType;

    @FindBy(xpath = "//div[contains(@class,'wizardDesignerComponent__navLink')]")
    private WebElement verifyCustomAction;

    @FindBy(xpath = "//font[contains(text(),'[Close]')]")
    private WebElement closePopUpp;

    @FindBy(xpath = "//div[@id='mask']//select[@class='dropdown__element']")
    private WebElement selectCustomMask;

    private String comboBox = "//div[contains(@id,'ComboBox_')]";

    public FormDesignerPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
        PageFactory.initElements(driver, this);
    }

}
