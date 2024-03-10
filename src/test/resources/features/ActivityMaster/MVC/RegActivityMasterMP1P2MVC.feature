Feature: FireLight_Regression_ActivityMasterMP1P2_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: AT_001_Other Actions_Disable View Documents_History_Activity Summary_Request
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_AT_001"
    Then User on Login Page enters valid username as "Autouser2_Flademo2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Address Auto Complete Product Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User clicks "Other Actions" button
    Then User verify option "Rename/Summary" is "Not Shown" in other actions menu
    Then User verify option "History" is "Not shown" in other actions menu
    Then User verify option "Documents" is "Not shown" in other actions menu
    Then User verify option "Requests" is "Not shown" in other actions menu
    Then User clicks "Other Actions" button
    Then User Verifies Continue button Enabled
    Then User Clicks on Continue button
    Then User Clicks on Decline E-Review
    Then User Clicks OK
    Then User clicks "Other Actions" button
    Then User verify option "Rename/Summary" is "Not Shown" in other actions menu
    Then User verify option "History" is "Not shown" in other actions menu
    Then User verify option "Documents" is "Not shown" in other actions menu
    Then User verify option "Requests" is "Not shown" in other actions menu

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_001_Verify forms only package for Optional forms message
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "FormsOnly" for application
    Then User clicks "Create" button
    Then User verifies the note on Activity Application Form
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Now Clicks on Other Action tab and  Clicks on "Rename/Summary"
    Then User enters new Activity name as "Lifetime Income AT_01"
    Then User clicks on "Rename" link
    Then User clicks "CLOSE" button
    Then User navigates to Home page
    Then User verifies New Activity Name is visible on Activities list
    Then User Now Navigate to All Activities page
    Then User verifies New Application Added on All Activities Page

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: AT_005_Other Actions_Disable View Documents_History_Activity Summary_Request
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_AT_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Download Complete product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User clicks "Owner" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User navigates to "Owner - Client Identification Verification" page
    Then User Enters "1000" in TextBox "ID"
    Then User Enters "AP" in TextBox "ToName"
    Then User Enters "1234" in TextBox "SSN"
    Then User Enters "01011960" in TextBox "BirthDate"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent : AUTOUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AUTOUser1"
    Then User selects "Sign Now" button on Signature Tab
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks "Continue" button
    Then User clicks "ok" on Confirmation Dialog
    Then User select "signer download application" email with subject "Print or download your signed Application AppName." on gmail page and save "email link"
    Then User verify expected mailbody is "printMailContent"
    Then User Loads the URL generated previously for "URL"
    Then User Log in with SSN and DOB
    And User verify there are "3" documents available on SSN home page
    And User verify "View All" button exists
    And User verify "Download All" button exists
    And User verify document "Auto Form" exists with view and download buttons on SSN home page
    And User verify document "Acceleration of Income Pymts for MEMBERS FIA" exists with view and download buttons on SSN home page
    And User verify document "Disclosure for Future Income Annuity" exists with view and download buttons on SSN home page
    And User clicks "View All" button on page
    Then User verify all documents are downloaded to system with name "DisplayAllDocuments.pdf"
    And User clicks "Download All" button on page
    Then User verify all documents are downloaded to system with name "App.pdf"

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_006_Confirm Shared Activity is displayed
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks on "close" link
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User clicks on "Share Full Control" to "Sonu_ Flademo_Auto Sonu Singh" on share activity page
    Then User stores the shared link
    Then User close the Share Activity Dialog box
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_006"
    Then User on Login Page enters valid username as "Sonu_Flademo" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies "newProductName" is visible on Activities list
    Then User Logs Off from current Application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User clicks on "Share Full Control" to "Sonu_ Flademo_Auto Sonu Singh" on share activity page
    Then User clicks on Remove Share
    Then User verifies remove user share Dialog box appear
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User close the Share Activity Dialog box
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks Link "[Close]"
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_006"
    Then User on Login Page enters valid username as "Sonu_Flademo" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies "newProductName" is not showing in Activity list


  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_008_When Disable View Activities group option is selected a read only view is provided of the shared activity with the status and date
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_008"
    Then User on Login Page enters valid username as "Dist09_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Share"
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User clicks on "Share Full Control" to "OMDist_FLADIST3_AUTO" on share activity page
    Then User stores the shared link
    Then User close the Share Activity Dialog box
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_008"
    Then User on Login Page enters valid username as "OMDist_FLADIST3" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies "newProductName" is not showing in Activity list

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_012_Verify Transfer functionality for Forms Only application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_012"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Activity name as "ATY Easy Signing"
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100 %"
    Then User clicks Link "[Close]"
    Then User opens Menu "Other Actions  ->Transfer"
    Then User search "Deep" in search field and click on search icon
    Then User verifies result is displayed or not
    Then User clicks on "Select New Owner" to "Deependra_ FLADEMO_Auto Deependra Singh" on transfer activity page
    Then User verifies the Transfer complete message is displayed
    Then User close the Transfer Dialog box
    Then User verifies popup "Application has a pending transfer of ownership"
    Then User clicks on Close icon on Toast Popup
    Then User navigate to home page
    Then User verifies "newActivityName" is visible on Activities list
    Then User Log Off from current Application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_012"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User verifies "newActivityName" is visible on Activities list
    Then User Log Off from current Application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_012"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies "newActivityName" is not showing in Activity list

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_003_Verify activities will be displayed in the Recent Activity or All Activities list with manual approval
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Income Choice" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks Expand form menu
    Then User clicks on page1 form of application222
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User Navigates to Home Page
    Then User verifies New Activity Name is visible on Activities list
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Clicks on View Button on All Activity
    Then User verifies prefilled data form input text fields of Application222
      | data-dataitemid                  | Locator Type |
      | Owner_FirstName                  | Input        |
      | Owner_LastName                   | Input        |
      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner_DOB                        | Textarea     |

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_007_Filtering Shared Activities
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks on "close" link
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName" on share activity page
    Then User clicks "Search" button on share activity page
    Then User verifies result is displayed or not
    Then User clicks on "Share Full Control" to "Sonu_ Flademo_Auto Sonu Singh" on share activity page
    Then User stores the shared link
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName1" on share activity page
    Then User clicks "Search" button on share activity page
    Then User verifies result is displayed or not
    Then User clicks on "Share Full Control" to "Deependra_ FLADEMO_Auto Deependra Singh " on share activity page
    Then User store the second shared Url
    Then User close the Share Activity Dialog box
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_007"
    Then User on Login Page enters valid username as "Sonu_Flademo" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies "AUTOUser1_FLADEMO_AUTO" value is present in view list
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "95%"
    Then User clicks "Other Actions" button
    Then User Verifies "Share" is enabled in Other Action
    Then User clicks on "Share" in other actions tab
    Then User verifies Share My Activities Dialog box is showing
    Then User verifies "Search My Contacts:" in Dialog box and Search Icon is displaying
    Then User enters "newOwnerName1" on share activity page
    Then User clicks "Search" button on share activity page
    Then User verifies result is displayed or not
    Then User clicks on "Share Full Control" to "Deependra_ FLADEMO_Auto Deependra Singh " on share activity page
    Then User stores the shared link
    Then User clicks Close button for popup
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User verify Thank you for using activity share should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify Thank you for using activity share should display
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_007"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks on Shared Activity
    Then User verifies "AUTOUser1_FLADEMO_AUTO" is displayed in form view list
    Then User verifies "Sonu_ Flademo_Auto" is displayed in form view list
    Then User selects "Sonu_ Flademo_Auto" from view list
    Then User verifies "newProductName" is visible on Activities list
    Then User selects "All" from view list
    Then User selects "Sonu_ Flademo_Auto" from view list
    Then User verifies "newProductName" is visible on Activities list
    Then User open application from shared activity
    Then User sets values for prefilled form
      | Field                 | Value | data-dataitemid       | Locator Type |
      | Non-Qualified Account |       | Non-Qualified Account | Check Box    |
      | Individual            |       | Individual            | Check Box    |
    Then User clicks on NO checkbox on both replacement question
    Then User Log Off from current Application
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_007"
    Then User on Login Page enters valid username as "Sonu_Flademo" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies check box are selected
      | Individual            |
      | Non-Qualified Account |
    Then User verifies NO checkbox is selected

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_004_Auto Save Immediately Save Unsaved Data related to Current Hard Save
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Income Choice" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User stores Data Entry percentage
    Then User Clicks Expand form menu
    Then User clicks on page1 form of application222
    Then User sets values for prefilled form
      | Field               | Value      | data-dataitemid                  | Locator Type |
      | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
      | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
      | Zip                 | 34545      | Owner_ResidentialAddress_Zipcode | Input        |
      | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value | data-dataitemid               | Locator Type |
      | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field                  | Value      | data-dataitemid       | Locator Type |
      | Non Qualified Checkbox |            | PlanType_NonQualified | Check Box    |
      | Contact number         | 1234567890 | Contract_Number       | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 11/12/1999 | Client_DOB      | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks Link "[Close]"
    Then User Verifies data entry percentage is "100 %"
    Then User Clicks Expand form menu
    Then User clicks on page1 form of Fees and Expense Disclosure Sample
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 12/15/1996 | Client_DOB      | Input        |
    Then User navigate to home page
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User open application from recent activity
    Then User clicks Link "[Close]"
    Then User Clicks Expand form menu
    Then User clicks on page1 form of Fees and Expense Disclosure Sample
    Then User Verifies Data entered at External page is displaying at main application
      | Field              | Value      | data-dataitemid | Locator Type |
      | Client Information | 12/15/1996 | Client_DOB      | Input        |

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_005_Auto Save Immediately Save Unsaved Data related to Current Hard Save
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User stores Data Entry percentage
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User clicks Link "[Close]"
    Then User enters or verifies all values in the fields on investment profile page
      | data-dataitemid                   | Field                       | action |
      | FinInfo_Client_Income             | ApplicantIncome             | enters |
      | FinInfo_JointClient_Income        | JointApplicantIncome        | enters |
      | FinInfo_Combined_Income           | CombinedIncome              | enters |
      | FinInfo_ClientNetWorth_Value      | ApplicantNetWorthValue      | enters |
      | FinInfo_JointClientNetWorth_Value | JointApplicantNetWorthValue | enters |
      | FinInfo_CombinedNetWorth_Value    | CombinedNetWorthValue       | enters |
      | FinInfo_Client_LiqAsset           | ApplicantLiqAsset           | enters |
      | FinInfo_JointClient_LiqAsset      | JointApplicantLiqAsset      | enters |
      | FinInfo_Combined_LiqAsset         | CombinedApplicantLiqAsset   | enters |
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 3 MB. Cumulative file size to be maximum of 5 MB."
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample1.5MB"
    Then User clicks "Upload" button
    Then User Closes documents Dialog page
    Then User enters or verifies all values in the fields on investment profile page
      | data-dataitemid                   | Field                       | action   |
      | FinInfo_Client_Income             | ApplicantIncome             | verifies |
      | FinInfo_JointClient_Income        | JointApplicantIncome        | verifies |
      | FinInfo_Combined_Income           | CombinedIncome              | verifies |
      | FinInfo_ClientNetWorth_Value      | ApplicantNetWorthValue      | verifies |
      | FinInfo_JointClientNetWorth_Value | JointApplicantNetWorthValue | verifies |
      | FinInfo_CombinedNetWorth_Value    | CombinedNetWorthValue       | verifies |
      | FinInfo_Client_LiqAsset           | ApplicantLiqAsset           | verifies |
      | FinInfo_JointClient_LiqAsset      | JointApplicantLiqAsset      | verifies |
      | FinInfo_Combined_LiqAsset         | CombinedApplicantLiqAsset   | verifies |
    Then User clicks "Next Page" button 1 times till last page
    Then User enters or verifies all values in the fields on investment profile page
      | data-dataitemid             | Field              | action |
      | FinInfo_Annual_Expenses     | AnnualExpenses     | enters |
      | FinInfo_Annual_Expenses50   | AnnualExpenses50   | enters |
      | FinInfo_Annual_Expenses100  | AnnualExpenses100  | enters |
      | FinInfo_Annual_Expenses250  | AnnualExpenses250  | enters |
      | FinInfo_Special_Expenses    | SpecialExpenses    | enters |
      | FinInfo_Special_Expenses50  | SpecialExpenses50  | enters |
      | FinInfo_Special_Expenses100 | SpecialExpenses100 | enters |
      | FinInfo_Special_Expenses250 | SpecialExpenses250 | enters |
      | FinInfo_SpecialExpenses_TimeFrame2 | WithIn2Years | enters |
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User check document "Compliant Illustration"
    Then User clicks "Print Selected Documents" button
    Then User verifies PDF "PrintPdf" is generated
    Then User clicks "Back to Application" button on select documents to print page
    Then User verifies toast message "Data Entry has met the requirements."
    Then User enters or verifies all values in the fields on investment profile page
      | data-dataitemid                    | Field              | action   |
      | FinInfo_Annual_Expenses            | AnnualExpenses     | verifies |
      | FinInfo_Annual_Expenses50          | AnnualExpenses50   | verifies |
      | FinInfo_Annual_Expenses100         | AnnualExpenses100  | verifies |
      | FinInfo_Annual_Expenses250         | AnnualExpenses250  | verifies |
      | FinInfo_Special_Expenses           | SpecialExpenses    | verifies |
      | FinInfo_Special_Expenses50         | SpecialExpenses50  | verifies |
      | FinInfo_Special_Expenses100        | SpecialExpenses100 | verifies |
      | FinInfo_Special_Expenses250        | SpecialExpenses250 | verifies |
      | FinInfo_SpecialExpenses_TimeFrame2 | WithIn2Years       | verifies |
    Then User clicks "Previous Page" button 1 times till last page
    Then User enters or verifies all values in the fields on investment profile page
      | data-dataitemid                   | Field                       | action   |
      | FinInfo_Client_Income             | ApplicantIncome             | verifies |
      | FinInfo_JointClient_Income        | JointApplicantIncome        | verifies |
      | FinInfo_Combined_Income           | CombinedIncome              | verifies |
      | FinInfo_ClientNetWorth_Value      | ApplicantNetWorthValue      | verifies |
      | FinInfo_JointClientNetWorth_Value | JointApplicantNetWorthValue | verifies |
      | FinInfo_CombinedNetWorth_Value    | CombinedNetWorthValue       | verifies |
      | FinInfo_Client_LiqAsset           | ApplicantLiqAsset           | verifies |
      | FinInfo_JointClient_LiqAsset      | JointApplicantLiqAsset      | verifies |
      | FinInfo_Combined_LiqAsset         | CombinedApplicantLiqAsset   | verifies |
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Back To Application" button
    Then User opens Menu "Other Actions  ->Unlock Application"
    Then User Clicks on Unlock Application
    Then User verifies toast message "Data Entry has met the requirements."
    Then User navigate to home page
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Then User open application from recent activity
    Then User verifies toast message "Data Entry has met the requirements."
    Then User opens Menu "Other Actions  ->Transfer"
    Then User enters "Deep" in Search Field on transfer activity page
    Then User clicks "Search" button on transfer activity page
    Then User clicks on "Select New Owner" to "Deep05_FLADEMO_Auto Deep05 " on transfer activity page
    Then User clicks "X" button on transfer activity page
    Then User verifies "Application has a pending transfer of ownership." dialog message
    Then User clicks on Close icon on Toast Popup
    Then User enters or verifies all values in the fields on investment profile page
      | data-dataitemid                   | Field                       | action   |
      | FinInfo_Client_Income             | ApplicantIncome             | verifies |
      | FinInfo_JointClient_Income        | JointApplicantIncome        | verifies |
      | FinInfo_Combined_Income           | CombinedIncome              | verifies |
      | FinInfo_ClientNetWorth_Value      | ApplicantNetWorthValue      | verifies |
      | FinInfo_JointClientNetWorth_Value | JointApplicantNetWorthValue | verifies |
      | FinInfo_CombinedNetWorth_Value    | CombinedNetWorthValue       | verifies |
      | FinInfo_Client_LiqAsset           | ApplicantLiqAsset           | verifies |
      | FinInfo_JointClient_LiqAsset      | JointApplicantLiqAsset      | verifies |
      | FinInfo_Combined_LiqAsset         | CombinedApplicantLiqAsset   | verifies |
    Then User clicks "Next Page" button 1 times till last page
    Then User enters or verifies all values in the fields on investment profile page
      | data-dataitemid                    | Field              | action   |
      | FinInfo_Annual_Expenses            | AnnualExpenses     | verifies |
      | FinInfo_Annual_Expenses50          | AnnualExpenses50   | verifies |
      | FinInfo_Annual_Expenses100         | AnnualExpenses100  | verifies |
      | FinInfo_Annual_Expenses250         | AnnualExpenses250  | verifies |
      | FinInfo_Special_Expenses           | SpecialExpenses    | verifies |
      | FinInfo_Special_Expenses50         | SpecialExpenses50  | verifies |
      | FinInfo_Special_Expenses100        | SpecialExpenses100 | verifies |
      | FinInfo_Special_Expenses250        | SpecialExpenses250 | verifies |
      | FinInfo_SpecialExpenses_TimeFrame2 | WithIn2Years       | verifies |

  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_020_Notify reviewer when attachment added to activity
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Continue" button
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "GS"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                             | Passcode message                              |
      | Email Requests Sent | An email was sent to GS at testhexure@gmail.com           | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User Gets the URL by Clicking Send Reminder link
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User clicks "Logoff" button on page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Clicks Application from Recent Activity
    Then User Clicks "Close pending review request" Button
    Then User Verifies text Message in Popup "Application is locked for review."
    Then User opens Menu "Other Actions  ->Documents"
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User Closes Documents window
    Then User clicks "Logoff" button on page
    Then User select "email body" email with subject "Reviewer Attachment Updated AppName" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent4"
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Clicks on Resend Passcode
    Then User Verifies the message of "Passcode sent successfully!" in external Login Page
    Then User select "passcode application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User store "passCode" for "Reviewer" from email
    Then User Logs in with "reviewerPasscode"
    Then User clicks Application History
    Then User verifies Application Audit History statuses
      | Status                                    | Status Description          |
      | Document Uploaded                         | A `Illustration` document was uploaded by user `AUTOUser1_FLADEMO2_AUTO`. |
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User clicks "Logoff" button on page
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User Now Clicks on Other Action tab and Clicks on History button
    Then User verifies Audit History statuses
      | Status                            | Status Description                             |
      | Document Update Email Sent        | Document update email sent to the reviewer GS. |
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User selects "Agent : AutoUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AutoUser1"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User clicks "Logoff" button on page


  @RegressionTest @RegActivityMasterMP1P2MVC @RegressionTestMP1P2
  Scenario: TC_021_Notify reviewer when attachment removed to activity
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "Remove" button "exists" for uploaded document
    Then User Closes Documents window
    Then User clicks "Continue" button
    Then User clicks "Send request to reviewer" E-Review
    Then User Verifies Heading "Send Email To Reviewer(s)"
    Then User clicks Link "Add Reviewer"
    Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
    Then User sets value "GS"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name           | Email Send To                                             | Passcode message                              |
      | Email Requests Sent | An email was sent to GS at testhexure@gmail.com           | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User Notes the Passcode from Pending Request dialog
    Then User Gets the URL by Clicking Send Reminder link
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "recipientPasscode"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User clicks on more info button
    Then User enters own comment and clicks on send
    Then User Verifies link "Request Sent. Pending Reply." and info icon
    Then User clicks "Logoff" button on page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User Clicks Application from Recent Activity
    Then User Reload the page
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User Verifies More Info Displayed
    Then User Clicks on Reply link
    Then User Enters Text Into Reply Text box
    Then User Clicks on Send Button
    Then User Clicks on Close link at bottom of the popup
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User clicks "Remove" button for application "E2E-TC02-pdfFile" on select documents to print page
    Then User verifies confirmation popup is appear
    Then User Closes Documents window
    Then User clicks "Logoff" button on page
    Then User select "email body" email with subject "Reviewer Attachment Updated AppName" on gmail page and save "body"
    Then User verify expected mailbody is "mailContent5"
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Clicks on Resend Passcode
    Then User Verifies the message of "Passcode sent successfully!" in external Login Page
    Then User select "passcode application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User store "passCode" for "Reviewer" from email
    Then User Logs in with "reviewerPasscode"
    Then User clicks Application History
    Then User verifies Application Audit History statuses
      | Status                                    | Status Description          |
      | Document Deleted                          | Document `Compliant Illustration` was deleted by user `AUTOUser1_FLADEMO2_AUTO`. |
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User clicks "Logoff" button on page
    Given User is on FireLight login page for TestCase "RegActivityMasterMP1P2MVC_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User Now Clicks on Other Action tab and Clicks on History button
    Then User verifies Audit History statuses
      | Status                            | Status Description                             |
      | Document Update Email Sent        | Document update email sent to the reviewer GS. |
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "Ok" button
    Then User clicks "Continue" button
    Then User clicks "ok" on Confirmation Dialog
    Then User clicks "Logoff" button on page


