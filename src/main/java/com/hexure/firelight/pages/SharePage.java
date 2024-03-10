package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

@Data
public class SharePage extends FLUtilities {
    private static final Logger Log = LogManager.getLogger(SharePage.class);
    private By btn_Search1 = By.id("searchImg");
    private By btn_Search = By.xpath("//a[@area-label='Search']//img");
    private By txt_ShareMessage = By.xpath("//div[@id='dialogShareAppOtherMenu']//strong");
    private By txt_ShareMessage1 = By.id("toastid1");
    private By btn_CloseX = By.xpath("(//div[@aria-describedby='dialogAppShare']//button[contains(@class,'ui-dialog-titlebar-close')])[1]");
    private By btn_CloseX2 = By.xpath("(//div[@aria-describedby='dialogShare']//button[contains(@class,'ui-dialog-titlebar-close')])[1]");
    private By btn_CloseX1 = By.className("close");
    @FindBy(xpath = "//input[contains(@placeholder,'Name')]")
    private WebElement txtbox_ShareName;

    @FindBy(xpath = "//span[@class='existing']//div[contains(text(),'activity share')]")
    private WebElement txt_ShareMsg;

    @FindBy(xpath = "//span[@class='existing']//div[contains(text(),'Shared Link')]")
    private WebElement txt_ShareLink;

    @FindBy(xpath = "//div[@id='Main']/div")
    private WebElement msg_ThankYou;

    @FindBy(xpath = "//select[@id='ShareUsers']")
    private WebElement select_User;

    @FindBy(xpath = "//div[@class='largeText']")
    private WebElement txt_popUpMessage;

    @FindBy(xpath = "//input[@id='CompleteSigning']")
    private WebElement checkbox_CompleteSigning;

    @FindBy(xpath = "//input[@id='CompleteSigningWOPrimaryAgent']")
    private WebElement CompleteSigningWOPrimaryAgent;

    @FindBy(xpath = "//input[@id='CompletePreSignatureReview']")
    private WebElement checkbox_CompletePreSignatureReview;

    @FindBy(xpath = "//a[contains(text(),'[Remove Share]')]")
    private WebElement txt_RemoveShareButtton;

    @FindBy(xpath = "//canvas[@id='REVIEW']")

    private WebElement txt_PreSignReview;

    @FindBy(xpath = "//span[contains(text(),'REVIEW')]")

    private By btn_SearchBtn = By.xpath("//button[@class='blueButton shadow roundCorners'][3]");

    private By btn_SaveBtn = By.xpath("//button[@class='blueButton shadow roundCorners'][2]");

    private By btn_CancelBtn = By.xpath("//button[@class='blueButton shadow roundCorners'][4]");

    @FindBy(xpath = "//span[contains(text(),'REVIEW')]")
    private WebElement txt_PreSignReviewReact;

    @FindBy(xpath = "//button[@aria-label='Search']")
    private WebElement btn_SrchBtn;

    @FindBy(id = "lblFilter")
    private WebElement txt_Result;

    @FindBy(xpath = "//div[@id='lblFilter']//strong")
    private WebElement txt_ResultCount;

    @FindBy(xpath = "//a[@aria-label='Page 1']")
    private WebElement txt_Page1;

    @FindBy(xpath = "//input[@id='all']")
    private WebElement btn_All;

    @FindBy(xpath = "//input[@id='month']")
    private WebElement btn_Month;

    public String txtMessage = "//strong[contains(text(),'%s')]";

    public String anchorTagCommon = "//a[contains(text(),'%s')]";

    public SharePage(WebDriver driver) {
        initElements(driver);
    }
    private void initElements(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }
}

