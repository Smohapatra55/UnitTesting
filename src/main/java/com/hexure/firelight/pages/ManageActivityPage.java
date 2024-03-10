package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

@Data
public class ManageActivityPage extends FLUtilities
{
    @FindBy(xpath="//select[@class='ITSelect']")
    private WebElement dd_applicationType;

    @FindBy(xpath="//span[text()='Add Activity']")
    private WebElement btn_addActivity;

    @FindBy(xpath = "//div[contains(@class,'dataGrid__table')]")
    private WebElement table_applicationTable;

    @FindBy(xpath = "//div[@class='dataGrid__row']//div/div[3]")
    private WebElement txt_NewApplicationNameinTable;

    @FindBy(xpath = "//button[@id='imgNext']")
    private WebElement btn_CreateUpdate;

    @FindBy(xpath = "//button[text()='Update']")
    private WebElement btn_Update;

    @FindBy(id="ToggleMessagesLink")
    private WebElement icon_link;

    @FindBy(xpath = "//header[text()='Linked Activities']")
    private WebElement txt_LinkedActivitiesPopupBox;

    private By txt_linkedActivityNameMVC = By.xpath("//div[@id='dialogLinked']//a");
    private By txt_linkedActivityNameReact = By.xpath("//div[@class='linkedActivityName']/a");

    @FindBy(id = "removeActivity")
    private WebElement btn_RemoveActivity;

    @FindBy(id = "addActivity")
    private WebElement btn_AddActivityMVC;

    @FindBy(xpath = "//a[@class='linkedActivitiesButton']/em")
    private WebElement btn_LinkedActivty;
    public static String listNextActivity = "//div[@activityname='%s']";

    private String btn_TopMenu = "//div[@id='divTopMenu']//li/a[contains(text(),'%s')]";

    public ManageActivityPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
		PageFactory.initElements(driver, this);
    }


}
