package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import lombok.Data;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

@Data
public class AllActivitiesPage extends FLUtilities
{
    private By applicationStatusReact = By.xpath("//a[@id='imgRInfo']/following-sibling::a");
    private By applicationStatusMVC = By.xpath("//a[contains(@id,'statusLink')]");
    public static String userList="//a[@class='whiteButton roundCorners']//span[contains(text(),'%s')]";

    @FindBy(xpath = "//input[@placeholder='Name, Email']")
    private WebElement txtbox_Name;

    @FindBy(xpath = "//td[@class='lblAppName']/span")
    private List<WebElement> list_ProductName;

    private By searchTxtBox_AllActivitiesPageMVC = By.id("searchString");
    private By searchTxtBox_AllActivitiesPageReact = By.id("SearchStr");

    @FindBy(id = "imgSearch")
    private WebElement btn_searchIcon;

    @FindBy(xpath = "//div[@id='divList']/a//div[@class='listRecent__name']")
    private List<WebElement> tab_ActivityName;

    @FindBy(xpath = "//div[@class='panelContent' and contains(text(),'Last Action:')]")
    private WebElement msg_LastAction;

    @FindBy(id = "userShare")
    private WebElement btn_Share;

    @FindBy(xpath = "//img[@alt='Search']")
    private WebElement btn_Search;

    @FindBy(xpath = "//div[contains(text(),'Thank you for using activity share')]")
    private WebElement txt_ConformationApplication;

    @FindBy(xpath = "//button[@type='button']/preceding-sibling::span[contains(text(),'Share My Activities')]")
    private WebElement dialogBoxShareMyActivities;

    @FindBy(xpath = "//div[@id='dialogAppShare']/strong")
    private WebElement txt_shareMyContacts;

    @FindBy(id = "search")
    private WebElement txtBox_Search;

    @FindBy(xpath = "//div[@id='divShareResult']")
    private WebElement searchResult;

    @FindBy(xpath = "(//a[@aria-label='Share Limited Control'])[2]")
    private WebElement btn_ShareLimitedControl;

    @FindBy(xpath = "//div[contains(text(),'Shared Link')]")
    private WebElement sharedLinkURL;

    @FindBy(xpath = "(//button[@type='button'])[2]")
    private WebElement closeShareActivityDialog;

    @FindBy(xpath = "//div[@id='divRecentShared']/br")
    private WebElement noActivitesShared;

    @FindBy(xpath = "//button[contains(text(),'Shared Activity')]")
    private WebElement btn_SharedActivity;

    @FindBy(xpath = "//select[@id='drpUser']")
    private WebElement  dropDownUserActivities;

    @FindBy(id = "imgFilterSearch")
    private WebElement btn_SearchFilterIcon;

    @FindBy(id = "txtSearchStr")
    private WebElement txt_SearchBox;

    @FindBy(xpath = "//a[@aria-label='View']")
    private  WebElement btn_View;

    @FindBy(xpath = "//a[contains(text(),'[Remove Share]')]")
    private WebElement linkRemoveShare;

    @FindBy(id = "popup_title")
    private WebElement removeActivityHeading;

    @FindBy(xpath = "//*[contains(text(),'I have reviewed and agree with')]/../..//div[@class='ITCheckBox   ']")
    private WebElement checkBoxReviewedAgree;

    @FindBy(id = "dateFilter_All")
    private WebElement btn_DateAll;

    @FindBy(xpath = "(//button[@type='button'])[3]")
    private WebElement closeShareActivityDialog2;

    @FindBy(id = "imgFilterSearch")
    private WebElement dd_UserListSearch;

    @FindBy(xpath = "//a[contains(text(),'Copy')]")
    private WebElement btn_CopyApplication;

    @FindBy(xpath = "//div[contains(text(),'Check/Uncheck All')]")
    private List <WebElement> list_CheckUncheckAll;

    @FindBy(xpath="//div[@id='divShareResult']//child::span")
    private WebElement txt_DivShareResult;

    public static String shareAuditRecords = "//div[@id='dialogHistory']//div[contains(text(),'%s')]";

    public static String leftAuditShareRecords = "//div[@aria-label='Data Entry']/following-sibling::strong[contains(text(),'%s')]";

    public static String checkBoxShareFields = "//input[@aria-label='%s']";

    public static String sharedActivityResults = "//div[@id='divSharedList']//div[@aria-label='%s']";

    public static String searchFields = "//div[@id='dialogUsers']//a[contains(text(),'%s')]";

    public static String listRequiredSigners = "//a[@aria-label='%s']";

    public static String listNewActivity = "//span[contains(text(),'%s')]";

    public String listSharedActivityFullControl = "//div[@id='divShareResult']//a[@class='blueLink FullControlShareLink']";

    public String listSharedActivityResult = "//div[@id='divShareResult']//a[@class='blueLink']";

