package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

@Data
public class GmailPage extends FLUtilities
{
    @FindBy(id="identifierId")
    private WebElement txtbox_Username;

    @FindBy(xpath="//span[text()='Next']")
    private WebElement btn_Next;

    @FindBy(xpath="//input[@type='password']")
    private WebElement txtbox_Password;

    @FindBy(xpath="//div[text()='Compose']")
    private WebElement btn_Compose;

    @FindBy(xpath="//a[contains(text(),'.insurance')]")
    private List<WebElement> link_ExternalSSN;

    @FindBy(xpath="//div[@aria-label='Select']")
    private WebElement btn_SelectAllEmails;

    @FindBy(xpath="//div[@aria-label='Delete']")
    private WebElement btn_Delete;

    public GmailPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
		PageFactory.initElements(driver, this);
    }
}
