  Feature: FireLight_Regression_ActivityMasterCP1_MVC_TestCases

    This feature will verify FireLight Complete Application Regression Tests.

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: AT_019_verify Request Client to fill app feature with external link Send Email Request
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_019"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Product Type Dropdown "All"
      Then User selects Given Product "Income Choice" for application
      Then User selects Optional Forms "One Time Automatic Payment Authorization"
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User stores Data Entry percentage
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
      Then User keeps all fields blank
      Then User Clicks "Send Email request" Button
      Then User verifies validation message displayed to respective fields
      Then User Selects the Signer Type as "Owner"
      Then User enter "Recipient Name" on ReactApp page
      Then User enter "Your Name" on ReactApp page
      Then User enter "your Email" on ReactApp page
      Then User enter "Client BirthDate" on ReactApp page
      Then User Clicks "Send Email request" Button
      Then User verifies validation message displayed to "Recipient Email" field
      Then User enter "recipient email" on ReactApp page
      Then User Clicks "Send Email request" Button
      Then User verifies validation message displayed to "SSN/government Id" field
      Then User enter "ReceipantSSN" on ReactApp page
      Then User Clicks "Send Email request" Button
      Then User Clicks "Back to App" Button
      Then User verifies three Pending Request dialog links
        | Send Reminder to Deepak         |
        | Send Passcode to Deepak's email |
        | Cancel this request             |
      Then User verify the functionality of all links available on Pending Requests box
      Then User Reload the page
      Then User Now Cancel the Request Clicks OK at Confirmation dialog
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
      Then User keeps all fields blank
      Then User Selects the Signer Type as "Owner"
      Then User enter "Recipient Name" on ReactApp page
      Then User enter "Your Name" on ReactApp page
      Then User enter "your Email" on ReactApp page
      Then User enter "Client BirthDate" on ReactApp page
      Then User enter "recipient email" on ReactApp page
      Then User enter "ReceipantSSN" on ReactApp page
      Then User Clicks "Send Email request" Button
      Then User Notes the URL generated and clicks Back to App
      Then Pending Request popup should appear
      Then User Notes the Passcode from Pending Request dialog
      Then User clicks Close button on pending request page
      Then User Now Clicks on Other Action tab and Clicks on History button
      Then User verifies Audit History
        | Status         | Status Description                           |
        | E-Request Sent | The email was sent to 'testhexure@gmail.com' |
      Then User Verifies pending request link displayed underneath DATA ENTRY label
      Then User Clicks "Pending request" Button
      Then Pending Request popup should appear
      Then User Clicks "Close_PendingRequest" Button
      Then User Loads the URL generated previously for "recipientUrl"
      Then User Login to External Link using Client Last 4 Digits of SSN Govt ID
      Then User sets values for prefilled form
        | Field               | Value      | data-dataitemid                  | Locator Type |
        | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
        | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
        | Zip                 | 34554     | Owner_ResidentialAddress_Zipcode | Input        |
        | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field                           | Value      | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
        | How many transfers do you have? | 3          | Transfers             | Select       |
        | Contact number                  | 1234567890 | Contract_Number       | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value      | data-dataitemid | Locator Type |
        | Client Information | 11/12/1999 | Client_DOB      | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User clicks on Contact Agent Button It should display Message popup
      Then User Verifies all fields and their values displayed to the Message popup
      Then User Add some text to the Message body "Automation" and Click on Send button
      Then User verifies toast message Alert "Message sent."
      Then User Now Click on Complete Log Off button
      Then User Complete Activity popup should appear
      Then User verifies all content available at the popup
      Then User Clicks on Cancel button Complete Activity popup should disappear
      Then User Now Click on Complete Log Off button
      Then User Complete Activity popup should appear
      Then User Clicks on Submit and logoff button
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_019"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
      Then User verifies Application status as "Data Entry"
      Then User open application from recent activity
      Then User Verifies the DATA ENTRY % is increased than before
      Then User Verifies Data entered at External page is displaying at main application
        | Field               | Value      | data-dataitemid                  | Locator Type |
        | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
        | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
        | Zip                 | 34554     | Owner_ResidentialAddress_Zipcode | Input        |
        | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User Verifies Data entered at External page is displaying at main application
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User Verifies Data entered at External page is displaying at main application
        | Field                           | Value      | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
        | How many transfers do you have? | 3          | Transfers             | Select       |
        | Contact number                  | 1234567890 | Contract_Number       | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User clicks "Next Page" button 1 times till last page
      Then User Verifies Data entered at External page is displaying at main application
        | Field              | Value      | data-dataitemid | Locator Type |
        | Client Information | 11/12/1999 | Client_DOB      | Input        |
      Then User clicks "Next Page" button 1 times till last page

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_008_Verify for Request client to fill after passcode expired user not able to login with valid passocde-Send email request
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_008"
      Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "FL024 Multiple Template Product" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
      Then User Selects the Signer Type as "Owner"
      Then User enter all the requeired details
      Then User Clicks "Send Email request" Button
      Then User verifies link is generated and store it
      Then User Clicks "Back to App" Button
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User clicks on close link and popup is closed
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Loads the URL generated by previous actions "NewrecipientLink"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."


    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: AT_020_Verify Request Client to Fill App feature with External Link - Generate Link Without Email
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_020"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Income Choice" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User captures DATA ENTRY% & verify Data Entry % should not be 100%
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
      Then User keeps all fields blank
      Then User Clicks on "Generate Link Without Email" Button
      Then User verifies validation messaged displayed to respective fields ‘Signer Type’, ‘Recipient Name’, ‘Your Email’, Client Birth Date’ fields
      Then User Selects the Signer Type as "Owner"
      Then User fill the details Recipient Name "Amit", Your Name "Vishal", Your Email "testvizi22@gmail.com", Client Birth Date "11111976"
      Then User Clicks on "Generate Link Without Email" Button
      Then USer fill valid data to ‘Recipient Email’ field "testvizi11@gmail.com",Recipient Name "Amit", Client Birth Date "11111976"
      Then User Clicks on "Generate Link Without Email" Button
      Then User verifies validation message displayed to ‘Client Last4 Digits of SSN,Government ID’ field
      Then User Fill valid data to all other fields SSN "1234"
      Then User Clicks on "Generate Link Without Email" Button
      Then User verifies "Link generated at" text is displayed with timestamp, "Recipient(s) must use this link:" text is displayed having External link (Store External Link),"Back To App" button is display
      Then User Clicks "Back to App" Button
      Then User navigates to Data Entry page
      Then User verifies dialog window "Pending Request" popup
      Then User verifies application is display in Locked mode
      Then User verifies "pending request" text is display underneath ‘DATA Entry’ tab label
      Then User verifies "Request Type", "Recipient", "Email Sent", "Date", "Passcode" data displayed on Pending Requests popup
      Then User clicks on the "Send Reminder" link
      Then User verifies the 'Send Reminder' page displayed From Name, From Address, To Name, To Address, Subject, Message, Send button, Cancel button, Close link
      And User clicks on cancel button
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on 'Send' button of "Send Reminder"
      And User verifies confirmation popup is appear
      Then User clicks on the "Send Passcode" link
      Then User verifies the 'Send Passcode' page displayed From Name, From Address, To Name, To Address, Subject, Message, Send button, Cancel button, Close link
      And User clicks on cancel button
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on 'Send' button of "Send Passcode"
      And User verifies confirmation popup is appear
      Then User clicks on Cancel Request link and clicks on "Cancel" button of confirmation dialog
      Then User clicks on close link and popup is closed
      Then User reload the page
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on Cancel Request link and clicks on "OK" button of confirmation dialog
      Then USer verifies Request get Cancel, application get unlocked, and status display as ‘Data Entry’, ‘pending request’ text is not display underneath ‘DATA ENTRY’ tab label
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
      Then User keeps all fields blank
      Then User Selects the Signer Type as "Owner"
      Then User fill the details Recipient Name "Amit", Recipient Email "testvizi11@gmail.com", Your Name "AUTOUser1", Your Email "testhexure@gmail.com", SSN "1234", Client Birth Date "11/11/1976"
      Then User Clicks on "Generate Link Without Email" Button
      And User verifies link is generated and store it
      Then User Clicks "Back to App" Button
      Then User navigates to Data Entry page
      Then User verifies dialog window "Pending Request" popup
      And User verifies "Passcode" is displayed and store it
      Then User clicks on close link and popup is closed
      Then User Now Clicks on Other Action tab and  Clicks on "History"
      Then User verifies in History showing entry for "Pending" request
      Then User verifies "pending request" text is display underneath ‘DATA Entry’ tab label
      Then User clicks on pending request link
      Then User verifies dialog window "Pending Request" popup
      Then User Loads the URL generated previously for "NewrecipientLink"
      Then User Login to External Link using Client Last 4 Digits of SSN Govt ID
      Then User sets values for prefilled form
        | Field               | Value      | data-dataitemid                  | Locator Type |
        | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
        | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
        | Zip                 | 34554     | Owner_ResidentialAddress_Zipcode | Input        |
        | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field                           | Value      | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
        | How many transfers do you have? | 3          | Transfers             | Select       |
        | Contact number                  | 1234567890 | Contract_Number       | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value      | data-dataitemid | Locator Type |
        | Client Information | 11/12/1999 | Client_DOB      | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User clicks on Contact Agent Button It should display Message popup
      Then User Verifies all fields and their values displayed into the Message popup
      And User enter from Email address
      Then User Add some text to the Message body "Automation" and Click on Send button
      Then User verifies toast message Alert "Message sent."
      Then User Now Click on Complete Log Off button
      Then User Complete Activity popup should appear
      Then User verifies all content available at the popup
      Then User Clicks on Cancel button Complete Activity popup should disappear
      Then User Now Click on Complete Log Off button
      Then User Complete Activity popup should appear
      Then User Clicks on Submit and logoff button
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_020"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User verifies Application status as "Data Entry"
      Then User open application from recent activity
      Then User Verifies the DATA ENTRY % is increased than before
      Then User Verifies Data entered at External page is displaying at main application
        | Field               | Value      | data-dataitemid                  | Locator Type |
        | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
        | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
        | Zip                 | 34554     | Owner_ResidentialAddress_Zipcode | Input        |
        | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User Verifies Data entered at External page is displaying at main application
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User Verifies Data entered at External page is displaying at main application
        | Field                           | Value      | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
        | How many transfers do you have? | 3          | Transfers             | Select       |
        | Contact number                  | 1234567890 | Contract_Number       | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User clicks "Next Page" button 1 times till last page
      Then User Verifies Data entered at External page is displaying at main application
        | Field              | Value      | data-dataitemid | Locator Type |
        | Client Information | 11/12/1999 | Client_DOB      | Input        |
      Then User clicks "Next Page" button 1 times till last page


    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_011_Verify for Request client to fill & Sign, after passcode expired , user not able to login with valid passocde
    (Send email)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_011"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing Distributor" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill & Sign" and title should be "Request Clients to Complete Filling and Signing Application"
      Then User enters "Owner" details on page
      Then User clicks on remove link of joint owner
      Then User clicks on Send Email button on signing application
      Then User verifies "Request Sent" popup box appeared
      Then User Verifies data on Request Sent dialogue box
      Then User clicks on Ok button
      Then User verifies dialog window "Pending Request" popup
      Then User verifies "Send Passcode to" link displayed on pending request dialogbox
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "externalURl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_011"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "externalURl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_019_Verify after send email request for Agent Signer, , user not able to login with valid passocde after passcode expired
    (Send Email Request)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_019"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing Distributor" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User clicks "Continue" button
      Then User clicks "Use E-Signature" button on signature page
      Then User selects "agent" signer on signature window
      Then User clicks "Send Email Request" button on signature page
      Then User enter all required signer details for sending mail on signature window
      Then User clicks "Send Email Request" button on signature page
      Then User Notes the URL generated and clicks Back to Signer
      Then User Clicks Back to Application
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
      Then User Loads the URL generated previously for "signerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_019"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User open application from recent activity
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "ok" on Confirmation Dialog
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
      Then User Loads the URL generated previously for "signerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."



    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_028_Verify after  Generate Link without Email request for Agent Signer, user not able to login with valid passocde after passcode expired
    ( Generate Link without Email)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_028"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing Distributor" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User clicks "Continue" button
      Then User clicks "Use E-Signature" button on signature page
      Then User selects "agent" signer on signature window
      Then User clicks "Send Email Request" button on signature page
      Then User enter all required signer details for sending mail on signature window
      Then User clicks "Generate Link Without Email" button on signature page
      Then User Notes the URL generated and clicks Back to Signer
      Then User Clicks Back to Application
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
      Then User Loads the URL generated previously for "signerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_028"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User open application from recent activity
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "ok" on Confirmation Dialog
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
      Then User Loads the URL generated previously for "signerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_029_Verify after send email request for Any Ohter Signer (Except Agent) , user not able to login with valid passocde after passcode expired
    (Send Email Request)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_029"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing Distributor" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User clicks "Continue" button
      Then User clicks "Use E-Signature" button on signature page
      Then User selects "owner" signer on signature window
      Then User clicks "Proceed" button on signature page
      Then User clicks "Send Email Request" button on signature page
      Then User enter all required "owner" details for sending mail on signature window
      Then User clicks "Send Email Request" button on signature page
      Then User Notes the URL generated and clicks Back to Signer
      Then User Clicks Back to Application
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
      Then User Loads the URL generated previously for "signerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Then User verifies resend passcode button is displayed
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_029"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User open application from recent activity
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "ok" on Confirmation Dialog
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
      Then User Loads the URL generated previously for "signerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."


    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_038_Verify after Generate Link without Email for Any Other Signer (Except Agent) , user not able to login with valid passocde after passcode expired
    ( Generate Link without Email)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_038"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing Distributor" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User clicks "Continue" button
      Then User clicks "Use E-Signature" button on signature page
      Then User selects "owner" signer on signature window
      Then User clicks "Proceed" button on signature page
      Then User clicks "Send Email Request" button on signature page
      Then User enter all required "owner" details for sending mail on signature window
      Then User clicks "Generate Link Without Email" button on signature page
      Then User Notes the URL generated and clicks Back to Signer
      Then User Clicks Back to Application
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
      Then User Loads the URL generated previously for "signerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Then User verifies resend passcode button is displayed
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_038"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User open application from recent activity
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "ok" on Confirmation Dialog
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
      Then User Loads the URL generated previously for "signerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_041_Verify after Signing completed ,Post Sign Reviewer not able to login with valid passocde after passcode expired
    (Send Email Request)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_041"
      Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing Distributor" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User clicks "Continue" button
      Then User clicks "Use E-Signature" button on signature page
      Then User selects "joint owner" signer on signature window
      Then User clicks "Proceed" button on signature page
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User navigates to Document Review page for further Signature process
      Then User clicks "Agree" button on signature page
      Then User enter signer Full Name as "Vinod vaje" City as "JAIPUR" perform Signature click I Consent
      Then User selects "owner" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User navigates to Document Review page for further Signature process
      Then User clicks "Agree" button on signature page
      Then User enter signer Full Name as "Vinod vaje" City as "JAIPUR" perform Signature click I Consent
      Then User selects "agent" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User clicks "Confirm All Documents" button on signature page
      Then User clicks "OK" on Confirmation Dialog
      Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User clicks "Continue" button
      Then User Clicks on Request Review
      Then User clicks "Send request to reviewer" E-Review
      Then User Verifies Heading "Send Email To Reviewer(s)"
      Then User clicks Link "Add Reviewer"
      Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
      Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
      Then User selects check box "Reviewer" for Send Email To Reviewer page
      Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
      Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
        | Page Name     | Email Send To                                             | Passcode message                              |
        | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
      Then User clicks button Back to app in Email request page
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Gets the URL by Clicking Send Reminder link
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "reviewerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Then User verifies resend passcode button is displayed
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_041"
      Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
      Then User open application from recent activity
      Then User verifies dialog window "Pending Request" popup
      Then User clicks Close button on pending request page
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "reviewerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_051_Verify for Request client to fill, after passcode expired , user not able to login with valid passocde.
    (Send email request)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_051"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing Distributor" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
      Then User Selects the Signer Type as "Owner"
      Then User keeps all fields blank
      Then User fill the details Recipient Name "Amit", Recipient Email "testvizi11@gmail.com", Your Name "Vishal", Your Email "testvizi22@gmail.com", SSN "1234", Client Birth Date "11111976"
      Then User clicks "Send Email Request" button on signature page
      Then User Notes the URL generated and clicks Back to App
      Then Pending Request popup should appear
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "recipientUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Then User verifies resend passcode button is displayed
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_051"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "recipientUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."


    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_052_Verify for Request client to fill & Sign, after passcode expired , user not able to login with valid passocde
    (Send email)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_052"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing Distributor" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill & Sign" and title should be "Request Clients to Complete Filling and Signing Application"
      Then User enters "Owner" details on page
      Then User clicks on remove link of joint owner
      Then User clicks on Send Email button on signing application
      Then User verifies "Request Sent" popup box appeared
      Then User Verifies data on Request Sent dialogue box
      Then User clicks on Ok button
      Then User verifies dialog window "Pending Request" popup
      Then User verifies "Send Passcode to" link displayed on pending request dialogbox
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "externalURl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Then User verifies resend passcode button is displayed
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_052"
      Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks Close button on pending request page
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "externalURl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."


    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: TC_053_Verify for Request client to fill, after passcode expired , user not able to login with valid passocde.
    (Send email request)
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_053"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User clicks "Continue" button
      Then User clicks "Send request to reviewer" E-Review
      Then User Verifies Heading "Send Email To Reviewer(s)"
      Then User clicks Link "Add Reviewer"
      Then User Verifies Two field appears "Reviewer Name" and "Reviewer Email"
      Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
      Then User selects check box "Reviewer" for Send Email To Reviewer page
      Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
      Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
        | Page Name     | Email Send To                                             | Passcode message                              |
        | Email Requests Sent | An email was sent to DSB at testhexure@gmail.com | Please advise all recipients to use Passcode: |
      Then User clicks button Back to app in Email request page
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Gets the URL by Clicking Send Reminder link
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "reviewerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."
      Then User verifies resend passcode button is displayed
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_TC_053"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
      Then User open application from recent activity
      Then User verifies dialog window "Pending Request" popup
      Then User clicks Close button on pending request page
      Then User Now Clicks on Other Action tab and  Clicks on "Requests"
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on close link and popup is closed
      Then User navigates to Home page
      Then User clicks "All Activities" Tab
      Then User clicks on Pending Requests! link below of recent created activity name
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on home menu
      Then User open that recent created activity from recent Activities tab
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on send passcode link and click on send button and click ok button of popup box
      Then reload the app
      Then User verifies dialog window "Pending Request" popup
      Then User Notes the Passcode from Pending Request dialog
      Then User verifies the pending requests dialog is show "Expired" in place of the passcode value
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "reviewerUrl"
      Then User use passcode and verifies validation message appeared "Invalid or expired Passcode."


    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: AT_001_Validate Page Menu list with Error, Error page counts and Data Entry% - MVC UI
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_001"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Income Choice" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Clicks Expand form menu
      Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is not displayed
      Then User Close the Form Menu by clicking on Collapse button
      Then User clicks "Next Page" button 2 times till last page
      Then User sets values for prefilled form
        | Field                           | Value      | data-dataitemid       | Locator Type |
        | How many transfers do you have? | 1          | Transfers             | Select       |
      Then User Clicks Expand form menu
      Then User verifies "1035 EXCHANGEROLLOVERTRANSFER eFORM" option is displayed
      Then User clicks on Exchange Roll Form option
      Then User Clicks Expand form menu
      Then User expands application222 form
      Then User verifies the number of pages in each form that are showing required fields (in Red color)
      Then User Close the Form Menu by clicking on Collapse button
      Then User captures DATA ENTRY% & verify Data Entry % should not be 100%
      Then User verifies "Continue" Button should be disable
      Then User Clicks Expand form menu
      Then User expands application222 form
      Then User clicks on page1 form of application222
      Then User sets values for prefilled form
        | Field               | Value      | data-dataitemid                  | Locator Type |
        | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
        | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
        | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
        | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field                           | Value      | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
        | Contact number                  | 1234567890 | Contract_Number       | Input        |
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
      Then User Verifies data entry percentage is "100 %"
      Then User Verifies Continue button Enabled

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: PDF_001_Verify Data Entry in application after locking the app.
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_001"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Product Type Dropdown "All"
      Then User selects Given Product "Income Choice RQ MVC"
      Then User selects Optional Forms "One Time Automatic Payment Authorization"
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Verifies data entry percentage is "95 %"
      Then User verifies "Continue" Button should be disable
      Then User verifies Required for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Required for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User opens "Page 1" Required for Form "Application222"
      Then User verifies Page heading "Application222" with form name "Page 1" for data entry flow
      Then User sets values for prefilled form
        | Field          | Value         | data-dataitemid                  | Locator Type |
        | First Name     | UserFirstName | Owner_FirstName                  | Input        |
        | Last Name      | UserLastName  | Owner_LastName                   | Input        |
        | Date of Birth  | 03/09/2000    | Owner_DOB                        | Input        |
        | Zip Code       | 98765         | Owner_ResidentialAddress_Zipcode | Input        |
        | Contact Number | 1234567890    | Contract_Number                  | Input        |
      Then User verifies Red bubble icon at top right corner should be display "False"
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User verifies Red bubble icon at top right corner should be display "False"
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field                           | Value | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |       | PlanType_NonQualified | Check Box    |
        | How many transfers do you have? | 0     | Transfers             | Select       |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field            | Value   | data-dataitemid  | Locator Type |
        | Agent First Name | AgentFN | Agent_FirstName  | Input        |
        | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
        | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
        | PERCENTAGE       | 35      | Agent_Commission | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User opens "Page 1" Required for Form "Fees and Expense Disclosure Sample"
      Then User verifies Page heading "Fees and Expense Disclosure Sample" with form name "Page 1" for data entry flow
      Then User sets values for prefilled form
        | Field         | Value      | data-dataitemid | Locator Type |
        | Date of Birth | 30/03/1990 | Client_DOB      | Input        |
      Then User "Data Entry has met the requirements" popup showing, Close Popup
      Then User Verifies data entry percentage is "100 %"
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application Form" for "Application222" is "Checked"
      Then User verifies "Application Form" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application Form" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Optional Form" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Unchecked"
      Then User verifies "Optional Form" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Unchecked"
      Then User verifies "Optional Form" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Unchecked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 12 pages
      Then User clicks button Back to app
      Then User "Data Entry has met the requirements" popup showing, Close Popup
      Then User verifies Page heading "Fees and Expense Disclosure Sample" with form name "Page 1" for data entry flow
      Then User clicks "Previous Page" button 2 times till last page
      Then User sets values for prefilled form
        | Field                           | Value | data-dataitemid       | Locator Type |
        | How many transfers do you have? | 3     | Transfers             | Select       |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User selects value "Illustration" for field "Select Document Type"
      Then User uploads Document
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User clicks "Continue" button
      Then User clicks Accept E-Signature on Electronic Signatures option window
      Then User clicks "Back To Application" button
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
        | Fees and Expense Disclosure |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Automatic Payment Authorization |
      Then User verifies pdf document contains 21 pages
      Then User clicks button Back to app
      Then User clicks "Continue" button
      Then User selects "owner" signer on signature window
      Then User clicks "Proceed" button on signature page
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User clicks "Next Page" button 3 times till last page
      Then User clicks initials box and enter "Mr" on document sets signature page
      Then User verify arrow point to "Application222" form on signature page
      Then User verify text on "Agree" checkbox
      Then User clicks "Agree" button on signature page
      Then User verify arrow point to "Fees and Expense Disclosure Sample" form on signature page
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "owner" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
      Then User clicks "Back To Application" button
      Then User verify pop up message displays progress as "1" out of "3" steps on signature page
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
        | Fees and Expense Disclosure |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Automatic Payment Authorization |
      Then User verifies pdf document contains 21 pages
      Then User clicks button Back to app
      Then User verify pop up message displays progress as "1" out of "3" steps on signature page
      Then User clicks "Continue" button
      Then User selects "payor" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User verify arrow point to "One Time Automatic Payment Authorization" form on signature page
      Then User verify text on "Agree" checkbox
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "payor" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies "Payor" under completed signatures section with "Re-Sign" button on signature page
      Then User clicks "Back To Application" button
      Then User verify pop up message displays progress as "1" out of "3" steps on signature page
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
        | Fees and Expense Disclosure |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Automatic Payment Authorization |
      Then User verifies pdf document contains 21 pages
      Then User clicks button Back to app
      Then User verify pop up message displays progress as "1" out of "3" steps on signature page
      Then User clicks "Continue" button
      Then User selects "agent" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User verify arrow point to "Application222" form on signature page
      Then User Clicks on Agree All then click Ok on confirm Documents window
      Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
        | Fees and Expense Disclosure |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Automatic Payment Authorization |
      Then User verifies pdf document contains 21 pages
      Then User clicks button Back to app
      Then User clicks "Continue" button
      Then User clicks "OK" on Confirmation Dialog
      Then User clicks "Close" button on signature page
      Then User navigates to Home page
      Then User clicks "Review Queue" Tab
      Then User selects Queue as "DSB"
      Then User enters App Name in search box then click search Icon
      Then User verifies Application should appear in review queue
      Then User clicks "Application PDF" from review queue
      Then User verifies pdf text in "DisplayApplication" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | Fees and Expense Disclosure |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Automatic Payment Authorization |
      Then User verifies pdf document contains 20 pages
      Then User clicks "Review Application Button" from review queue
      Then User clicks Lock and Review Order
      Then User verifies pdf text in "DisplayApplication" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | Fees and Expense Disclosure |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Automatic Payment Authorization |
      Then User verifies pdf document contains 20 pages
      Then User clicks "Approve Application Button" from review queue
      Then User clicks "OK" on Confirmation Dialog
      Then User verifies Application should not appear in review queue page
      Then User navigates to Home page from review Queue page
      Then User verifies Application status as "Complete"
      Then User open application from recent activity
      Then User application is "finished" and verify Popup message
      Then User clicks "Close" button on signature page
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 0 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
        | Fees and Expense Disclosure |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Automatic Payment Authorization |
      Then User verifies pdf document contains 21 pages


    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: PDF_002_Verify Data Entry/Document  from  sent  Client Fill and Sign Request.
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_002"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Product Type Dropdown "All"
      Then User selects Given Product "Income Choice RQ MVC"
      Then User selects Optional Forms "One Time Automatic Payment Authorization"
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Verifies data entry percentage is "95 %"
      Then User verifies "Continue" Button should be disable
      Then User verifies Page heading "Application222" with form name "Page 1" for data entry flow
      Then User sets values for prefilled form
        | Field          | Value         | data-dataitemid                  | Locator Type |
        | First Name     | UserFirstName | Owner_FirstName                  | Input        |
        | Last Name      | UserLastName  | Owner_LastName                   | Input        |
        | Date of Birth  | 03/09/2000    | Owner_DOB                        | Input        |
        | Zip Code       | 98765         | Owner_ResidentialAddress_Zipcode | Input        |
        | Contact Number | 1234567890    | Contract_Number                  | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field                           | Value | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |       | PlanType_NonQualified | Check Box    |
        | How many transfers do you have? | 3     | Transfers             | Select       |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field            | Value   | data-dataitemid  | Locator Type |
        | Agent First Name | AgentFN | Agent_FirstName  | Input        |
        | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
        | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
        | PERCENTAGE       | 35      | Agent_Commission | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User verifies Page heading "Fees and Expense Disclosure Sample" with form name "Page 1" for data entry flow
      Then User sets values for prefilled form
        | Field         | Value      | data-dataitemid | Locator Type |
        | Date of Birth | 30/03/1990 | Client_DOB      | Input        |
      Then User "Data Entry has met the requirements" popup showing, Close Popup
      Then User Verifies data entry percentage is "100 %"
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User selects value "Illustration" for field "Select Document Type"
      Then User uploads Document
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User Clicks "Other Action" Button
      Then User Clicks on "Request Client to Fill & Sign"
      Then User enters "owner" details on page
      Then User remove "payor" details on page
      Then User Now Clicks Send Email Request button
      Then User "Request Sent" Dialog appear with Generated URL for "owner", Stores the URL, Verifies the email on dialog box, Then Clicks on OK
      Then Pending request box with "Owner" is displayed on data entry page
      Then User Notes the Passcode for "Owner" on data entry page
      And User clicks "Close" button on signature page
      Then User navigates to Home page
      Then User verifies Application status as "Pending Client Request"
      Then User clicks "Logoff" button on home page
      And User login to email link with "ownerPasscode" generated on signature page from home page
      Then User "Data Entry has met the requirements" popup showing, Close Popup
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User verifies prefilled form
        | Field          | Value         | data-dataitemid                  | Locator Type | Validation Error                            |
        | First Name     | UserFirstName | Owner_FirstName                  | Input        |                                             |
        | Last Name      | UserLastName  | Owner_LastName                   | Input        |                                             |
        | Zip Code       | 98765         | Owner_ResidentialAddress_Zipcode | Input        |                                             |
        | Date of Birth  | 03/09/2000    | Owner_DOB                   | Input        |                                             |
      Then User clicks "Sign Application" button
      Then User clicks "OK" on Confirmation Dialog
      Then User clicks "Sign Activity" button on page
      Then User clicks "Next Page" button 3 times till last page
      Then User clicks initials box and enter "Mr" on document sets signature page
      Then User verify arrow point to "Application222" form on signature page
      Then User verify text on "Agree" checkbox
      Then User clicks "Agree" button on signature page
      Then User verify arrow point to "Fees and Expense Disclosure Sample" form on signature page
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "owner" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User clicks "View Activity PDF" button on signature page
      Then User verifies pdf text in "PrintApp" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | 30/03/1990    |
        | Income Choice RQ MVC    |
        | Automatic Payment Authorization |
        | Fees and Expense Disclosure     |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
      Then User verifies pdf document contains 20 pages
      And User verify "congratulations" message on signature page
      Then User clicks "OK" button on signature page
      And User verify "thankYou" message on signature page
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_002"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User verifies Application status as "In Signatures"
      Then User open application from recent activity
      Then User verify pop up message displays progress as "1" out of "3" steps on signature page
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User verifies Optional for Form "1035 EXCHANGEROLLOVERTRANSFER eFORM "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | 30/03/1990    |
        | Income Choice RQ MVC    |
        | Automatic Payment Authorization |
        | Fees and Expense Disclosure     |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 21 pages
      Then User clicks button Back to app
      Then User verify pop up message displays progress as "1" out of "3" steps on signature page
      Then User clicks "Continue" button
      Then User selects "payor" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User verify arrow point to "One Time Automatic Payment Authorization" form on signature page
      Then User verify text on "Agree" checkbox
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "payor" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies "Payor" under completed signatures section with "Re-Sign" button on signature page
      Then User clicks "Back To Application" button
      Then User verify pop up message displays progress as "1" out of "3" steps on signature page
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | 30/03/1990    |
        | Income Choice RQ MVC    |
        | Automatic Payment Authorization |
        | Fees and Expense Disclosure     |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 21 pages
      Then User clicks button Back to app
      Then User verify pop up message displays progress as "1" out of "3" steps on signature page
      Then User clicks "Continue" button
      Then User selects "agent" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User verify arrow point to "Application222" form on signature page
      Then User Clicks on Agree All then click Ok on confirm Documents window
      Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies Optional for Form "Application222"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "Fees and Expense Disclosure Sample"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
      Then User verifies Optional for Form "One Time Automatic Payment Authorization "
        | Page 1 |
        | Page 2 |
        | Page 3 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | 30/03/1990    |
        | Income Choice RQ MVC    |
        | Automatic Payment Authorization |
        | Fees and Expense Disclosure     |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 21 pages
      Then User clicks button Back to app
      Then User clicks "Continue" button
      Then User clicks "OK" on Confirmation Dialog
      Then User clicks "Close" button on signature page
      Then User navigates to Home page
      Then User clicks "Review Queue" Tab
      Then User selects Queue as "DSB"
      Then User enters App Name in search box then click search Icon
      Then User verifies Application should appear in review queue
      Then User clicks "Application PDF" from review queue
      Then User verifies pdf text in "DisplayApplication" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | 30/03/1990    |
        | Income Choice RQ MVC    |
        | Automatic Payment Authorization |
        | Fees and Expense Disclosure     |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
      Then User verifies pdf document contains 20 pages
      Then User clicks "Review Application Button" from review queue
      Then User clicks Lock and Review Order
      Then User verifies pdf text in "DisplayApplication" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | 30/03/1990    |
        | Income Choice RQ MVC    |
        | Automatic Payment Authorization |
        | Fees and Expense Disclosure     |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
      Then User verifies pdf document contains 20 pages
      Then User clicks "Approve Application Button" from review queue
      Then User clicks "OK" on Confirmation Dialog
      Then User verifies Application should not appear in review queue page
      Then User navigates to Home page from review Queue page
      Then User verifies Application status as "Complete"
      Then User open application from recent activity
      Then User application is "finished" and verify Popup message
      Then User clicks "Close" button on signature page
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 0 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "Application222"
      Then User verifies "View" button "exists" for application "Fees and Expense Disclosure Sample"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 2"
      Then User verifies "View" button "exists" for application "1035 EXCHANGEROLLOVERTRANSFER eFORM 3"
      Then User verifies "View" button "exists" for application "One Time Automatic Payment Authorization"
      Then User verifies "View" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "Application222" is "Checked"
      Then User verifies "Application" for "Fees and Expense Disclosure Sample" is "Checked"
      Then User verifies "Application" for "One Time Automatic Payment Authorization" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 2" is "Checked"
      Then User verifies "Application" for "1035 EXCHANGEROLLOVERTRANSFER eFORM 3" is "Checked"
      Then User verifies "Optional Form" for "Illustration Required" is "Unchecked"
      Then User verifies "Optional Form" for "Replacement Instruction Page" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | UserFirstName |
        | UserLastName  |
        | 03/09/2000    |
        | 98765         |
        | 1234567890    |
        | 100           |
        | AgentFN       |
        | AgentLN       |
        | 12345         |
        | 35            |
        | 30/03/1990    |
        | Income Choice RQ MVC    |
        | Automatic Payment Authorization |
        | Fees and Expense Disclosure     |
        | 1035 EXCHANGE / ROLLOVER / TRANSFER eFORM |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 21 pages


    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: PDF_003_Verify Data Entry in application after sending app for Pre Sig  review. after locking the app.
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_003"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Product Type Dropdown "All"
      Then User selects Given Product "FL024 Multiple Template Product" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Verifies data entry percentage is "98 %"
      Then User clicks "Close" button on data entry page
      Then User verifies "Continue" Button should be disable
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User selects value "Illustration" for field "Select Document Type"
      Then User uploads Document
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User clicks "Next Page" button 7 times till last page
      Then User clicks "Wet Sign Custom Button" button on data entry page
      Then User verifies dialog window "Documents"
      Then User verify value is "Wet Signed Forms" for field "Select Document Type"
      Then User uploads Document "E2E-TC-08-pdf"
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User clicks "Close" button on data entry page
      Then User clicks "Next Page" button 1 times till last page
      Then User clicks "Policy Custom button" button on data entry page
      Then User verifies dialog window "Documents"
      Then User verify value is "Policy" for field "Select Document Type"
      Then User uploads Document "E2E-TC04-pdfFile"
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User clicks "Close" button on data entry page
      Then User clicks "Next Page" button 2 times till last page
      Then User clicks "Voided Check" button on data entry page
      Then User verifies dialog window "Documents"
      Then User verify value is "Voided Check" for field "Select Document Type"
      Then User uploads Document "E2E-TC05-pdfFile"
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User "Data Entry has met the requirements" popup showing, Close Popup
      Then User Verifies data entry percentage is "100 %"
      Then User clicks "Continue" button
      Then User clicks "Send request to reviewer" E-Review
      Then User clicks Link "Add Reviewer"
      Then User selects check box "Reviewer" for Send Email To Reviewer page
      Then User sets value "DSBRandom"  for field "Reviewer Name" for Send Email To Reviewer page
      Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
      Then User clicks "Send Email Request" on review page
      Then User Clicks Back to App
      And User clicks "Close" button on signature page
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
      Then User verifies pdf document contains 19 pages
      Then User clicks "Back To Application" button
      Then User Notes the Passcode for "Reviewer" on data entry page
      Then User clicks on "Send Reminder to" "Reviewer" link on data entry page
      Then User Note down the URL for external link from Message template.
      Then User clicks "Cancel" button
      Then User Log Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Then User Loads the URL generated previously for "reviewerUrl"
      Then User Logs in with "reviewerPasscode"
      Then User clicks "Application PDF" from review queue
      Then User verifies pdf text in "DisplayApplication" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
      Then User verifies pdf document contains 18 pages
      Then User clicks "Attach Documents" from review queue
      Then User verify value is "Reviewer Documents" for field "Select Document Type"
      Then User uploads Document "TestUpload"
      Then User clicks "Upload" button
      Then User Closes Reviewer Documents window
      Then User clicks "Review Application Button" from review queue
      Then User clicks Lock and Review Order
      Then User verifies pdf text in "DisplayApplication" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
      Then User verifies pdf document contains 18 pages
      Then User clicks "Approve Application Button" from review queue
      Then User clicks "OK" on Confirmation Dialog
      Then User verifies Application should not appear in review queue page
      Then User clicks "Logoff" button on page
      Then User select "review" email with subject "Please review the following Application" on gmail page and save "email link"
      Then User verify saved "emailLink" and "reviewerUrl" from mail are same
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_003"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
      Then User verifies Application status as "Pre-Submit Review: Approved"
      Then User open application from recent activity
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User verifies Optional for Form "FL024 Wet Signed Template Form"
        | Page 1 |
      Then User verifies Optional for Form "FL024 Policy Template Form"
        | Page 1 |
      Then User verifies Optional for Form "eDelivery Required Voided Check"
        | Page 1 |
      Then User verifies Optional for Form "BlueSkyInsuranceTicketApplication"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "Firm Product Form"
      Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication"
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application" for "FL024 Wet Signed Template Form" is "Checked"
      Then User verifies "Application" for "FL024 Policy Template Form" is "Checked"
      Then User verifies "Application" for "Firm Product Form" is "Checked"
      Then User verifies "Application" for "eDelivery Required Voided Check" is "Checked"
      Then User verifies "Application" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 19 pages
      Then User clicks button Back to app
      Then User clicks "Continue" button
      Then User clicks Accept E-Signature on Electronic Signatures option window
      Then User selects "owner" signer on signature window
      Then User clicks "Proceed" button on signature page
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User clicks "Continue" button on document sets signature page
      Then User verify arrow point to "Firm Product Form" form on signature page
      Then User verify text on "Agree" checkbox
      Then User clicks "Agree" button on signature page
      Then User verify arrow point to "BlueSkyInsuranceTicketApplication" form on signature page
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "owner" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User clicks "Continue" button on document sets signature page
      Then User verify arrow point to "ENR BlueSkyInsApplication 2 Signer" form on signature page
      Then User verify text on "Agree" checkbox
      Then User clicks "Agree" button on signature page
      Then User verify arrow point to "eDelivery Required Voided Check" form on signature page
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "owner" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
      Then User clicks "Back To Application" button
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User verifies Optional for Form "FL024 Wet Signed Template Form"
        | Page 1 |
      Then User verifies Optional for Form "FL024 Policy Template Form"
        | Page 1 |
      Then User verifies Optional for Form "eDelivery Required Voided Check"
        | Page 1 |
      Then User verifies Optional for Form "BlueSkyInsuranceTicketApplication"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "Firm Product Form"
      Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication"
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application" for "FL024 Wet Signed Template Form" is "Checked"
      Then User verifies "Application" for "FL024 Policy Template Form" is "Checked"
      Then User verifies "Application" for "Firm Product Form" is "Checked"
      Then User verifies "Application" for "eDelivery Required Voided Check" is "Checked"
      Then User verifies "Application" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 19 pages
      Then User clicks button Back to app
      Then User clicks "Continue" button
      Then User selects "insured" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User verify arrow point to "ENR BlueSkyInsApplication 2 Signer" form on signature page
      Then User clicks "Agree" button on signature page
      Then User verify arrow point to "BlueSkyInsuranceTicketApplication" form on signature page
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "insured" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies "Insured" under completed signatures section with "Re-Sign" button on signature page
      Then User clicks "Back To Application" button
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User verifies Optional for Form "FL024 Wet Signed Template Form"
        | Page 1 |
      Then User verifies Optional for Form "FL024 Policy Template Form"
        | Page 1 |
      Then User verifies Optional for Form "eDelivery Required Voided Check"
        | Page 1 |
      Then User verifies Optional for Form "BlueSkyInsuranceTicketApplication"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "Firm Product Form"
      Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication"
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application" for "FL024 Wet Signed Template Form" is "Checked"
      Then User verifies "Application" for "FL024 Policy Template Form" is "Checked"
      Then User verifies "Application" for "Firm Product Form" is "Checked"
      Then User verifies "Application" for "eDelivery Required Voided Check" is "Checked"
      Then User verifies "Application" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 19 pages
      Then User clicks button Back to app
      Then User clicks "Continue" button
      Then User selects "agent" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User verify arrow point to "ENR BlueSkyInsApplication 2 Signer" form on signature page
      Then User Clicks on Agree All then click Ok on confirm Documents window
      Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User verifies Optional for Form "FL024 Wet Signed Template Form"
        | Page 1 |
      Then User verifies Optional for Form "FL024 Policy Template Form"
        | Page 1 |
      Then User verifies Optional for Form "eDelivery Required Voided Check"
        | Page 1 |
      Then User verifies Optional for Form "BlueSkyInsuranceTicketApplication"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "Firm Product Form"
      Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication"
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application" for "FL024 Wet Signed Template Form" is "Checked"
      Then User verifies "Application" for "FL024 Policy Template Form" is "Checked"
      Then User verifies "Application" for "Firm Product Form" is "Checked"
      Then User verifies "Application" for "eDelivery Required Voided Check" is "Checked"
      Then User verifies "Application" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Report PDF" for "Validation Report" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | Application Validation Report |
        | Application Name |
        | Errors           |
        | Reminders        |
      Then User verifies pdf document contains 19 pages
      Then User clicks button Back to app
      Then User clicks "Continue" button
      Then User clicks "OK" on Confirmation Dialog
      Then User clicks "Close" button on signature page
      Then User navigates to Home page
      Then User clicks "Logoff" button on page
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_003"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
      Then User verifies Application status as "Complete"
      Then User open application from recent activity
      Then User clicks "Close" button on signature page
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User verifies Optional for Form "FL024 Wet Signed Template Form"
        | Page 1 |
      Then User verifies Optional for Form "FL024 Policy Template Form"
        | Page 1 |
      Then User verifies Optional for Form "eDelivery Required Voided Check"
        | Page 1 |
      Then User verifies Optional for Form "BlueSkyInsuranceTicketApplication"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 0 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "Firm Product Form"
      Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication"
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "FL024 Policy Template Form"
      Then User verifies "View" button "exists" for application "eDelivery Required Voided Check"
      Then User verifies "View" button "exists" for application "FL024 Wet Signed Template Form"
      Then User verifies "View" button "exists" for uploaded document
      Then User Closes Documents window

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: PDF_004_Verify Data Entry/Document in App after sent  Request Clients to Complete Filling the Application.
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_004"
      Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Product Type Dropdown "All"
      Then User selects Given Product "FL024 Multiple Template Product" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Verifies data entry percentage is "98 %"
      Then User clicks "Close" button on data entry page
      Then User verifies "Continue" Button should be disable
      Then User clicks "Next Page" button 7 times till last page
      Then User clicks "Wet Sign Custom Button" button on data entry page
      Then User verifies dialog window "Documents"
      Then User verify value is "Wet Signed Forms" for field "Select Document Type"
      Then User uploads Document "E2E-TC-08-pdf"
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User clicks "Close" button on data entry page
      Then User clicks "Next Page" button 1 times till last page
      Then User clicks "Policy Custom button" button on data entry page
      Then User verifies dialog window "Documents"
      Then User verify value is "Policy" for field "Select Document Type"
      Then User uploads Document "E2E-TC04-pdfFile"
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User clicks "Close" button on data entry page
      Then User clicks "Next Page" button 9 times till last page
      Then User clicks "Voided Check" button on data entry page
      Then User verifies dialog window "Documents"
      Then User verify value is "Voided Check" for field "Select Document Type"
      Then User uploads Document "E2E-TC05-pdfFile"
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User "Data Entry has met the requirements" popup showing, Close Popup
      Then User Verifies data entry percentage is "100 %"
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User selects value "Illustration" for field "Select Document Type"
      Then User uploads Document
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
      Then User Selects the Signer Type as "Owner"
      Then User Enters Recipient name, Email, SSN, DOB
      Then User Clicks Send Email request Button
      And User save the "email link" generated on signature page
      And User Clicks Back to App
      Then Pending request box with "Owner" is displayed on data entry page
      Then User Notes the Passcode for "Owner" on data entry page
      And User clicks "Close" button on signature page
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application Form" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application Form" for "FL024 Wet Signed Template Form" is "Checked"
      Then User verifies "Application Form" for "FL024 Policy Template Form" is "Checked"
      Then User verifies "Application Form" for "Firm Product Form" is "Checked"
      Then User verifies "Application Form" for "eDelivery Required Voided Check" is "Checked"
      Then User verifies "Application Form" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
      Then User verifies pdf document contains 18 pages
      Then User clicks button Back to app
      And User clicks "Close" button on signature page
      Then User Log Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Then User select "complete filling application" email with subject "AppName - Please complete filling your Application" on gmail page and save "email link"
      Then User select "Passcode Application" email with subject "Passcode Application" on gmail page and save "passcode"
      Then User login to email link with "SSN" generated on signature page from home page
      Then User clicks "Attach Documents" from review queue
      Then User verify document for "Illustration" does not exists on select documents to print page
      Then User verify document for "Policy" does not exists on select documents to print page
      Then User verify document for "Voided Check" does not exists on select documents to print page
      Then User verify document for "Wet Signed Forms" does not exists on select documents to print page
      Then User verify value is "Illustration" for field "Select Document Type"
      Then User uploads Document "Sample"
      Then User clicks "Upload" button
      Then User Closes Documents window
      Then User sets values for prefilled form
        | Field          | Value         | data-dataitemid                  | Locator Type |
        | First Name     | UserFirstName | Insured_FirstName                  | Input        |
        | Last Name      | UserLastName  | Insured_LastName                   | Input        |
        | Date of Birth  | 03/09/2000    | Insured_DOB                        | Input        |
        | Zip Code       | 98765         | Insured_ResidentialAddress_Zipcode | Input        |
      Then User clicks "Display/Print PDF" from review queue
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | UserFirstName             |
        | UserLastName             |
        | 03/09/2000               |
        | 98765                    |
      Then User verifies pdf document contains 18 pages
      Then User Now Click on Complete Log Off button
      Then User Clicks on Submit and logoff button
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_004"
      Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
      Then User open application from recent activity
      And User clicks "Close" button on data entry page
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User verifies Optional for Form "FL024 Wet Signed Template Form"
        | Page 1 |
      Then User verifies Optional for Form "FL024 Policy Template Form"
        | Page 1 |
      Then User verifies Optional for Form "eDelivery Required Voided Check"
        | Page 1 |
      Then User verifies Optional for Form "BlueSkyInsuranceTicketApplication"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User verify value of field "Insured_FirstName" is set to "UserFirstName"
      Then User verify value of field "Insured_LastName" is set to "UserLastName"
      Then User verify value of field "Insured_ResidentialAddress_Zipcode" is set to "98765"
      Then User verify value of field "Insured_DOB" is set to "03/09/2000"
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 4 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "Remove" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "Remove" button "exists" for application "E2E-TC04-pdfFile"
      Then User verifies "Remove" button "exists" for application "E2E-TC05-pdfFile"
      Then User verifies "Remove" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application Form" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application Form" for "FL024 Wet Signed Template Form" is "Checked"
      Then User verifies "Application Form" for "FL024 Policy Template Form" is "Checked"
      Then User verifies "Application Form" for "Firm Product Form" is "Checked"
      Then User verifies "Application Form" for "eDelivery Required Voided Check" is "Checked"
      Then User verifies "Application Form" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | UserFirstName             |
        | UserLastName             |
        | 03/09/2000               |
        | 98765                    |
      Then User verifies pdf document contains 18 pages
      Then User clicks button Back to app
      And User clicks "Close" button on data entry page
      Then User clicks "Continue" button
      Then User clicks Accept E-Signature on Electronic Signatures option window
      Then User selects "agent" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User verify arrow point to "ENR BlueSkyInsApplication 2 Signer" form on signature page
      Then User Clicks on Agree All then click Ok on confirm Documents window
      Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
      Then User clicks "Back To Application" button
      Then User verify pop up message displays progress as "1" out of "4" steps on signature page
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "Firm Product Form"
      Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication"
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC04-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC05-pdfFile"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application" for "FL024 Wet Signed Template Form" is "Checked"
      Then User verifies "Application" for "FL024 Policy Template Form" is "Checked"
      Then User verifies "Application" for "Firm Product Form" is "Checked"
      Then User verifies "Application" for "eDelivery Required Voided Check" is "Checked"
      Then User verifies "Application" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | UserFirstName             |
        | UserLastName             |
        | 03/09/2000               |
        | 98765                    |
      Then User verifies pdf document contains 18 pages
      Then User clicks button Back to app
      And User clicks "Close" button on data entry page
      Then User clicks "Continue" button
      Then User selects "owner" signer on signature window
      Then User selects "insured" signer on signature window
      Then User clicks "Proceed" button on signature page
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User clicks "Agree" button on signature page
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "owner" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User clicks "Agree" button on signature page
      Then User clicks "Agree" button on signature page
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "owner" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User clicks "Continue" button
      Then User Clicks on Request Review
      Then User clicks "Send request to reviewer" E-Review
      Then User clicks Link "Add Reviewer"
      Then User selects check box "Reviewer" for Send Email To Reviewer page
      Then User sets value "DSBRandom"  for field "Reviewer Name" for Send Email To Reviewer page
      Then User sets value "testhexure@gmail.com"  for field "Reviewer Email" for Send Email To Reviewer page
      Then User clicks "Send Email Request" on review page
      Then User Clicks Back to App
      And User clicks "Close" button on signature page
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 1 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "E2E-TC-08-pdf"
      Then User verifies "View" button "exists" for uploaded document
      Then User verifies "Remove" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
      Then User verifies pdf document contains 18 pages
      Then User clicks button Back to app
      Then User Notes the Passcode for "Reviewer" on data entry page
      Then User clicks on "Send Reminder to" "Reviewer" link on data entry page
      Then User Note down the URL for external link from Message template.
      Then User clicks "Cancel" button
      Then User Log Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Then User Loads the URL generated previously for "reviewerUrl"
      Then User Logs in with "reviewerPasscode"
      Then User clicks "Application PDF" from review queue
      Then User verifies pdf text in "DisplayApplication" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | UserFirstName             |
        | UserLastName             |
        | 03/09/2000               |
        | 98765                    |
      Then User verifies pdf document contains 18 pages
      Then User clicks "Attach Documents" from review queue
      Then User verify value is "Reviewer Documents" for field "Select Document Type"
      Then User uploads Document "TestUpload"
      Then User clicks "Upload" button
      Then User Closes Reviewer Documents window
      Then User clicks "Review Application Button" from review queue
      Then User clicks Lock and Review Order
      Then User verifies pdf text in "DisplayApplication" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | UserFirstName             |
        | UserLastName             |
        | 03/09/2000               |
        | 98765                    |
      Then User verifies pdf document contains 18 pages
      Then User clicks "Approve Application Button" from review queue
      Then User clicks "OK" on Confirmation Dialog
      Then User verifies Application should not appear in review queue page
      Then User clicks "Logoff" button on page
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_PDF_004"
      Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
      Then User verifies Application status as "Complete"
      Then User open application from recent activity
      Then User verifies Optional for Form "ENR BlueSkyInsApplication 2 Signer"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User verifies Optional for Form "FL024 Wet Signed Template Form"
        | Page 1 |
      Then User verifies Optional for Form "FL024 Policy Template Form"
        | Page 1 |
      Then User verifies Optional for Form "eDelivery Required Voided Check"
        | Page 1 |
      Then User verifies Optional for Form "BlueSkyInsuranceTicketApplication"
        | Page 1 |
        | Page 2 |
        | Page 3 |
        | Page 4 |
        | Page 5 |
        | Page 6 |
        | Page 7 |
      Then User opens Menu "Other Actions  ->Documents"
      Then User verifies dialog window "Documents"
      Then User verifies 0 occurrence of "Remove" button for applications
      Then User verifies "View" button "exists" for application "ENR BlueSkyInsApplication 2 Signer"
      Then User verifies "View" button "exists" for application "Firm Product Form"
      Then User verifies "View" button "exists" for application "BlueSkyInsuranceTicketApplication"
      Then User verifies "View" button "exists" for application "E2E-TC02-pdfFile"
      Then User verifies "View" button "exists" for application "FL024 Policy Template Form"
      Then User verifies "View" button "exists" for application "eDelivery Required Voided Check"
      Then User verifies "View" button "exists" for application "FL024 Wet Signed Template Form"
      Then User verifies "View" button "exists" for uploaded document
      Then User Closes Documents window
      Then User opens Menu "Other Actions  ->Display/Print PDF"
      Then User verifies "Application" for "ENR BlueSkyInsApplication 2 Signer" is "Checked"
      Then User verifies "Application" for "FL024 Wet Signed Template Form" is "Checked"
      Then User verifies "Application" for "FL024 Policy Template Form" is "Checked"
      Then User verifies "Application" for "Firm Product Form" is "Checked"
      Then User verifies "Application" for "eDelivery Required Voided Check" is "Checked"
      Then User verifies "Application" for "BlueSkyInsuranceTicketApplication" is "Checked"
      Then User verifies "Compliant Illustration" for "Illustration" is "Unchecked"
      Then User clicks "Print Selected Documents" button
      Then User verifies pdf text in "PrintPdf" document
        | Value         |
        | INDIVIDUAL LIFE INSURANCE |
        | Welcome to Smallpdf  |
        | Owner    |
        | Disclosure Notice         |
        | UserFirstName             |
        | UserLastName             |
        | 03/09/2000               |
        | 98765                    |
      Then User verifies pdf document contains 18 pages
      Then User select "review" email with subject "Please review the following Application" on gmail page and save "email link"
      Then User verify saved "emailLink" and "reviewerUrl" from mail are same

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: AT_021_verify Request Client to Fill & Sign App
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_021"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Product Type Dropdown "All"
      Then User selects Given Product "Easy Signing" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User clicks on "close" link
      Then User stores Data Entry percentage
      Then User Now Goes to Other Action and Send Request Client to Fill & Sign Option
      Then User verify header of page is "Request Clients to Complete Filling and Signing Application"
      Then User keeps "Your Name" fields blank
      Then User keeps "Your Email" fields blank
      Then User Clicks "Send Email request" Button
      Then User verifies primary owner error msg name,email,ssn and DOB
      Then User verifies joint Owner error msg name,email,ssn and DOB
      Then User verifies data "Owner select"
      Then User fill valid data of YourName and Your Email
      Then User enters "owner" details on page
      Then User enters "jointowner" details on page
      Then User Clicks "Send Email request" Button
      Then User verifies data "OK"
      Then User clicks Ok popup button
      Then User verifies pending request
        | Send Reminder to                |
        | Send Passcode to       |
        | Cancel this request                  |
        | Send Reminder to   |
        | Send Passcode to|
        | Cancel this request                     |
      Then User clicks on "Send Reminder to JointOwnerNM" link
      Then User verifies data "From Name"
      Then User verifies data "From Address"
      Then User verifies data "To Name"
      Then User verifies data "Subject"
      Then User verifies data "Message"
      Then User verifies data "Cancel request"
      Then User verifies data "Send"
      Then User verifies data "CLose link"
      Then User clicks on "Cancel" link
      Then User clicks on "Send Reminder to JointOwnerNM" link
      Then User verifies data "From Name"
      Then User verifies data "From Address"
      Then User verifies data "To Name"
      Then User verifies data "Subject"
      Then User verifies data "Message"
      Then User verifies data "Cancel request"
      Then User verifies data "Send"
      Then User verifies data "CLose link"
      Then User clicks on "Send button" link
      Then User verifies data "OK"
      Then User clicks Ok popup button
      Then Pending Request popup should appear
      Then User clicks on "Send Passcode to JointOwnerNM's Email" link
      Then User verifies data "From Name"
      Then User verifies data "From Address"
      Then User verifies data "To Name"
      Then User verifies data "Subject"
      Then User verifies data "Message"
      Then User verifies data "Cancel request"
      Then User verifies data "Send"
      Then User verifies data "CLose link"
      Then User clicks on "Cancel" link
      Then Pending Request popup should appear
      Then User clicks on "Send Passcode to JointOwnerNM's Email" link
      Then User verifies data "From Name"
      Then User verifies data "From Address"
      Then User verifies data "To Name"
      Then User verifies data "Subject"
      Then User verifies data "Message"
      Then User verifies data "Cancel request"
      Then User verifies data "Send"
      Then User verifies data "CLose link"
      Then User clicks on "Send button" link
      Then User clicks Ok popup button
      Then User clicks on "Cancel Joint Owner" link
      Then Pending Request popup should appear
      Then User verifies data "Ok Confirmation"
      Then User clicks on "Ok Popup" link
      Then User Reload the page
      Then User clicks on "Send Reminder to Primary OwnerNM" link
      Then User verifies data "From Name"
      Then User verifies data "From Address"
      Then User verifies data "To Name"
      Then User verifies data "Subject"
      Then User verifies data "Message"
      Then User verifies data "Cancel request"
      Then User verifies data "Send"
      Then User verifies data "CLose link"
      Then User clicks on "Cancel" link
      Then User clicks on "Send Reminder to Primary OwnerNM" link
      Then User verifies data "From Name"
      Then User verifies data "From Address"
      Then User verifies data "To Name"
      Then User verifies data "Subject"
      Then User verifies data "Message"
      Then User verifies data "Cancel request"
      Then User verifies data "Send"
      Then User verifies data "CLose link"
      Then User clicks on "Send button" link
      Then User clicks Ok popup button
      Then User clicks on "Send Passcode to Primary OwnerNM" link
      Then User verifies data "Cancel request"
      Then User verifies data "Send"
      Then User clicks on "Cancel" link
      Then User clicks on "Cancel PrimaryOwner" link
      Then User clicks on "Ok Popup" link
      Then User clicks on "close" link
      Then User rename the application on data entry page
      Then User Now Goes to Other Action and Send Request Client to Fill & Sign Option
      Then User enters "owner" details on page
      Then User enters "jointowner" details on page
      Then User Clicks "Send Email request" Button
      Then User Notes the URL generated
      Then User clicks on "Ok Popup" link
      Then User verifies pending request  displayed
      Then User clicks on "close popup" link
      Then User Now Clicks on Other Action tab and Clicks on History button
      Then User verifies Audit History
        | Status                  | Status Description                      |
        | E-Request Sent | 'AUTOUser1' sent email to request client to complete the activity |
      Then User clicks on "Pending request" link
      Then User verifies pending request  displayed
      Then User store "Owner Passcode"
      Then User store "JointOwner Passcode"
      Then User Logs Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Then User select "owner complete filling application" email with subject "AppName - Please complete filling your Application" on gmail page and save "email link"
      Then User Loads the URL generated previously for "URL"
      Then User Login to External Link for "Primary Owner"
      Then User clicks on "Close Application" link
      Then User Clicks "Sign Application" Button
      Then User verifies data "lock Activity"
      Then User Clicks "OK lock Activity" Button
      Then User verifies data "Electronic Signature"
      Then User Clicks Sign Activity button
      Then User Clicks Agree Document Checkbox
      Then User Signer Full Name as "SignerName" City as "JAIPUR" perform Signature click I Consent
      Then User verifies data "Congratulations popup"
      Then User clicks on OK In Congratulation field Button
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_021"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User verifies Application status as "In Signatures"
      Then User open application from recent activity
      Then User verifies data "Signature Pending request"
      Then User Verify no Pending dialog box appear
      Then User clicks on "Send Reminder to JointOwnerNM" link
      Then User Note down the URL for external link in pending request
      Then User Logs Off from current Application
      Then User select "joint owner" email with subject "AppName - Please complete your signature" on gmail page and save "email link"
      Then User Loads the URL generated previously for "URL"
      Then User Login to External Link for "Joint Owner"
      Then User Clicks Sign Activity button
      Then User Clicks Agree Document Checkbox
      Then User Signer Full Name as "SignerName" City as "JAIPUR" perform Signature click I Consent
      Then User clicks on OK In Congratulation field Button
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_021"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User verifies Application status as "Client Signatures Complete"
      Then User open application from recent activity
      Then User Verify no Pending dialog box appear

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: AT_022_Verify Request Client to Fill & Sign feature - Generate Link Without Email
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_022"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Easy Signing" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User Verifies data entry percentage is "100 %"
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill & Sign" and title should be "Request Clients to Complete Filling and Signing Application"
      Then User keeps all fields blank
      Then User Clicks on "Generate Link Without Email" Button
      Then User verifies primary owner error msg name,email,ssn and DOB
      Then User verifies joint Owner error msg name,email,ssn and DOB
      Then User fill valid data of YourName and Your Email
      Then User enters "Owner" details on page
      Then User enters "jointowner" details on page
      Then User Now Clicks on Generate Link Without Email button
      Then User clicks on Back To App button
      Then User verifies dialog window "Pending Request" popup
      Then User verifies application is display in Locked mode
      Then User verifies "pending request" text is display underneath ‘DATA Entry’ tab label
      Then User verifies "Request Type", "Recipient", "Email Sent", "Date", "Passcode" data displayed on Pending Requests popup for owners
      Then User clicks on the "Send Reminder" link
      Then User verifies the 'Send Reminder' page displayed From Name, From Address, To Name, To Address, Subject, Message, Send button, Cancel button, Close link
      And User clicks on cancel button
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on "Send Reminder to" "Joint Owner" link on data entry page
      Then User Note down the URL for external link from Message template.
      Then User clicks "Cancel" button
      Then User reload the page
      Then User clicks on 'Send' button of "Send Reminder"
      And User verifies confirmation popup is appear
      Then User clicks on the "Send Passcode" link
      Then User verifies the 'Send Passcode' page displayed From Name, From Address, To Name, To Address, Subject, Message, Send button, Cancel button, Close link
      And User clicks on cancel button
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on 'Send' button of "Send Passcode"
      And User verifies confirmation popup is appear
      Then User clicks on Cancel Request link and clicks on "Cancel" button of confirmation dialog
      Then User clicks Close button on pending request page
      Then User reload the page
      Then User verifies dialog window "Pending Request" popup
      Then User clicks on Cancel Request link and clicks on "OK" button of confirmation dialog
