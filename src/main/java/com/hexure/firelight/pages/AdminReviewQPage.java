package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

@Data
public class AdminReviewQPage extends FLUtilities {

    @FindBy(xpath = "//input[contains(@id,'QueueId')]/following-sibling::tbody/tr/td")
    private List<WebElement> list_QueueName;

    public static String dataFields="//input[@data-item-id='%s' or @id='%s']";
    public static String dataFieldsError="//input[@data-item-id='%s' or @id='%s']/following-sibling::span";

    public AdminReviewQPage(WebDriver driver)
    {
        initElements(driver);
    }

    private void initElements(WebDriver driver)
    {
        PageFactory.initElements(driver, this);
    }
}
