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
public class MyPreferencesPage extends FLUtilities
{
    @FindBy(xpath = "//select[@id='CrmSelectedInt']")
    private WebElement btn_CRMDropdownValue;

    @FindBy(xpath = "//button[@id='btnSave']")
    private WebElement btn_CRMSave;

    @FindBy(xpath = "//a[@id='toolbar_Home']")
    private WebElement toolBar_HomePreferences;

    private By dd_PreferencesLocaleMVC = By.id("Locale");
    private By dd_PreferencesLocaleReact = By.xpath("//select[@aria-label='Locale']");

    @FindBy(id="toolbar_Preferences")
    private WebElement toolBar_Preferences;

    @FindBy(xpath = "//a[@aria-label='My Preferences']")
    private WebElement tab_Preference;

    private String btnUnlockByAppName="//strong[text()='%s']/ancestor::table[@tabindex]//button[contains(@aria-label,'Unlock')]";
    private String btnReviewByAppName = "//strong[text()='%s']/ancestor::table[@tabindex]//input[contains(@id,'reviewbtn')]";
    private String btnInQueue ="//div[@id='divMass']/button[text()='%s']";
    private String btnApproveByAppName="//strong[text()='%s']/ancestor::table[@tabindex]//button[contains(@aria-label,'Approve Application')]";

    @FindBy(xpath = "//a[@aria-label='My Preferences']")
    private List<WebElement> list_TabPreference;

    @FindBy(xpath = "//a[contains(@aria-label,'Attaching Supplemental Documents to an Activity')]")
    private WebElement link_AttachingSupplementalDocuments;

    public MyPreferencesPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
        PageFactory.initElements(driver, this);
    }
}