#      Then User clicks on Cancel Request link and clicks on "OK" button of confirmation dialog
      Then USer verifies Request get Cancel, application get unlocked, and status display as ‘Data Entry’, ‘pending request’ text is not display underneath ‘DATA ENTRY’ tab label
      Then User select "joint owner" email with subject "AppName - Please complete filling your Application" on gmail page and save "email link"
      Then User verify saved "emailLink" and "reviewerUrl" from mail are same
      Then User open the link received to client (Primary signer) & verifies Heading "The request is not valid."
      Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill & Sign" and title should be "Request Clients to Complete Filling and Signing Application"
      Then User enters "Owner" details on page
      Then User enters "jointowner" details on page
      Then User Now Clicks on Generate Link Without Email button
      Then User clicks on Back To App button
      Then User verifies dialog window "Pending Request" popup
      Then User store "owner passcode"
      Then User store "jointowner passcode"
      Then User clicks Close button on pending request page
      Then User Now Clicks on Other Action tab and  Clicks on "History"
      Then User verifies in History showing entry for "Pending" request
      Then User verifies "pending request" text is display underneath ‘DATA Entry’ tab label
      Then User clicks on pending request link
      Then User verifies dialog window "Pending Request" popup
      Then User Logs Off from current Application
      Then User Loads the URL generated previously for "UrlLinkOnPrimaryGeneratedLinkWithoutEmailScreen"
      Then User Login to External Link for "Primary Owner"
      Then User "Data Entry has met the requirements" popup showing, Close Popup
      Then User Clicks on Sign application button
      Then User clicks on Ok button
      Then User Clicks Sign Activity button
      Then User Clicks on Agree Checkbox
      Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
      Then User Clicks on I Consent
      Then Click OK on Congratulations screen. then close the browser
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_022"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User verifies Application Status on Recent Activity is "In Signatures" now
      Then User open application from recent activity
      Then User verifies dialog window "Pending Request" popup
      Then User store "jointowner passcode"
      Then User gets the URL from Message template by clicking Send Reminder to
      Then User Logs Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Then User Loads the URL generated previously for "ownerUrl"
      Then User Login to External Link for "Joint Owner"
      Then User Clicks Sign Activity button
      Then User Clicks on Agree Checkbox
      Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
      Then User Clicks on I Consent
      Then Click OK on Congratulations screen. then close the browser
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_022"
      Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
      Then User verifies Application Status on Recent Activity is "Client Signatures Complete" now
      Then User open application from recent activity
      Then User Verify no Pending dialog box appear
      Then User verifies application is display in Locked mode

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: AT_023_Verify Other Actions Transfer
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_023"
      Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Income Choice" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User opens Menu "Other Actions  ->Transfer"
      Then User enters "newOwnerName" on transfer activity page
      Then User clicks "Search" button on transfer activity page
      Then User selects "newOwnerName" on transfer activity page
      Then User verify transfer message on transfer activity page
      Then User clicks "X" button on transfer activity page
      Then User Clicks on Other Action Tab and verify "Transfer" option is not available
      Then User Close Other Action by clicking again on OtherAction tab
      Then User verify transfer pending request message
      Then User clicks Close button on pending request page
      Then User verify "Read Only" is displayed on data entry page
      Then User verify fields for "readonly"
        | Field          | Value          | data-dataitemid                  | Locator Type |
        | First Name     | OwnerFirstName | Owner_FirstName                  | Input        |
        | Last Name      | OwnerLastName  | Owner_LastName                  | Input        |
        | Owner Gender   | M              | Owner_Gender                     | Check Box    |
      Then User clicks "Other Actions" button
      Then User click "History" submenu
      And User verify audit entries contains "Transfer Started" on history dialog
      Then User navigates to Home page
      Then User verify application displayed at Recent Activity
      Then User Log Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_023"
      Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
      Then User clicks "Notifications" button
      Then User search application name from notifications page
      Then User expand application from notifications page
      And User verify notification entries contains "Application Transfer" on history dialog
      And User clicks "Back" button
      Then User open application from recent activity
      Then User sets values for prefilled form
        | Field               | Value      | data-dataitemid                  | Locator Type |
        | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
        | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
        | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
        | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field                           | Value      | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
        | Contact number                  | 1234567890 | Contract_Number       | Input        |
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
      Then User Verifies data entry percentage is "100 %"
      Then User clicks "Continue" button on signature page
      Then User clicks Accept E-Signature on Electronic Signatures option window
      Then User selects "owner" signer on signature window
      Then User clicks "Proceed" button on signature page
      Then User clicks "Sign Now" button on signature page
      Then User enter all required details for signing on signature window
      Then User clicks "Verified" button on signature page
      Then User clicks "Next Page" button 3 times till last page
      Then User clicks initials box and enter "Mr" on document sets signature page
      Then User verify arrow point to "Application222" form on signature page
      Then User clicks "Agree" button on signature page
      Then User verify arrow point to "Fees and Expense Disclosure Sample" form on signature page
      Then User clicks "Agree" button on signature page
      Then User enter all required details for "owner" on capture electronic signature window
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
      Then User selects "agent" signer on signature window
      Then User clicks "Sign Now" button on signature page
      Then User clicks "Confirm All Documents" button on signature page
      Then User clicks "OK" on Confirmation Dialog
      Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
      Then User perform Signature on Signature Pad
      Then User clicks "I Consent" button on signature page
      Then User clicks "Continue" button
      Then User clicks "OK" on Confirmation Dialog
      Then User Reload the page
      Then User application is "finished" and verify Popup message
      Then User navigates to Home page
      Then User verifies Application status as "Complete"
      Then User Logs Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_023"
      Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
      Then User verify application is not displayed at Recent Activity

    @RegressionTest @RegActivityMasterCP1MVC @RegressionTestCP1
    Scenario: AT_025_Verify Other Actions Share
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_025"
      Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Income Choice" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User opens Menu "Other Actions  ->Share"
      Then User enters "newOwnerName" on share activity page
      Then User clicks "Search" button on share activity page
      Then User "Share Full Control" to "newOwnerName" on share activity page
      Then User verify "Full Control" share message on share activity page
      Then User accept share URL on share activity page
      Then User clicks "X" button on share activity page
      Then User clicks "Other Actions" button
      Then User click "History" submenu
      And User verify audit entries contains "Activity Shared" on history dialog
      Then User navigates to Home page
      Then User verify application displayed at Recent Activity
      Then User Log Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_025"
      Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
      Then User open application from shared activity
      Then User Verifies data entry percentage is "95 %"
      Then User sets values for prefilled form
        | Field               | Value      | data-dataitemid                  | Locator Type |
        | Owner First Name    | OwnerFN    | Owner_FirstName                  | Input        |
        | Owner Last Name     | OwnerLN    | Owner_LastName                   | Input        |
        | Zip                 | 34545     | Owner_ResidentialAddress_Zipcode | Input        |
        | Owner date of birth | 11/12/2000 | Owner_DOB                        | Input        |
      Then User clicks "Other Actions" button
      Then User click "History" submenu
      And User verify audit entries contains "Activity Share Accepted,User Viewed Activity" on history dialog
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field              | Value | data-dataitemid               | Locator Type |
        | Benefit Percentage | 100   | PrimaryBeneficiary_Percentage | Input        |
      Then User clicks "Next Page" button 1 times till last page
      Then User sets values for prefilled form
        | Field                           | Value      | data-dataitemid       | Locator Type |
        | Non Qualified Checkbox          |            | PlanType_NonQualified | Check Box    |
        | Contact number                  | 1234567890 | Contract_Number       | Input        |
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
      Then User Verifies data entry percentage is "100 %"
      Then User navigates to Home page
      Then User clicks "ok" on Confirmation Dialog
      Then User clicks "Application" Tab
      Then User selects Jurisdiction "Alabama"
      Then User selects Given Product "Income Choice" for application
      Then User clicks "Create" button
      Then User enters new Application name
      Then User clicks on Create button on Rename window
      Then User opens Menu "Other Actions  ->Share"
      Then User enters "oldOwnerName" on share activity page
      Then User clicks "Search" button on share activity page
      Then User "Share Read Only" to "oldOwnerName" on share activity page
      Then User verify "Read Only" share message on share activity page
      Then User accept share URL on share activity page
      Then User clicks "X" button on share activity page
      Then User clicks "Other Actions" button
      Then User click "History" submenu
      And User verify audit entries contains "Activity Shared" on history dialog
      Then User navigates to Home page
      Then User verify application displayed at Recent Activity
      Then User Log Off from current Application
      Then User should Logoff from the External page and Thank you for using our application page should display
      Given User is on FireLight login page for TestCase "RegActivityMasterCP1MVC_AT_025"
      Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
      Then User open application from shared activity
      Then User verify fields for "readonly"
        | Field          | Value          | data-dataitemid                  | Locator Type |
        | First Name     | OwnerFirstName | Owner_FirstName                  | Input        |
        | Last Name      | OwnerLastName  | Owner_LastName                  | Input        |
        | Owner Gender   | M              | Owner_Gender                     | Check Box    |
      Then User clicks "Other Actions" button
      Then User click "History" submenu
      And User verify audit entries contains "Activity Share Accepted,User Viewed Activity" on history dialog

