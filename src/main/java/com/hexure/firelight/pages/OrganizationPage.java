package com.hexure.firelight.pages;

import com.hexure.firelight.libraies.FLUtilities;
import lombok.Data;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

@Data
public class OrganizationPage extends FLUtilities {

    private String tabNameByText = "//a[text()='%s']";

    @FindBy(xpath = "//button[@id='btnSubmit']/parent::div/following-sibling::div")
    private WebElement msgOrganizationPage;

    @FindBy(xpath = "//div[@id='divMask']//a[contains(text(),'Add')]")
    private WebElement btn_AddMask;

    @FindBy(xpath = "//span[contains(text(),'Add Mask')]")
    private WebElement popUp_AddMask;

    @FindBy(id = "cboMask")
    private WebElement dd_MaskTypes;

    @FindBy(id = "MaskName")
    private WebElement maskName;

    @FindBy(id = "btnAddMask")
    private WebElement btn_AddMaskPopUp;

    @FindBy(id = "btnSubmit")
    private WebElement btn_SaveOrganisation;

    @FindBy(id = "cboMaskFieldProp")
    private WebElement dd_Masks;

    @FindBy(name = "maskselect")
    private WebElement dd_TextMasks;

    @FindBy(xpath = "//button//span[contains(text(),'Confirm')]")
    private WebElement btn_Confirm;

    @FindBy(id = "dialogDelete")
    private WebElement popUp_Delete;

    @FindBy(name = "customMasktextbox")
    private WebElement txtBox_CustomMask;

    @FindBy(name = "texttextbox")
    private WebElement txtBox_Properties;

    @FindBy(id = "btnCloseFieldProps")
    private WebElement btn_Close;

    @FindBy(xpath = "//div[@id='popup_message']")
    private WebElement txt_InvalidSelectionMsg;

    @FindBy(xpath = "//span[contains(text(),'Single')]")
    private WebElement txt_SingleLabel;

    @FindBy(xpath = "//span[contains(text(),'Cumulative')]")
    private WebElement txt_CumulativeLabel;

    @FindBy(xpath = "//select[@id='ddlCumMaxSize']")
    private WebElement select_CumulativeLabelDropDown;

    @FindBy(xpath = "//input[@id='btnCloseFieldProps']")
    private WebElement btn_CloseFieldProperties;

    @FindBy(id = "cboMaskFieldProp")
    private List<WebElement> list_ddMasks;

    public OrganizationPage(WebDriver driver) {
        initElements(driver);
    }

    private void initElements(WebDriver driver) {
        PageFactory.initElements(driver, this);
    }
}