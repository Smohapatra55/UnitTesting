Feature: FireLight_Admin_Tests

  This feature will verify FireLight Admin Test cases of High P1

  @RegressionAdmin   @RegAdminHP1
  Scenario: TC_008-Verify newly created product with CUSIPID showing on groups page and sales agreement
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_008"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User Clicks on Add New Product Link
    Then User Enters "FL024 Firm Manage Product" in Text Field "Product Name"
    Then User Selects "Annuity" option in "productType" Dropdown
    Then User Enters "FL024FMP01" in Text Field "CUSIP ID"
    Then User clicks "Save Product Config" button
    Then User Clicks on toolbar "Product Config"
    Then User Selects "Sales Agreements" in Product Config Tab
    Then User Selects "FL024 Firm Manage Product" in Sales Agreement Table
    Then User Selects "FL024_Auto Pkg_DO NOT ALTER" in Package
    Then User Clicks on "btnRight" in admin APP
    Then User "Select" "All" state
    Then User clicks "Save Sales Agreement" button
    Then User click on "Organization Config" and select "Groups" form menu list
    Then User clicks on "Product Access" tab
    Then User "select" checkbox "FL024 Firm Manage Product" in Product Access Tab
    Then User clicks "Save" button
    Then User Enters "FL024 Firm Manage Product" in Text Field "Search by Product Name or CUSIP"
    Then User Verifies checkbox "FL024 Firm Manage Product" is "selected" in Product Access Tab
    Then User Enters "FL024FMP01" in Text Field "Search by Product Name or CUSIP"
    Then User Verifies checkbox "FL024 Firm Manage Product" is "selected" in Product Access Tab
    Then User Enters "FL024FMP01" in Text Field "Search by Product Name or CUSIP"
    Then User Enters "FL024Error Message" in Text Field "Search by Product Name or CUSIP"
    Then User Verifies "No Products from Current Search Term" after search
    Then User Verifies checkbox "FL024 CommNet Forms Only (ITCommNet1)" is "selected" in Product Access Tab
    Then User Clicks on toolbar "Home"
    Then User clicks "Products" Tab
    Then User Clicks and Deletes product "FL024 Firm Manage Product"
    Then User verifies dialog window "Delete Confirmation"
    Then User Clicks on Button "No"
    Then User Clicks and Deletes product "FL024 Firm Manage Product"
    Then User Clicks on Button "Yes"
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_008"
    Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User clicks on "Product Access" tab
    Then User Enters "FL024 InsTech Managed Product Auto Env" in Text Field "Search by Product Name or CUSIP"
    Then User Verifies checkbox "FL024 InsTech Managed Product Auto Env" is "selected" in Product Access Tab
    Then User Enters "FL024IMP01AE" in Text Field "Search by Product Name or CUSIP"
    Then User Verifies "No Products from Current Search Term" after search
    Then User Enters "" in Text Field "Search by Product Name or CUSIP"
    Then User Verifies checkbox "FL024 ENR Child App 01-1 Signer (ENRCA01)" is "selected" in Product Access Tab
    Then User Enters "FL024 ENR Child App-ErrorCounts" in Text Field "Search by Product Name or CUSIP"
    Then User Verifies checkbox "FL024 ENR Child App-ErrorCounts" is "selected" in Product Access Tab
    Then User Verifies "No Products from Current Search Term" after search
    Then User Enters "ENRCA03E in" in Text Field "Search by Product Name or CUSIP"
    Then User Verifies checkbox "FL024 ENR Child App-ErrorCounts" is "selected" in Product Access Tab
    Then User Verifies "No Products from Current Search Term" after search

  @RegressionAdmin   @RegAdminHP1
  Scenario: TC_009-An alert is prompted at the time user attempts to delete a page informing them of possibility that section break may also get deleted with the page deletion
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Wizard Library" Tab
    Then User Enters "Section Break OP" in Text Field "Section Search"
    Then User Clicks on Search icon
    Then User Verifies Wizard Number "Section Break OP"
    Then User Clicks on Wizard Designer Link
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Verifies Section Break "Client Data"
    Then User Verifies Section Break "SB Client Data"
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on Page Option "Delete Page"
    Then User Verifies Alert Message "Check Page Workflow after deletion to review potential removal of a Section Break."
    Then User Clicks on "Close" Button in Admin Page
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Verifies Section Break "Client Data" Should not Display
    Then User Verifies Section Break "SB Client Data" Should not Display
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on Page Option "View in Library"
    Then User Clicks on Wizard Designer Link
    Then User Selects "Payment Details" in Page
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Notes All Section Break
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on Page Option "Delete Page"
    Then User Clicks on "Close" Button in Admin Page
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Verifies All Section Breakpoints Present
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Verifies Option "Payment Details" not in Page

  @RegressionAdmin @RegAdminHP1
  Scenario: TC_011-Error message is presented if a section break is attempted to be ADDED next to an existing section break.
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_011"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Wizard Library" Tab
    Then User Enters "Section Break Wiz" in Text Field "Section Search"
    Then User Clicks on Search icon
    Then User Verifies Wizard Number "Section Break Wiz"
    Then User Clicks on Wizard Designer Link
    Then User Verifies Default option is "Section Break Wiz" for Wizard Dropdown
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Verifies "Add Section Break" Button in Admin Page
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Verifies Section Break "Section Break 1255"
    Then User Verifies Section Break "Section Break 1256"
    Then User Clicks on "OK" Button in Admin Page
    Then User Verifies Error Message "Section breaks cannot be next to each other"
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Drags "Section Break 1257" to "Ancillary Form"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Drags "Section Break 1258" to "Ancillary Form"
    Then User Clicks on "OK" Button in Admin Page
    Then User Verifies Error Message "Section breaks cannot be next to each other"
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Drags "Section Break 1259" to "Client Data"
    Then User Clicks on "OK" Button in Admin Page
    Then User Verifies Error Message "Section break cannot be the first item"
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on toolbar "Home"

  @RegressionAdmin   @RegAdminHP1
  Scenario: TC_012-An alert is prompted at the time user attempts to delete a page informing them of possibility that section break may also get deleted with the page deletion
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_012"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Wizard Library" Tab
    Then User Enters "Section Break Wiz" in Text Field "Section Search"
    Then User Clicks on Search icon
    Then User Verifies Wizard Number "Section Break Wiz"
    Then User Clicks on Wizard Designer Link
    Then User Clicks on Page Option "Set Page Workflow"
    Then User MouseHover to Info Icon
    Then User Verifies Icon Heading "Section Breaks"
    Then User Verifies Following Elements
      | Section Break can be placed between two pages or last in the order.      |
      | Double click on Section Break icon to edit the Text and Name values.     |
      | Double click on Section Break to remove it from page workflow.           |
      | Maximum limit is 75 characters for Section Break Text and Name fields.   |
      | Duplicate Section Break Text and Name within the wizard are not allowed. |

  @RegressionAdmin   @RegAdminHP1
  Scenario: TC_013-Double clicking on section break icon opens its properties window
    Given User is on FireLight Admin login page for TestCase "RegAdminHP1_TC_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Wizard Library" Tab
    Then User Enters "Section Break Wiz" in Text Field "Section Search"
    Then User Clicks on Search icon
    Then User Verifies Wizard Number "Section Break Wiz"
    Then User Clicks on Wizard Designer Link
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Double Clicks on "Section Break 1255"
    Then User Verifies PopHeading "Section Break Properties" for section Break
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Verifies PopHeading "Page Workflow" for section Break
    Then User Double Clicks on "Ancillary Form"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Double Clicks on "Section Break 1256"
    Then User Verifies PopHeading "Section Break Properties" for section Break
    Then User Clicks on "Remove Section Break" Button in Admin Page
    Then User Verifies Section Break "Section Break 1256" Does not Exist
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Double Clicks on "Section Break 1257"
    Then User Verifies PopHeading "Section Break Properties" for section Break
    Then User Clicks on "Remove Section Break" Button in Admin Page
    Then User Verifies Section Break "Section Break 1257" Does not Exist
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Double Clicks on "Section Break 1258"
    Then User Verifies PopHeading "Section Break Properties" for section Break
    Then User Enters "Text Box" in TextBox "titletextbox"
    Then User Clicks on "OK" Button in Admin Page
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Verifies Section Break "Text Box" Does not Exist
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Double Clicks on "Section Break 1259"
    Then User Verifies PopHeading "Section Break Properties" for section Break
    Then User Enters "" in TextBox "nametextbox"
    Then User Clicks on "OK" Button in Admin Page
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on Page Option "Set Page Workflow"
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Double Clicks on "Section Break 1260"
    Then User Verifies PopHeading "Section Break Properties" for section Break
    Then User Enters "More Than 75 Chareacters" in TextBox "titletextbox"
    Then User Verifies Length of the value present in "titletextbox" TextField is less than "76"
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Double Clicks on "Section Break 1261"
    Then User Verifies PopHeading "Section Break Properties" for section Break
    Then User Enters "More Than 75 Chareacters" in TextBox "nametextbox"
    Then User Verifies Length of the value present in "nametextbox" TextField is less than "76"
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Double Clicks on "Section Break 1261"
    Then User Enters "Test Section break" in TextBox "nametextbox"
    Then User Clicks on "OK" Button in Admin Page
    Then User Clicks on "Add Section Break" Button in Admin Page
    Then User Double Clicks on "Section Break 1262"
    Then User Enters "Test Section break" in TextBox "nametextbox"
    Then User Clicks on "OK" Button in Admin Page
    Then User Verifies Error Message "Cannot have duplicate Name"
    Then User Clicks on "Cancel" Button in Admin Page
    Then User Double Clicks on "Section Break 1261"
    Then User Enters "QA Text" in TextBox "titletextbox"
    Then User Clicks on "OK" Button in Admin Page
    Then User Double Clicks on "Section Break 1262"
    Then User Enters "QA Text" in TextBox "titletextbox"
    Then User Clicks on "OK" Button in Admin Page
    Then User Verifies Error Message "Cannot have duplicate Text." for Text
