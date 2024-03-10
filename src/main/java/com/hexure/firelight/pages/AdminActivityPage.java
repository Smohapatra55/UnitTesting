package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

public class AdminActivityPage extends FLUtilities {
    public static String listActivityNames="//a[contains(text(),'%s')]";
    public static String listActivityTypeNames="//div[@id='divActivityList']//a[contains(text(),'%s')]";
    public static String listNextActivities="//div[@id='IncludedActivities']//b[contains(text(),'%s')]";

    public String toolbarAdmin = "//div[contains(text(),'%s')]";
    public String toolbar_SubMenu = "//a[contains(text(),'%s')]";

    @FindBy(xpath = "//select[@id='ddlForm']//option")
    private List<WebElement> dd_FormDesig;

    @FindBy(xpath = "//select[@id='SelCarrierId']/option")
    public List<WebElement> txt_organizationName;

    public String tab_AdminHomePage = "//section[@id='main']//a[contains(text(),'%s')]";


    public AdminActivityPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
        PageFactory.initElements(driver, this);
    }
}
