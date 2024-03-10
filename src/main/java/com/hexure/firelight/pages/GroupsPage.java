package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import java.util.List;

@Data
public class GroupsPage extends FLUtilities {

    @FindBy(xpath = "//div[@class='toolbar']/div")
    private List<WebElement> list_menuOptions;

    @FindBy(xpath = "//div[@id='divGroupList']//td[3]/a")
    private List<WebElement> list_RoleCodes;

    @FindBy(id = "ExternalRoleCodesString")
    private WebElement txtBoxArea_roleCode;

    @FindBy(id = "btnSaveGroup")
    private WebElement btn_SaveGroup;

    @FindBy(id = "btnSubmit")
    private WebElement btn_Save;

    @FindBy(xpath = "//ul[@id='submitGroup']//input[@id='EnableHTTPRedirectOnSubmit']")
    private WebElement checkBox_SubmitSection;

    @FindBy(xpath = "//ul[@id='submitGroup']//input[@id='HTTPRedirectURL']")
    private WebElement txtBox_SubmitEnableHTTP;

    @FindBy(id = "lblStatus")
    private WebElement msg_GroupsSaved;

    @FindBy(id = "lblValStatus")
    private WebElement msg_GroupsError;

    @FindBy(className = "chkGrpClass")
    private List<WebElement> chkGroups;

    @FindBy(xpath = "//div[@id='divGroupList']//td[1]/a")
    private List<WebElement> list_Groups;

    public static String listRoleCodes="//div[@id='divGroupList']//a[contains(text(),'%s')]";

    public static String tabsNames="//div[@id='tabs_container']//a[contains(text(),'%s')]";



    public GroupsPage(WebDriver driver) {
        initElements(driver);
    }

    private void initElements(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }
}