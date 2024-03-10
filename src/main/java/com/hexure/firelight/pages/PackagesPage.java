package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

@Data
public class PackagesPage extends FLUtilities {

    public String tabsOnPackage = "//a[text()='%s']";

    public String formElement = "//table[@class='pkgTbl']//td[contains(@title,'%s')]";

    @FindBy(xpath = "//div[@class='toolbar']/div")
    private List<WebElement> list_menuOptions;

    @FindBy(xpath = "//td[text()='Rule Set to Replace']//parent::tr//input[@placeholder=\"Select or Type...\"]")
    private WebElement txtbox_RuleSetPackage;

    @FindBy(xpath = "//td[text()='Replace with Rule Set']//parent::tr//input[@placeholder=\"Select or Type...\"]")
    private WebElement txtbox_ReplaceWithRuleSet;

    @FindBy(xpath = "//div[@class='ui-menu-item-wrapper'][contains(text(),'RV Test rule set 1')]")
    private WebElement txtbox_RVTestRuleSetPackage;

    @FindBy(xpath = "//select[@id='ddlAllRules']/parent::td//a[@title='Show All Forms']")
    private WebElement btn_ShowAllForms;

    @FindBy(xpath = "//ul[@id='tabsNew']")
    private WebElement tabs_RuleSetAndFormWizardPackage;

    @FindBy(xpath = "//div[text()='FL024 Needs Determination Linked to Forms Only App']")
    private WebElement tabs_RuleSetWindowName;

    @FindBy(xpath = "//button[@id='btnSubmitRuleSwapping']")
    private WebElement btn_SubmitRulesSwapping;

    @FindBy(xpath = "//div[@aria-describedby='SaveRuleDialog']//span[contains(text(),'Yes')]")
    private WebElement btn_SubmitRulesSwappingYes;

    public String fieldWithTitlAttribute = "//*[@title=\"%s\"]";


    @FindBy(xpath = "//td[text()='Form/Wizard to Replace']//parent::tr//input[@placeholder=\"Select or Type...\"]")
    private WebElement txtbox_FormWizardToReplace;

    @FindBy(xpath = "//td[text()='Replace with Form/Wizard']//parent::tr//input[@placeholder=\"Select or Type...\"]")
    private WebElement txtbox_ReplaceWithFormWizard;

    @FindBy(xpath = "//div[@aria-describedby='SaveDialog']//span[contains(text(),'Yes')]")
    private WebElement btn_SaveDialogYes;

    @FindBy(xpath = "//button[@id='btnSubmitFormSwapping']")
    private WebElement btn_SubmitFormSwapping;

    @FindBy(xpath = "//div[@id='SaveRuleDialog']")
    private WebElement btn_ReplaceRuleSetPopUp;

    @FindBy(xpath = "//input[@id='SelectedFormGuid']/..//label[@id='lblStatus']")
    private WebElement btn_ReplaceRuleSetMsg;

    public String txt_PackageHistoryMsg = "//table[@id='tablePackageHistory']//td[contains(text(),'%s')]";

    @FindBy(xpath = "//select[@id='ddlPrimaryRuleSet']")
    private WebElement dd_DefaultPrimaryRuleSet;

    public String txt_FormHistoryMsg = "//table[@id='tableFormHistory']//td[contains(text(),'%s')]";

    @FindBy(xpath = "//div[@id='primaryRuleSetId']//select")
    private WebElement dd_DefaultPrimaryRuleSetWizard;

    @FindBy(xpath = "//div[@id='SaveDialog']")
    private WebElement btn_ReplaceRuleSetPopUpFormWizard;

    @FindBy(xpath = "//table[@id='tblProductList']//tr/td[normalize-space()='Product for Script']//..//label")
    private WebElement Txt_SingleLabelSales;

    public PackagesPage(WebDriver driver) {
        initElements(driver);
    }

    private void initElements(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }
}
