package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

@Data
public class MultiSignerPage extends FLUtilities {

    @FindBy(xpath = "//input[@data-item-id='FLI_OWNER_FNAME']")
    private WebElement owner_Firstname;

    @FindBy(xpath = "//input[@data-item-id='FLI_OWNER_LNAME']")
    private WebElement owner_Lastname;

    @FindBy(xpath = "//input[@data-item-id='FLI_OWNER_SSN']")
    private WebElement owner_SsnTin;

    @FindBy(xpath = "//input[@data-item-id='Owner_DOB']")
    private WebElement owner_DateofBirth;

    @FindBy(id = "ITNavBar__Right")
    private WebElement btn_Print;

    public static String dataFilledInputs="//input[@data-dataitemid='%s']";
    public static String dataFilledTextarea="//textarea[@data-dataitemid='%s']";

    public static String dataFilledSelect="//select[@data-dataitemid='%s']";

    public static String dataFemaleCheckBox="//div[@data-dataitemid='%s' and @class='ITCheckBoxContainer']//div[@class='%s']";

    public MultiSignerPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
        PageFactory.initElements(driver, this);
    }

}