    public String listSharedActivityReadOnly = "//div[@id='divShareResult']//a[@class='blueLink ReadlOnlyControlLink']";

    @FindBy(xpath = "//div[@id='divShareResult']//span/div")
    private WebElement msg_ShareActivity;

    @FindBy(xpath = "//div[@id='divShareResult']//span/div/a")
    private WebElement link_RemoveShare;

    @FindBy(xpath = "//a[@aria-label='Share Limited Control']")
    private WebElement shareLimitedControlReact;

    public String checkBoxShareFieldsReact = "//input[@aria-label='%s']";

    @FindBy(xpath = "//div[contains(@id,'divReviewLockMessage')]/b")
    private WebElement msg_Popup;

    @FindBy(id="popup_prompt")
    private WebElement txtBox_CopyAppName;

    @FindBy(id = "SearchMyContacts:")
    private WebElement searchMYContactsReact;

    @FindBy(xpath = "//select[@id='userlist']")
    private WebElement dd_ViewUserList;

    @FindBy(xpath = "//div[@id='toastid1']//div")
    private WebElement msg_ToastId;

    @FindBy(xpath = "//div[contains(@title,'Does the owner have existing or pending')]/ancestor::div[@class='groupField ']//div[@title='No']")
    private List<WebElement> list_CheckBoxNo;

    @FindBy(xpath = "//div[@id='popup_content']//input[@type='text']")
    private WebElement txt_popup;

    @FindBy(xpath = "//table[@class='linkedActivitiesTable']//a")
    private List<WebElement> list_LinkedActivities;

    @FindBy(xpath = "//a[contains(text(),'APPLY')]")
    private WebElement btnApply;

    @FindBy(xpath = "//img[contains(@src,'Cancel')]")
    private List<WebElement> list_navBarSecondTabIcon;

    public String checkBoxShareField= "//div[@id='Div_99ed32a4-8e86-4248-86d8-52dd2dfd4cb8']//input[@aria-label='%s']";

    public String btn_shareLimitControl= "(//a[@aria-label='Share Limited Control'])[%s]";

    public String navBarFirstTabIcon = "//span[contains(text(),'%s')]//following-sibling::span";

    @FindBy(xpath = "(//a[@aria-label='Share Limited Control'])[2]")
    private List<WebElement> list_btnShareLimitedControl;

    public boolean verifyStatusInAllActivities(WebDriver driver, TestContext testContext, String status){
        String newProductName = testContext.getMapTestData().get("newProductName");
        for (int i = 0; i < list_ProductName.size(); i++) {
            if(list_ProductName.get(i).getText().trim().equalsIgnoreCase(newProductName)){
                String expectedStatus = driver.findElement(By.xpath("//td[@class='lblAppName']/span[contains(.,'" + newProductName + "')]/ancestor::tr/td/a[contains(@id,'status')]")).getText().trim();
                if (expectedStatus.equalsIgnoreCase(status))
                    return true;
            }
        }
        return false;
    }

    public WebElement getViewButton(WebDriver driver,TestContext testContext){
        String newProductName = testContext.getMapTestData().get("newProductName");
        WebElement btn_View = driver.findElement(By.xpath("//td[@class='lblAppName']/span[contains(.,'" + newProductName + "')]/ancestor::div[contains(@class,'panelApp')]//a[contains(@id,'view')]"));
        return btn_View;
    }

    public WebElement getViewHistoryLink(WebDriver driver,TestContext testContext){
        String newProductName = testContext.getMapTestData().get("newProductName");
        WebElement link_History = driver.findElement(By.xpath("//td[@class='lblAppName']/span[contains(.,'" + newProductName + "')]/ancestor::div[contains(@class,'panelApp')]//a[contains(@aria-label,'History')]"));
        return link_History;
    }

    public WebElement getButton(WebDriver driver,TestContext testContext, String button){
        String newProductName = testContext.getMapTestData().get("newProductName");
        WebElement btn_Button = driver.findElement(By.xpath("//td[@class='lblAppName']/span[contains(.,'" + newProductName + "')]/ancestor::div[contains(@class,'panelApp')]//a[contains(@aria-label,'"+button+"')]"));
        return btn_Button;
    }

    public WebElement getDisabledButton(WebDriver driver,TestContext testContext, String button){
        String newProductName = testContext.getMapTestData().get("newProductName");
        WebElement btn_Button = driver.findElement(By.xpath("//td[@class='lblAppName']/span[contains(.,'" + newProductName + "')]/ancestor::div[contains(@class,'panelApp')]//span[contains(@id,'"+button+"')]"));
        return btn_Button;
    }

    private String link_PendingRequest = "//td[@class='lblAppName']/span[contains(.,'%s')]/ancestor::tr/td/a[text()='(Pending Requests!)']";

    @FindBy(id = "popup_title")
    private List<WebElement> list_removeActivityHeading;

    public AllActivitiesPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
		PageFactory.initElements(driver, this);
    }
}
