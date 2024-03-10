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
public class NotificationsPage extends FLUtilities {
    private static final Logger Log = LogManager.getLogger(NotificationsPage.class);
    private By btn_Search1 = By.id("searchImg");

    @FindBy(id = "search")
    private WebElement txtbox_Search;

    @FindBy(id = "buttonSearch")
    private WebElement btn_Search;

    @FindBy(id = "divMessages")
    private WebElement txt_Subject;

    public NotificationsPage(WebDriver driver) {
        initElements(driver);
    }

    private void initElements(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }

}

