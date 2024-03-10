package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.EnumsCommon;
import com.hexure.firelight.libraies.FLException;
import com.hexure.firelight.libraies.FLUtilities;
import com.hexure.firelight.libraies.TestContext;
import lombok.Data;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

@Data
public class TransferPage extends FLUtilities {
    private static final Logger Log = LogManager.getLogger(TransferPage.class);
    private By btn_Search = By.xpath("//a[@aria-label='Search My Contacts']//img");
    private By btn_Search1 = By.id("searchImg");
    private By txt_TransferMessage = By.xpath("//div[@id='dialogTransferAppOtherMenu']//strong");
    private By txt_TransferMessage1 = By.id("toastid1");
    private By btn_CloseX = By.xpath("(//span[text()='Transfer Activity']//following-sibling::button[contains(@class,'ui-dialog-titlebar-close')])[1]");
    private By btn_CloseX1 = By.className("close");
    @FindBy(xpath = "//input[@placeholder='Name']")
    private WebElement txtbox_TransferName;

    @FindBy(xpath = "//select[@id='ShareUsers']")
    private WebElement select_User;

    @FindBy(xpath = "//div[@class='largeText']")
    private WebElement txt_popUpMessage;

    private By btn_SurrenderingCompanyLookupMVC = By.xpath("//button[@data-dataitemid='Replacement_Company_Lookup']");
    private By btn_SurrenderingCompanyLookupReact = By.xpath("//a[@data-item-id='ButtonOpen1035']");

    @FindBy(id = "SearchCedingCompany")
    private WebElement txtBox_SearchCeedingCompany;

    @FindBy(xpath = "//span[contains(text(),'Surrendering Company Lookup')]")
    private WebElement btn_LookupEForm;

    @FindBy(xpath = "//div[@id='divTransferComplete']//strong")
    private WebElement messageTransferComplete;

    @FindBy(xpath = "//span[contains(text(),'Transfer Activity')]/following-sibling::button")
    private WebElement btn_CloseTransfer;

    @FindBy(xpath = "//div[@id='divCRMList']/div")
    private WebElement numberOfRecord;

    @FindBy(xpath = "//span[@id='ui-id-3']/following-sibling::button")
    private WebElement activityTabCloseButton;

    @FindBy(xpath="//*[@data-item-id='Button_0']")
    private WebElement btn_DataEntry;

    @FindBy(xpath = "//span[@id='ui-id-8']/following-sibling::button")
    private WebElement documentTabCloseButton;

    private String namebox = "//tr/td/a[text()='%s']";

    public TransferPage(WebDriver driver) {
        initElements(driver);
    }

    private void initElements(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

}

