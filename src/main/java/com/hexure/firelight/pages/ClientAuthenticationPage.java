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
public class ClientAuthenticationPage extends FLUtilities
{
    @FindBy(xpath = "//div[contains(text(),'Client Authentication')]")
    private WebElement client_AuthenticationBox;

   private By selectAnswerForFirstQuestionMVC = By.xpath("(//div[@class='verification_AuthenticationAnswer']//div[@class='ITCheckBoxInput'])[2]");
   private By selectAnswerForFirstQuestionReact = By.xpath("//input[@id='ReturnedAuthentication_AuthenticationQuiz_0__SelectedAnswerChoice']");
   private By selectAnswerForSecondQuestionMVC = By.xpath("(//div[@class='verification_AuthenticationAnswer']//div[@class='ITCheckBoxInput'])[8]");
   private By selectAnswerForSecondQuestionReact = By.xpath("//input[@id='ReturnedAuthentication_AuthenticationQuiz_1__SelectedAnswerChoice']");
   private By selectAnswerForThirdQuestionMVC = By.xpath("(//div[@class='verification_AuthenticationAnswer']//div[@class='ITCheckBoxInput'])[14]");
   private By selectAnswerForThirdQuestionReact = By.xpath("//input[@id='ReturnedAuthentication_AuthenticationQuiz_2__SelectedAnswerChoice']");

    @FindBy(xpath="(//div[@class='ITCheckBoxInput'])[4]")
    private WebElement selectAnswerForFirstQuestionLN;

    @FindBy(xpath="(//div[@class='ITCheckBoxInput'])[10]")
    private WebElement selectAnswerForSecondQuestionLN;

    @FindBy(xpath="(//div[@class='ITCheckBoxInput'])[15]")
    private WebElement selectAnswerForThirdQuestionLN;

    @FindBy(xpath="(//div[@class='ITCheckBoxInput'])[1]")
    private WebElement selectAnswerForFourthQuestionLN;

    private By btn_submitButtonReact = By.xpath("//button[@class='ITButtonInput  ']//span[contains(text(),'Submit')]");
    private By btn_submitButtonMvc = By.id("btnSubmit");

    @FindBy(xpath = "//h2[tabindex='0']")
    private WebElement initials;

    @FindBy(xpath = "//input[@value='Joint Owner']//following-sibling::a")
    private WebElement btn_RemoveJointOwner;

    @FindBy(xpath = "//input[@value='Insured']//following-sibling::a")
    private WebElement btn_RemoveInsured;

    @FindBy(xpath = "//input[@value='Owner']//following-sibling::a")
    private WebElement btn_RemoveOwner;

    @FindBy(xpath = "//input[@value='Payor']//following-sibling::a")
    private WebElement btn_RemovePayor;

    public ClientAuthenticationPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
        PageFactory.initElements(driver, this);
    }
}
