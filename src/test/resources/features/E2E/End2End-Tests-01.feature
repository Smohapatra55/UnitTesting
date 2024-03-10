Feature: FireLight_End2End_Tests

  This feature will verify FireLight Complete Application End2End Tests

  @End2EndTest
  Scenario: TC_01_Complete the REACT application with Pre Signature Review with Signature Then Submit
    Given User is on FireLight login page for TestCase "End2End_TC_01"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income"
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "95%"
    Then User verifies "Continue" Button should be disable
    Then User clicks date entry error count 16 and verify pages
    Then User verifies Required for Form "Annuity Wizard"
      | Client Data |
      | Beneficiary |
      | Agent       |
    Then User verifies Optional for Form "Annuity Wizard"
      | Payment Details |
      | Riders          |
      | Arrangements    |
      | Allocations     |
      | Suitability     |
    Then User opens "Client Data" Required for Form "Annuity Wizard"
    Then User verifies Page heading "Annuity Wizard" with form name "Client Data" for data entry flow
    Then User selects radio button "Joint" for "Owner Type"
    Then User selects radio button "Yes" for field "Does the owner have existing or pending life insurance or annuity policies?" from section "Replacement Questions"
    Then User selects radio button "Yes" for field "Are there plans to discontinue, reduce, change or replace any existing life insurance or annuity contracts?" from section "Replacement Questions"
    Then User clicks "Next" button
    Then User verifies required fields should show error
      | First Name    |
      | Last Name     |
      | Date of Birth |
      | Zip Code      |
    Then User fills required fields and verify fields error should not display "false"
      | Field         | Value         |
      | First Name    | UserFirstName |
      | Last Name     | UserLastName  |
      | Date of Birth | 21/09/2023    |
      | Zip Code      | 12345         |
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field         | Value        |
      | First Name    | JointOwnerFN |
      | Date of Birth | 21/09/2023   |
    Then User clicks "Next" button
    Then User selects value "1" for field "How many Primary Beneficiaries do you have?"
    Then User selects value "Spouse" for field "Relationship to Owner"
    Then User verifies field error "This is a required field." for field "First Name"
    Then User verifies field error "This is a required field." for field "Last Name"
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User set value "10" for field "Percentage of Proceeds"
    Then User verifies field error "All beneficiary percentage fields must add up to 100%." for field "Percentage of Proceeds"
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User set value "100" for field "Percentage of Proceeds"
    Then User set value "UFirstName" for field "First Name"
    Then User set value "ULastName" for field "Last Name"
    Then User clicks "Next" button
    Then User verifies field error "This field is required. (OFFICE USE ONLY)" for field "First Name"
    Then User verifies field error "This field is required. (OFFICE USE ONLY)" for field "Last Name"
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User fills required fields and verify fields error should not display "false"
      | Field      | Value          |
      | First Name | AgentFirstName |
      | Last Name  | AgentLastName  |
    Then User clicks "Next" button
    Then User verifies Page heading "Annuity Wizard" with form name "Payment Details" for data entry flow
    Then User selects value "Replacement/Transfer/Rollover" for field "Payment Method"
    Then User clicks "Surrendering Company Lookup" button
    Then User verifies dialog window "CRM"
    Then User verifies CRM search output
      | Search Value | Search link                                                               | Company                                       | Company Details                                                                                                             |
      | VOYA         | Voya Retirement Insurance and Annuity Company » Fixed and Indexed Annuity | Voya Retirement Insurance and Annuity Company | \nCedingCarrierID : 17368\nLocationId : 19900\nUniversalLocationId : C000005618\nPhone : 8003695303\nFaxNumber : 5154462498 |
    Then User clicks "Select" button
    Then User opens "Page 1" Optional for Form "Replacement Instruction Page"
    Then User verifies Page heading "Replacement Instruction Page" with form name "Page 1" for data entry flow
    Then User opens "Page 1" Required for Form "Application222"
    Then User verifies Page heading "Application222" with form name "Page 1" for data entry flow
    Then User verifies prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type | Validation Error                            |
      | First Name     | UserFirstName | Owner_FirstName                  | Input        |                                             |
      | Last Name      | UserLastName  | Owner_LastName                   | Input        |                                             |
      | Zip Code       | 12345         | Owner_ResidentialAddress_Zipcode | Input        |                                             |
      | Date of Birth  | 21/09/2023    | JointOwner_DOB                   | Input        |                                             |
      | Contact Number |               | Contract_Number                  | Input        | This is a required field. (OFFICE USE ONLY) |
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User fills required fields and verify fields error should not display "false"
      | Field           | Value          |
      | Contract_Number | 1234567890     |
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User Verifies data entry percentage is "99%"
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User selects value "Illustration" for field "Document Type"
    Then User uploads Document "TestUpload"
    Then User clicks "Upload" button
    Then User verifies "Remove" and "View" link after uploading documents
    Then User clicks "Close" button
    Then User Verifies data entry percentage is "99%"
    Then User opens "Page 4" Required for Form "Application222"
    Then User verifies Page heading "Application222" with form name "Page 4" for data entry flow
    Then User fills required fields and verify fields error should not display "false"
      | Field            | Value          |
      | Agent_FLIDNumber | 12345          |
      | Agent_Commission | 100            |
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field            | Value          |
      | Client_DOB       | 30/03/1990          |
    Then User clicks "Next" button
    Then User Verifies data entry percentage is "100%"
    Then User verifies Optional for Form "Application222"
      | Page 4|
    Then User clicks "Next" button
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User selects check box "Report PDF"
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | Value         |
      | UserFirstName |
      | UserLastName  |
      | 12345         |
      | 21/09/2023    |
    Then User clicks "Continue" button
    Then User clicks "Send" E-Review
    Then User clicks Link "Add Reviewer"
    Then User sets value "Reviewer Deepak"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "dbhati@hexure.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name     | Email Send To                                             | Passcode message                              |
      | Email Requests Sent | An email was sent to Reviewer Deepak at dbhati@hexure.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app
    Then User verifies dialog window "Pending Requests"
    Then User verifies Pending Request dialog details
      | Recipient       | Email Sent To     |
      | Reviewer Deepak | dbhati@hexure.com |
    Then User verifies Pending Request dialog links
      | Send Reminder to Reviewer Deepak         |
      | Send Passcode to Reviewer Deepak`s email |
      | Cancel Request                           |
    Then User clicks Send Reminder to "Send Reminder to" link, message template should show.
    Then User Note down the URL for external link from Message template.
    Then User clicks "Send" button
    Then User opens Menu "Home"
    Then User verifies Application status as "Pending Pre-Submit Review"
    Then User opens Menu "Log Off"
    Then User loads the External Reviewer URL noted in step 72 and login with passcode noted on step69.
    Then User clicks "Review" button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | Value         |
      | UserFirstName |
      | UserLastName  |
      | 12345         |
      | 21/09/2023    |
    Then User verifies Approve, Reject, More Info Buttons are now enabled.
    Then User clicks on Approve, Then on dialog window enter your own comment and click Approve
    Then User verifies Application should be removed from current Queue DSB
    Then User opens Menu "Log Off"
    Given User is on FireLight login page for TestCase "End2End_TC_01"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User open Application "Pre-Submit Review: Approved"
    Then User verifies toast message "Finished 2 of 4 Steps. Please Continue."
    Then User verifies "REVIEW" tab is green tick mark
    Then User verifies "DATA ENTRY" tab is green tick mark
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History
      | Status                        | Status Description                                                                                                                                                                                                                                              |
      | Review Complete               | The review process has completed.                                                                                                                                                                                                                               |
      | Review Approval Email Sent    | A review queue approval email was sent to AUTOUser1_FLADEMO2_AUTO.                                                                                                                                                                                              |
      | Activity Approved             | This application has been processed and approved by the reviewer [Reviewer Deepak] and has been released to the carrier. Please contact the carrier if you have any further questions about the status of this application. Test Comment for AT Lifetime Income |
      | Locked for Review             | Activity was locked to begin the review process.                                                                                                                                                                                                                |
      | Login By External             | 'Reviewer Deepak' is logged in via an external page request for activity 'Pre Submit'.                                                                                                                                                                          |
      | Agent Sent Email to Client    | Agent AutoUser1 sent email via Message Center to client Reviewer Deepak (dbhati@hexure.com) regarding activity AT Lifetime Income                                                                                                                               |
      | E-Approval Request Sent       | 'AutoUser1' has sent e-Approval Request email to 'Reviewer Deepak' at 'dbhati@hexure.com'.                                                                                                                                                                      |
      | Locked for Pre-Submit Review. | Activity locked. Pre-approval signature pending.                                                                                                                                                                                                                |
      | Print Initiated               | Print action was initiated by 'AUTOUser1_FLADEMO2_AUTO'.                                                                                                                                                                                                        |
      | Updates by Agent              | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'                                                                                                                                                                                                                   |
    Then User clicks "Continue" button
    Then User selects "Use E-Signature" button on Signature Tab
    Then User selects "Owner" button on Signature Tab
    Then User selects "Payor" button on Signature Tab
    Then User verifies "Agent : AutoUser1" button should be disabled
    Then User selects "Proceed" button on Signature Tab
    Then User selects "Sign Now" button on Signature Tab
    Then User verifies Agent ID "FLADEMO2_AUTO001"
    Then  User verifies Owner Payor - Client Identification Verification window should be present
    Then User sets value "09876"  for field "ID Number" for To Signature tab
    Then User sets value "OwnerName"  for field "Name" for To Signature tab
    Then User sets value "9876"  for field "Last 4 Digits of SSN/Government ID" for To Signature tab
    Then User sets value "12/31/1999"  for field "Birth Date" for To Signature tab
    Then User sets value "abc@abc.com"  for field "Email Address" for To Signature tab
    Then User selects "Verified" button on Signature Tab
    Then User should be on Owner Initial page
    Then User verifies Initials are required in this document set. message on Owner Initial page
    Then User clicks "Next Page" button 3 times till last page
    Then User clicks initials check box and enters "MR"
    Then User clicks "Ok" on Confirmation Dialog
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 3 times
    Then User should be on page "Capture Electronic Signature"
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies Completed signature
      | Signature Type | Name            | State   |
      | Owner / Payor: | FullName Signer | Arizona |
    Then User selects "Re-Sign" button on Signature Tab
    Then User clicks "Cancel" on Confirmation Dialog
    Then User selects "Agent : AutoUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AutoUser1"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies toast message "Finished 3 of 4 Steps. Please Continue."
    Then User clicks "Continue" button
    Then User clicks "Yes" button
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Signature page
    Then User verifies toast message "To print or view the application, history or documents, click on Other Actions." on Signature page
    Then User verifies toast message "Thank you for your business!" on Signature page
    Then User verifies "FINALIZE" tab is green tick mark
    Then User verifies "SIGNATURES" tab is green tick mark
    Then User clicks on "Other Action" link of data entry met Toast popup
    Then User verifies menu "Unlock" should not be present
    Then User opens Menu "Home"
    Then User verifies Application Status on Recent Activity is "Pending Transmission" or "Complete" now

  @End2EndTest
  Scenario:TC_08_Complete Presale Activity withClient Protection forms and verify next Activity
    Given User is on FireLight login page for TestCase "End2End_TC_08"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Sunil Protection Testing Product"
    Then User selects Optional Forms "Client Protected Wiz with required fields"
    Then User selects Optional Forms "Agent Protected Form"
    Then User selects Optional Forms "Client Protected Form"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "This application has one or more template forms with document tags: [Policy, Electronic Debit Authorization]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User Verifies data entry percentage is "61%"
    Then User verifies "Continue" Button should be disable
    Then User clicks "Expand" button
    Then User verifies Validation error "list" showing all "Client,Agent,Public,Required"
    Then User close menu form
    Then User clicks "dataEntry percentage" button
    Then User clicks "Show All" button
    Then User verifies Validation error "forms" showing all "Client,Agent,Public,Required"
    Then User verifies Client Protected fields are disabled
    Then User Clicks close Icon
    Then User sets values for prefilled form
      | Field              | Value        | data-dataitemid   | Locator Type |
      | Agent First Name   | AgentFName   | Agent_FirstName   | Input        |
      | Agent Last Name    | AgentLName   | Agent_LastName    | Input        |
      | Agent ID Number    | 12345        | Agent_IDNumber    | Input        |
    Then User should be on page "Agent Protected Wiz with required fields"
    Then User clicks "Next" button
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field              | Value        | data-dataitemid   | Locator Type |
      | Insured First Name | InsuredFName | Insured_FirstName | Input        |
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field              | Value        | data-dataitemid   | Locator Type |
      | Owner First Name   | OwnerFName   | Owner_FirstName   | Input        |
      | Owner Last Name    | OwnerLName   | Owner_LastName    | Input        |
    Then User should be on page "Agent Protected Form with required fields"
    Then User clicks "Next" button
    Then User clicks "Next" button
    Then User should be on page "Agent Protected Template Form"
    Then User clicks "State Notice Upload" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Policy" for field "Document Type"
    Then User uploads Document "Sample2"
    Then User clicks "Upload" button
   Then User clicks "Close" button
    Then User "This application has one or more template forms with document tags: [Electronic Debit Authorization]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User verifies "Continue" Button should be disable
    Then User clicks "dataEntry percentage" button
    Then User verifies Validation error "list" showing all "Client,Required"
    Then User Clicks close Icon
    Then User Go to Other Action and Clicks Display Print PDF
    Then User verifies "Application Form" for "Client Protected Template Form" is "Unchecked"
    Then User verifies "Application Form" for "Client Protected Form" is "Unchecked"
    Then User verifies "Application Form" for "Client Protected Form with required fields" is "Unchecked"
    Then User verifies "Application Form" for "Client Protected Template Form" is "Readonly"
    Then User verifies "Application Form" for "Client Protected Form" is "Readonly"
    Then User verifies "Application Form" for "Client Protected Form with required fields" is "Readonly"
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | Public Protected Form with required fields |
      | AgentFName                                 |
      | AgentLName                                 |
      | OwnerFName                                 |
      | OwnerLName                                 |
      | InsuredFName                               |
      | Agent Protected Form with required fields  |
      | Agent Protected Form                       |
      | PDF BOOKMARK SAMPLE                        |
      | Sample Bookmark File                       |
      | Application Validation Report              |
      | Application Name                           |
      | Errors                                     |
      | Reminders                                  |
    Then User Verifies "Client Protected Form" is not present in PDF
    Then User Verifies "Client Protected Form with required fields" is not present in PDF
    Then User Verifies "Client Protected Template Form" is not present in PDF
    Then User verifies pdf document contains 8 pages
    Then User "This application has one or more template forms with document tags: [Electronic Debit Authorization]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User Clicks "Other Action" Button
    Then User Clicks on "Request Client to Fill & Sign"
    Then User enters "insured" details on page
    Then User enters "owner" details on page
    Then User select "owner" checkbox on ReactApp page
    Then User Clicks on "Generate Link Without Email" Button
    And User verifies link is generated and store it
    Then User Clicks "Back to App" Button
    Then Pending request box with "Insured" is displayed on data entry page
    Then Pending request box with "Owner" is displayed on data entry page
    Then User Notes the Passcode for "Insured" on data entry page
    Then User Notes the Passcode for "Owner" on data entry page
    Then User clicks on "Send Reminder to" "Insured" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User navigate to home page
    Then User verifies Application status as "Pending Client Request"
    Then User Log Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "NewrecipientLink"
    Then User Logs in with "ownerPasscode"
    Then User "This application has one or more template forms with document tags: [Electronic Debit Authorization]. Please upload the related documents using Attach Documents." popup showing, Close Popup
    Then User Client View for External Fill app show, Sign Account Opening Button is disabled
    Then User Clicks on Alerts It Should show only Alerts for "Client Protected" forms
    Then User Close Error list
    Then User clicks "Expand" button
    Then User verifies Validation error "list" showing all "Client,Public"
    Then User close menu form
    Then User sets values for prefilled form
      | Field                | Value          | data-dataitemid     | Locator Type |
      | Annuitant First Name | AnnuitantFName | Annuitant_FirstName | Input        |
      | Annuitant Last Name  | AnnuitantLName | Annuitant_LastName  | Input        |
      | Annuitant SSN        | 12345          | Annuitant_SSN       | Input        |
    Then User opens "Page 1" Required for Form "Client Protected Template Form"
    Then User clicks "Voided Check" button on data entry page
    Then User verifies dialog window "Documents"
    Then User verify value is "Electronic Debit Authorization" for field "Document Type"
    Then User uploads Document "Sample"
    Then User clicks "Upload" button
    Then User clicks "Close" button
    Then User opens "Page 1" Required for Form "Client Protected Form with required fields"
    Then User sets values for prefilled form
      | Field       | Value      | data-dataitemid          | Locator Type |
      | Owner Phone | 1234567890 | Owner_Mobile_PhoneNumber | Input        |
      | Owner SSN   | 12345      | Owner_SSN                | Input        |
    Then User Sign Account Opening button is now enable
    Then User Clicks Print
    Then User verifies "Application Form" for "Agent Protected Template Form" is "Unchecked"
    Then User verifies "Application Form" for "Agent Protected Form" is "Unchecked"
    Then User verifies "Application Form" for "Agent Protected Form with required fields" is "Unchecked"
    Then User verifies "Application Form" for "Agent Protected Template Form" is "Readonly"
    Then User verifies "Application Form" for "Agent Protected Form" is "Readonly"
    Then User verifies "Application Form" for "Agent Protected Form with required fields" is "Readonly"
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | Public Protected Form with required fields |
      | AgentFName                                 |
      | AgentLName                                 |
      | InsuredFName                               |
      | Client Protected Form with required fields  |
      | Client Protected Form                       |
      | Application Validation Report              |
      | Application Name                           |
      | Errors                                     |
      | Reminders                                  |
    Then User Verifies "Agent Protected Form" is not present in PDF
    Then User Verifies "Agent Protected Form with required fields" is not present in PDF
    Then User Verifies "Agent Protected Template Form" is not present in PDF
    Then User verifies pdf document contains 9 pages
    Then User Clicks Sign Account Opening, then Lock Activity
    Then User Clicks Sign Activity button
    Then User verify arrow point to "Agent Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User verify arrow point to "Client Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "insuredPasscode"
    Then User Clicks Sign Activity button
    Then User verify arrow point to "Agent Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User verify arrow point to "Client Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User verify arrow point to "Public Protected Form with required fields" form on signature page
    Then User Clicks on Agree Checkbox
    Then User verify arrow point to "Client Protected Form" form on signature page
    Then User Clicks on Agree Checkbox
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Given User is on FireLight login page for TestCase "End2End_TC_08"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks "Continue" button
    Then User selects "Agent : AUTOUser1" button on Signature Tab
    Then User should be on page "Agent Signature Choice for Agent : AUTOUser1"
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verify pop up message displays progress as "2" out of "3" steps on signature page
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User verifies toast message of "Account opening is finished."
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Apply" button
    Then User verifies "new" app is created
    Then User "Data Entry has met the requirements" popup showing, Click on Enter More Data
    Then User verifies prefilled form for Forms Only Application
      | Field            | Value      | data-item-id    | Locator Type |
      | Agent First Name | AgentFName | Agent_FirstName | Input        |
      | Agent Last Name  | AgentLName | Agent_LastName  | Input        |
    Then User clicks "Expand" button
    Then User verifies Validation error "list" showing all "Agent,Public"
    Then User close menu form
    Then User Go to Other Action and Clicks Display Print PDF
    Then User verifies "Application Form" for "Client Protected Template Form" is "Unchecked"
    Then User verifies "Optional Form" for "Client Protected Form" is "Unchecked"
    Then User verifies "Optional Form" for "Agent Protected Form" is "Unchecked"
    Then User verifies "Application Form" for "Client Protected Form with required fields" is "Unchecked"
    Then User verifies "Application Form" for "Client Protected Template Form" is "Readonly"
    Then User verifies "Optional Form" for "Client Protected Form" is "Readonly"
    Then User verifies "Application Form" for "Client Protected Form with required fields" is "Readonly"
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | Public Protected Form with required fields |
      | AgentFName                                 |
      | AgentLName                                 |
      | OwnerFName                                 |
      | OwnerLName                                 |
      | InsuredFName                               |
      | Agent Protected Form with required fields  |
      | PDF BOOKMARK SAMPLE                        |
      | Sample Bookmark File                       |
      | Application Validation Report              |
      | Errors                                     |
      | Reminders                                  |
    Then User Verifies "Client Protected Form" is not present in PDF
    Then User Verifies "Client Protected Form with required fields" is not present in PDF
    Then User Verifies "Client Protected Template Form" is not present in PDF
    Then User verifies pdf document contains 7 pages
    Then User clicks "Back To Application" button
    Then User "Data Entry has met the requirements" popup showing, Click on Enter More Data
    Then User clicks on Linked activity button
    Then User clicks on Linked activity name
    Then User verifies toast message of "Account opening is finished."
    Then User clicks on Close icon on Toast Popup
