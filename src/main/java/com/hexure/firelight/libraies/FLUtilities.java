package com.hexure.firelight.libraies;

import org.apache.commons.io.FileUtils;
import org.apache.pdfbox.cos.COSName;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageTree;
import org.apache.pdfbox.pdmodel.PDResources;
import org.apache.pdfbox.pdmodel.graphics.PDXObject;
import org.apache.pdfbox.pdmodel.graphics.image.PDImageXObject;
import org.apache.pdfbox.text.PDFTextStripper;
import org.json.simple.parser.ParseException;
import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.imgcodecs.Imgcodecs;
import org.opencv.imgproc.Imgproc;
import org.openqa.selenium.*;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.*;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.datatransfer.Clipboard;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.*;
import java.sql.*;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class FLUtilities extends BaseClass
{
    private static final Logger Log = LogManager.getLogger(FLUtilities.class);
    private String pdfFileName = "";
    private String pdfText_global = "";

    /**
     * This method waits for the WebElement (passed as a parameter) to be Visible/Clickable/Invisible state on the page.
     * WebDriver will try to wait for the WebElement as per time duration provided for WebDriverWait in Seconds.
     * If WebDriver fails to find/meet condition for that particular duration, it will throw an Exception. User should provide
     * duration as per nature/response of Application. More duration will result in increase in execution time if WebDriver
     * fails to sync WebElement.
     *
     * @param driver The WebDriver instance
     * @param element The WebElement to be synced
     * @param conditionForWait Condition for WebElement to be synced
     */
    protected void syncElement(WebDriver driver, WebElement element, String conditionForWait)
    {
        try{
            switch (conditionForWait)
            {
                case "ToVisible":
                    new WebDriverWait(driver, 15)
                            .until(ExpectedConditions.visibilityOf(element));
                    break;

                case "ToClickable":
                    new WebDriverWait(driver, 15)
                            .until(ExpectedConditions.elementToBeClickable(element));
                    break;

                case "ToInvisible":
                    new WebDriverWait(driver, 15)
                            .until(ExpectedConditions.invisibilityOf(element));
                    break;

                default:
                    throw new FLException("Invalid Condition " + conditionForWait);
            }
        }catch (StaleElementReferenceException e){}
        catch (Exception e)
        {
            Log.error("Could Not Sync WebElement ", e);
            throw new FLException("Could Not Sync WebElement " + e.getMessage());
        }
    }

    /**
     * This method waits for the List of WebElements (passed as a parameter) to be Visible or Invisible state on the page.
     * WebDriver will try to wait for the List of WebElements as per time duration provided for WebDriverWait in Seconds.
     * If WebDriver fails to find/meet condition for that particular duration, it will throw an Exception. User should provide
     * duration as per nature/response of Application. More duration will result in increase in execution time if WebDriver
     * fails to sync the List of WebElements.
     *
     * @param driver The WebDriver instance
     * @param elementsList The List of WebElements to be synced
     * @param conditionForWait Condition for WebElement to be synced
     */
    protected void syncMultipleElement(WebDriver driver, List<WebElement> elementsList, String conditionForWait)
    {
        try{
            switch (conditionForWait)
            {
                case "ToVisible":
                    new WebDriverWait(driver, 15).until(ExpectedConditions.visibilityOfAllElements(elementsList));
                    break;

                case "ToInvisible":
                    new WebDriverWait(driver, 15).until(ExpectedConditions.invisibilityOfAllElements(elementsList));
                    break;

                default:
                    throw new FLException("Invalid Condition " + conditionForWait);
            }
        }catch (Exception e)
        {
            Log.error("Could Not Sync WebElement ", e);
            throw new FLException("Could Not Sync WebElement " + e.getMessage());
        }
    }

    /**
     *
     * This method clicks the WebElement (passed as a parameter). The method first calls the syncElement method and make
     * sure WebElement is in clickable state on the page, if failed to sync/click then will throw an Exception.
     *
     * @param driver The WebDriver instance
     * @param element The WebElement to be clicked
     */
    protected void clickElement(WebDriver driver, WebElement element)
    {
        syncElement(driver, element, EnumsCommon.TOCLICKABLE.getText());

        try{
            if(!element.isDisplayed()){
                scrollToWebElement(driver, element);
                element.click();
            }else{
                element.click();
            }
        }catch (Exception e){
            Log.error("Could Not Click WebElement ", e);
            throw new FLException("Could Not Click WebElement " + e.getMessage());
        }
    }

    /**
     * This method scrolls the page till the WebElement (passed as a parameter) is displayed using JavascriptExecutor
     * Interface. If WebElement not found it will throw an Exception.
     *
     * @param driver The WebDriver instance
     * @param element The WebElement to be scrolled
     */
    protected void scrollToWebElement(WebDriver driver, WebElement element) {
        try{
            ((JavascriptExecutor)driver).executeScript("arguments[0].scrollIntoView(true);", element);
        }catch (Exception e){
            Log.error("Could Not Scroll WebElement ", e);
            throw new FLException("Could Not Scroll WebElement " + e.getMessage());
        }
    }

    /**
     * This method scrolls the page till top contents of the page using JavascriptExecutor Interface. If page failed to
     * scroll up it will throw an Exception.
     *
     * @param driver The WebDriver instance
     */
    protected void scrollToTopOfPage(WebDriver driver) {
        try{
            ((JavascriptExecutor) driver).executeScript("window.scrollTo({behavior: \"instant\", top: 0, left: 0})");
        }catch (Exception e){
            Log.error("Could Not Scroll WebElement ", e);
            throw new FLException("Could Not Scroll WebElement " + e.getMessage());
        }
    }

    /**
     *
     * This method clicks the WebElement (passed as a parameter) using JavascriptExecutor Interface. The method first
     * calls the syncElement method and make sure that the WebElement is in visible state on the page, if failed to sync/click
     * then will throw an Exception.
     *
     * @param driver The WebDriver instance
     * @param element The WebElement to be clicked
     */
    protected void clickElementByJSE(WebDriver driver, WebElement element) {
        syncElement(driver, element, EnumsCommon.TOVISIBLE.getText());

        try{
            ((JavascriptExecutor)driver).executeScript("arguments[0].click();", element);
        }catch (Exception e){
            Log.error("Clicking WebElement By JavaScriptExecutor Failed ", e);
            throw new FLException("Clicking WebElement By JavaScriptExecutor Failed " + e.getMessage());
        }
    }

    /**
     * This method scrolls the page till the WebElement (passed as a parameter) is displayed using Action class.
     * If WebElement not found it will throw an Exception.
     *
     * @param driver The WebDriver instance
     * @param element The WebElement to be scrolled
     */
    protected void moveToElement(WebDriver driver, WebElement element)
    {
        try {
            new Actions(driver).moveToElement(element).build().perform();
        }catch (Exception e) {
            Log.error("Move MouseOver Action WebElement Failed ", e);
            throw new FLException("Move MouseOver Action WebElement Failed " + e.getMessage());
        }
    }

    /**
     * This method is used to enter text/input in the Textbox/WebElement (passed as a parameter). The method first
     * calls the syncElement method and make sure that the WebElement is in visible state on the page, if failed to
     * sync/click then will throw an Exception.
     *
     * @param driver The WebDriver instance
     * @param element The WebElement/Input box
     * @param stringToInput The String/Text to be entered
     */
    protected void sendKeys(WebDriver driver, WebElement element, String stringToInput)
    {
        syncElement(driver, element, EnumsCommon.TOVISIBLE.getText());
        try {
            element.clear();
            clickElement(driver, element);
            element.sendKeys(stringToInput);
            element.sendKeys(Keys.TAB);
        } catch (Exception e) {
            Log.error("SendKeys Failed ", e);
            throw new FLException(stringToInput + " could not be entered in element" + e.getMessage());
        }
    }

    /**
     * This method is used to click/hover specific WebElement from the list of WebElement(passed as a parameter). The specific
     * WebElement will be determined based on the value of parameter (optionValue) passed on, which matches the value of
     * WebElement text using getText() method along with contains() method.
     *
     * @param driver The WebDriver instance
     * @param webElementList The List of WebElements to be synced
     * @param optionValue Value of the WebElement text
     * @param actionType Action whether click or move/hover WebElement
     */
    protected void selectOptionFromList(WebDriver driver, List<WebElement> webElementList, String optionValue, String actionType)
    {
        try {
            for (WebElement webElement: webElementList){
                if (webElement.getText().trim().contains(optionValue.trim())){
                    if(actionType.trim().equalsIgnoreCase("click"))
                        clickElementByJSE(driver, webElement);
                    else
                        moveToElement(driver, webElement);
                }
            }
        }catch (StaleElementReferenceException e){}
        catch (Exception e) {
            Log.error("Clicking WebElement From List Failed ", e);
            throw new FLException("Clicking WebElement From List Failed " + e.getMessage());
        }

    }

    /**
     * This method is used to click/hover specific WebElement from the list of WebElement(passed as a parameter). The specific
     * WebElement will be determined based on the value of parameter (optionValue) passed on, which matches the value of
     * WebElement text using getText() method along with equalsIgnoreCase() method.
     *
     * @param driver The WebDriver instance
     * @param webElementList The List of WebElements to be synced
     * @param optionValue Value of the WebElement text
     * @param actionType Action whether click or move/hover WebElement
     */
    protected void selectOptionFromListByCase(WebDriver driver, List<WebElement> webElementList, String optionValue, String actionType)
    {
        try {
            for (WebElement webElement: webElementList){
                if (webElement.getText().trim().equalsIgnoreCase(optionValue.trim())){
                    if(actionType.trim().equalsIgnoreCase("click"))
                        clickElement(driver, webElement);
                    else
                        moveToElement(driver, webElement);
                }
            }
        }catch (StaleElementReferenceException e){}
        catch (Exception e) {
            Log.error("Clicking WebElement From List Failed ", e);
            throw new FLException("Clicking WebElement From List Failed " + e.getMessage());
        }

    }

    /**
     * This method is used to hold whole execution for the specific time duration/milliseconds (passed as a parameter).
     * User has to be very careful while calling this method as it holds down entire scripts execution even if WebElement
     * is available on the page for further action.
     *
     * @param milliSeconds Time duration in milliseconds to hold execution
     */
    protected void sleepInMilliSeconds(int milliSeconds)
    {
        try {
            Thread.sleep(milliSeconds);
        } catch (InterruptedException e) {
            Log.error("Explicit Sleep Failed ", e);
            throw new FLException("Explicit Sleep Failed " + e.getMessage());
        }
    }

    /**
     * This method is used to wait till the text of the WebElement in visible using getText() method. Method will wait
     * till time duration specified (passed as a parameter) for the text to be visible and if not found then Exception
     * will be thrown.
     *
     * @param driver The WebDriver instance
     * @param element The WebElement of which text to be visible
     */
    protected void waitTilTextIsVisible(WebDriver driver, WebElement element){
        try {
            (new WebDriverWait(driver, 15)).until(new ExpectedCondition<Boolean>() {

                public Boolean apply(WebDriver driver1){

                    return element.getText().length() != 0;
                }
            });
        }catch (Exception e){
            Log.error("TEXT WAS NOT VISIBLE WITHIN GIVEN TIME");
            throw new FLException("TEXT WAS NOT VISIBLE WITHIN GIVEN TIME" + e);
        }
    }

    /**
     * This method will wait till the list of dropdown is loaded on the page for further action to be performed.
     * Method will keep checking if dropdown list is loaded or not till the give duration using polling time specified
     * in FluentWait() method.
     *
     * @param driver The WebDriver instance
     * @param dropdown The Select/Dropdown object for which list is expected to be visible
     */
    protected void waitUntilDropDownListPopulated(WebDriver driver, Select dropdown)
    {
        try{
            FluentWait<WebDriver> wait = new FluentWait<WebDriver>(driver);
            wait.pollingEvery(250,  TimeUnit.MILLISECONDS);
            wait.withTimeout(15, TimeUnit.SECONDS);
            wait.ignoring(NoSuchElementException.class);

            Function<WebDriver, Boolean> function = arg0 -> {
                return dropdown.getOptions().size() > 3;
            };

            wait.until(function);

        }catch (StaleElementReferenceException se){}
        catch (Exception e) {}
    }

    /**
     * By using Action class and its methods along with X/Y co-ordinates this method will draw/add digital signature on
     * specified WebElement (passed as parameter).
     *
     * @param driver The WebDriver instance
     * @param element The WebElement on which digital signature needs to be added
     */
    protected void addDigitalSignature(WebDriver driver, WebElement element) {
        try {
            Actions builder = new Actions(driver);
            scrollToWebElement(driver, element);
            builder.moveToElement(element).perform();
            builder.clickAndHold(element).perform();
            builder.moveByOffset(0, -90).perform();
            builder.moveToElement(element).perform();
            builder.clickAndHold(element).perform();
            builder.moveByOffset(0, 75).perform();
            builder.moveToElement(element).perform();
            builder.clickAndHold(element).perform();
            builder.moveByOffset(150, 0).perform();
            builder.moveToElement(element).perform();
            builder.clickAndHold(element).perform();
            builder.moveByOffset(-150, 0).perform();
            builder.moveToElement(element).perform();

            builder.moveToElement(element).perform();
            builder.clickAndHold(element).perform();
            builder.moveByOffset(0, -90).perform();
            builder.moveToElement(element).perform();
            builder.clickAndHold(element).perform();
            builder.moveByOffset(0, 75).perform();
            builder.moveToElement(element).perform();
            builder.clickAndHold(element).perform();
            builder.moveByOffset(150, 0).perform();
            builder.moveToElement(element).perform();
            builder.clickAndHold(element).perform();
            builder.moveByOffset(-150, 0).perform();
            builder.moveToElement(element).perform();
      } catch (Exception e) {
            Log.error("Adding Digital Signature Failed", e);
            throw new FLException("Adding Digital Signature Failed " + e.getMessage());
        }
    }

    /**
     * This method will read the PDF file(passed as a parameter) and return its contents in String format.
     *
     * @param pdfFileName The PDF file to be read
     * @return The complete PDF text in the String format
     */
    protected  String getPDFText(String pdfFileName) {

        String pdfText;

        try {
            File pdfFile = new File (EnumsCommon.RELATIVE_DOWNLOADFILES_PATH.getText() + pdfFileName);
            PDDocument pdfDocument = PDDocument.load(new FileInputStream(pdfFile));
            pdfText = new PDFTextStripper().getText(pdfDocument);
            pdfDocument.close();
        } catch (FileNotFoundException e) {
            Log.error("PDF File Could Not Find ", e);
            throw new FLException("PDF File Could Not Find" + e.getMessage());
        } catch (IOException e) {
            Log.error("IO Exception ", e);
            throw new FLException("IO Exception " + e.getMessage());
        } catch (Exception e) {
            Log.error("Exception ", e);
            throw new FLException("Exception " + e.getMessage());
        }

        return pdfText;
    }

    /**
     * This method is used to rename file name where old file name(passed as parameter) will be replaced with new
     * one(passed as a parameter).
     *
     * @param oldFileName The file name to be replaced with new name
     * @param newFileName New file name to be added
     * @throws IOException
     */
    protected void renameFile(String oldFileName, String newFileName) throws IOException {
        Path source = Paths.get(EnumsCommon.ABSOLUTE_DOWNLOADFILES_PATH.getText()+ oldFileName +".pdf");
        Files.move(source, source.resolveSibling(newFileName));
    }

    /**
     *
     * This method clicks the WebElement and to form the WebElement xpath (passed as a parameter)is used. The method first
     * calls the syncElement method and make sure WebElement is in clickable state on the page, if failed to sync/click
     * then will throw an Exception.
     *
     * @param driver The WebDriver instance
     * @param stringXpath Xpath to be used to form WebElement
     */
    protected void clickElement(WebDriver driver, String stringXpath)
    {
        WebElement element= driver.findElement(By.xpath(stringXpath));
        syncElement(driver, element, EnumsCommon.TOCLICKABLE.getText());

        try{
            if(!element.isDisplayed()){
                scrollToWebElement(driver, element);
                element.click();
            }else{
                element.click();
            }
        }catch (Exception e){
            Log.error("Could Not Click WebElement ", e);
            throw new FLException("Could Not Click WebElement " + e.getMessage());
        }
    }

    /**
     * This method will form the WebElement using the xpath passed as a parameter.
     *
     * @param driver The WebDriver instance
     * @param stringXpath XPATH to be used to form WebElement
     * @return The WebElement formed using given xpath
     */
    public WebElement findElement(WebDriver driver,String stringXpath)
    {
        WebElement element= driver.findElement(By.xpath(stringXpath));
        syncElement(driver, element, EnumsCommon.TOVISIBLE.getText());
        return element;
    }

    /**
     * This method will form the List of WebElements using the xpath passed as a parameter.
     *
     * @param driver The WebDriver instance
     * @param stringXpath XPATH to be used to form the List of WebElements
     * @return The List of WebElements formed using given xpath
     */
    public List<WebElement> findElements(WebDriver driver,String stringXpath)
    {
        List<WebElement> element= driver.findElements(By.xpath(stringXpath));
        return element;
    }

    /**
     * This method will load/read PDF file(passed as parameter) and extract all images from PDF file and save inside
     * 'imagesFolder'. It will traverse all the pages inside PDF file and extract and save all the images inside
     * 'imagesFolder'. If failed while reading the PDF file or any other reason Exception will be thrown.
     *
     * @param pdfLocation PDF file to be used to read and extract images from it
     * @param pdfFleName PDF file to be replaced during runtime
     * @param testContext The TestContext class reference
     */
    public void PDFBoxExtractImages(String pdfLocation, String pdfFleName, TestContext testContext) {
        PDDocument document = null;
        try {
            document = PDDocument.load(new File(pdfLocation));
            File imagesFolder = new File(configProperties.get("imagesFolder.path") + testContext.getTestCaseID() + "/" + pdfFleName.replace(".pdf","") + "/");
            if(!imagesFolder.exists())
                imagesFolder.mkdirs();
            PDPageTree pageList = document.getPages();
            for (PDPage page : pageList) {
                PDResources pdResources = page.getResources();
                for (COSName object : pdResources.getXObjectNames()) {
                    PDXObject pdxObject = null;
                    pdxObject = pdResources.getXObject(object);
                    if (pdxObject instanceof PDImageXObject) {
                        File file = new File(configProperties.get("imagesFolder.path") + testContext.getTestCaseID() + "/" + pdfFleName.replace(".pdf","") + "/" + System.nanoTime() + ".png");
                        ImageIO.write(((PDImageXObject) pdxObject).getImage(), "png", file);
                    }
                }
            }
        } catch (FileNotFoundException e)
        {
            Log.error("PDF File Could Not Be Loaded ", e);
            throw new FLException("PDF File Could Not Be Loaded " + e.getMessage());
        }
        catch (IOException e) {
            Log.error("Could Not Read PDF File ", e);
            throw new FLException("Could Not Read PDF File " + e.getMessage());
        } catch (Exception e) {
            Log.error("Could Not Read Image Content From PDF Document ", e);
            throw new FLException("Could Not Read Image Content From PDF Document " + e.getMessage());
        }
    }


    /**
     * This method will iterate over all the extracted images from PDF file and compare it with all master images.
     * It will return true if any extracted image matches master image else return false.
     *
     * @param path PDF file to be used to read and extract images from it
     * @param testContext The TestContext class reference
     * @return boolean
     */
    protected boolean verifySignatureMatchingInPDF(TestContext testContext, String path)  {
        String expectedImagePath = "";
        nu.pattern.OpenCV.loadLocally();
        String[] listImagePath = new String[]{"SignedMVC","SignedMVC1","SignedMVC2","SignedMVC3","SignedMVC4","SignedMVC5","SignedReact","SignedReact1","SignedReact2","SignedReact3"};

        PDFBoxExtractImages(EnumsCommon.RELATIVE_DOWNLOADFILES_PATH.getText() + path, path.replace(".pdf",""), testContext);

        // Source directory containing the images
        File sourceDir = new File(configProperties.get("imagesFolder.path") + testContext.getTestCaseID() +  "/" + path.replace(".pdf","") + "/");

        int counter = 0;

        for(String image : listImagePath) {
            // Iterate through the images in the source directory
            expectedImagePath = configProperties.get("signedImagesFolder.path") + "/" + image + ".png";
            Mat subImage = Imgcodecs.imread(expectedImagePath);
            for (File file : sourceDir.listFiles()) {
                if (file.isFile()) {
                    // Load the current image into memory
                    Mat mainImage = Imgcodecs.imread(file.getPath());
                    // Check if the sub-image is present in the current image
                    if (verifySubImagePresent(mainImage, subImage))
                        counter++;
                }
            }
        }

        if(counter > 0)
            return true;

        return false;
    }

    /**
     * This method will verify if extracted image matches master image.
     * It will return true if extracted image matches master image with a threshold limit of 70% else return false.
     *
     * @param mainImage master image
     * @param subImage extracted image
     * @return boolean
     */
    private boolean verifySubImagePresent(Mat mainImage, Mat subImage) {
        Mat result = new Mat();

        if (mainImage.height() < subImage.height() || mainImage.width() < subImage.width())
            return false;
        else{
            Imgproc.matchTemplate(mainImage, subImage, result, Imgproc.TM_CCOEFF_NORMED);
            Core.MinMaxLocResult mmr = Core.minMaxLoc(result);
            // Define a threshold for similarity
            double threshold = 0.7; // Adjust this as needed
            return mmr.maxVal > threshold;

        }
    }

    /**
     * This method wil return the List of WebElements based on the locators passed as a parameter. Before returning
     * the List of WebElements, syncElement() method will be called to make sure WebElements are in visible state on
     * the page.
     *
     * @param driver The WebDriver instance
     * @param locator locator to be used to form the List of WebElements
     * @return The List of WebElements
     */
    protected List<WebElement> getElements(WebDriver driver, By locator) {
        try
        {
            return driver.findElements(locator);
        }
        catch(Exception e)
        {
            Log.error("Could not find elements with locator " + locator, e);
            throw new FLException("Could not find elements with locator >>>> " + e.getMessage());
        }
    }

    /**
     * This method wil return the WebElement based on the locators passed as a parameter. Before returning the
     * WebElement, syncElement() method will be called to make sure WebElement is in visible state on the page.
     *
     * @param driver The WebDriver instance
     * @param locator locator to be used to form WebElement
     * @return The WebElement
     */
    protected WebElement getElement(WebDriver driver, By locator) {
        try
        {
            syncElement(driver, driver.findElement(locator),EnumsCommon.TOVISIBLE.getText());
            return driver.findElement(locator);
        }
        catch(Exception e)
        {
            Log.error("Could not find any element with locator " + locator, e);
            throw new FLException("Could not find any element with locator >>>> " + e.getMessage());
        }
    }

    /**
     * This method will return the locator which exists on a web page. 
     * This is used since few elements have different locators for various UIs i.e. MVC and React
     *
     * @param driver The WebDriver instance
     * @param locator locator to be used to form WebElement
     * @param locator1 locator to be used to form WebElement
     * @param locator2 locator to be used to form WebElement
     * @param locator3 locator to be used to form WebElement
     * @return locator
     */
    public By getExistingLocator(WebDriver driver, By locator, By locator1, By locator2, By locator3) {
        try {
            if (getElements(driver, locator).size() > 0)
                return locator;
            else if (getElements(driver, locator1).size() > 0)
                return locator1;
            else if (getElements(driver, locator2).size() > 0)
                return locator2;
            else if (getElements(driver, locator3).size() > 0)
                return locator3;
        } catch (StaleElementReferenceException e) { }
        catch (Exception e) {}
        return null;
    }

    /**
     * This method is used to select/check/deselect/uncheck checkbox on the page. Based on the parameter provided if
     * checkbox is already selected/checked and is not required to select/check again then checkbox will not be
     * selected/checked again and vice-versa.
     *
     * @param userAction User Action whether checkbox to be selected or not
     * @param element WebElement as a Checkbox
     */
    protected void checkBoxSelectYesNO(String userAction, WebElement element) {
        if (getCheckBoxAction(userAction)){
            if (!element.isSelected())
                element.click();
        }else {
            if (element.isSelected())
                element.click();
        }
    }

    /**
     * This method will return true if action is passed as "select" else return false.
     *
     * @param action Action whether checkbox to be selected/checked or not
     * @return boolean as True to select checkbox and false to not select
     */
    private boolean getCheckBoxAction(String action) {
        return action.equalsIgnoreCase("select");
    }

    /**
     * This method will scroll the web page till end using JavascriptExecutor Interface.
     *
     * @param driver The WebDriver instance
     */
    protected void scrollInBrowserTillEnd(WebDriver driver) {
        ((JavascriptExecutor) driver).executeScript("window.scrollTo(0, document.body.scrollHeight)");
    }

    /**
     * During execution of Admin Test Cases, this method will hold the scripts execution till the time Admin settings
     * are revert/reflected in the Firelight Application.
     *
     * @param testContext The TestContext class reference
     */
    protected void waitForAdminCacheTime(TestContext testContext) {
        sleepInMilliSeconds(Integer.parseInt(testContext.getAdminCacheTime()) * 60000);
    }

    /**
     * This method will switch the tab  according to input

     * @param isParentTab Whether new tab or parent tab
     * @param driver The WebDriver instance
     */
    public void switchToParentTab(WebDriver driver,Boolean isParentTab){
        ArrayList<String> tabs = new ArrayList<>(driver.getWindowHandles());
        if(isParentTab) {
            if(tabs.size() > 1){
                driver.switchTo().window(tabs.get(1));
                driver.close();
            }
            driver.switchTo().window(tabs.get(0));
        } else  {
            if(tabs.size() > 1){
                driver.switchTo().window(tabs.get(1));
            }
        }
    }

    /**
     * This method will change the PDF file name and extract string from Pdf
     *
     * @param driver      The WebDriver instance
     * @param testContext The TestContext class reference
     * @param fileName    The Pdf Name
     * @return pdfText_global The Text Present in Pdf
     */
    public String extractPdfContent (WebDriver driver, TestContext testContext, String fileName) {
        try {
            pdfFileName = testContext.getModuleName() + "-" + testContext.getTestCaseID() + "_" + getDate("pdfFileName") + ".pdf";
            Path downloadFilePath = Paths.get(EnumsCommon.ABSOLUTE_DOWNLOADFILES_PATH.getText() + fileName + ".pdf");

            new WebDriverWait(driver, 60).until(d -> downloadFilePath.toFile().exists());
            renameFile(fileName, pdfFileName);
            String pdfText = getPDFText(pdfFileName);
            pdfText_global = pdfText;
            Log.info(pdfFileName);
            testContext.setPdfFileName(pdfFileName);
            System.setProperty(testContext.getTestCaseID(), "PDF1");
        }
        catch (IOException e) {
            Log.error("PDF could not be found or read " + e.getMessage());
            throw new FLException("PDF file could not be found or read " + pdfFileName + ">>>> " + e.getMessage());
        }
        catch (Exception e) {
            Log.error("Error occured while reading pdffilename " + pdfFileName + " " + e.getMessage());
            throw new FLException("Error occured while reading pdffilename " + pdfFileName + ">>>> " + e.getMessage());
        }

        return pdfText_global;

    }

}
