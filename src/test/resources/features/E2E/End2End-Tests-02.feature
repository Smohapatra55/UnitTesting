Feature: FireLight_End2End_Tests

  This feature will verify FireLight Complete Application End2End Tests

  @End2EndTest
  Scenario: TC_02_Complete the MVC application with Pre Signature Review with Signature Then Submit
    Given User is on FireLight login page for TestCase "End2End_TC_02"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
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
      | How many transfers do you have? | 3     | Transfers             | Select       |
    Then User clicks "Next Page" button 1 times till last page
    Then User sets values for prefilled form
      | Field            | Value   | data-dataitemid  | Locator Type |
      | Agent First Name | AgentFN | Agent_FirstName  | Input        |
      | Agent Last Name  | AgentLN | Agent_LastName   | Input        |
      | STATE LICENCE #  | 12345   | Agent_FLIDNumber | Input        |
      | PERCENTAGE       | 100     | Agent_Commission | Input        |
    Then User clicks "Next Page" button 1 times till last page
    Then User verifies Optional for Form "Application222"
      | Page 1 |
      | Page 2 |
      | Page 3 |
      | Page 4 |
    Then User opens "Page 1" Required for Form "Fees and Expense Disclosure Sample"
    Then User verifies Page heading "Fees and Expense Disclosure Sample" with form name "Page 1" for data entry flow
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User selects value "Illustration" for field "Select Document Type"
    Then User uploads Document
    Then User clicks "Upload" button
    Then User verifies "Remove" and "View" link after uploading documents
    Then User close the dialog window "Documents"
    Then User verifies Page heading "Fees and Expense Disclosure Sample" with form name "Page 1" for data entry flow
    Then User Enters DOB "30/03/1990"
    Then User Verifies Data Entry Met Toast popup is showing message
    Then User Verifies data entry percentage is "100 %"
    Then User opens Menu "Other Actions  ->Display/Print PDF"
    Then User selects check box "Report PDF"
    Then User clicks "Print Selected Documents" button
    Then User verifies pdf text in "PrintPdf" document
      | UserFirstName |
      | UserLastName  |
      | 03/09/2000    |
      | 98765         |
      | 1234567890    |
    Then User clicks button Back to app
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks "Send request to reviewer" E-Review
    Then User clicks Link "Add Reviewer"
    Then User sets value "DSB"  for field "Reviewer Name" for Send Email To Reviewer page
    Then User selects check box "Reviewer" for Send Email To Reviewer page
    Then User sets value "dbhati@hexure.com"  for field "Reviewer Email" for Send Email To Reviewer page
    Then User clicks Send Email Request and verify Page Email Requests Sent with Message and Passcode
      | Page Name     | Email Send To                                             | Passcode message                              |
      | Email Requests Sent | An email was sent to DSB at dbhati@hexure.com | Please advise all recipients to use Passcode: |
    Then User clicks button Back to app in Email request page
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to DSB         |
      | Send Passcode to DSB's email |
      | Cancel this request                           |
    Then User verifies same Passcode as generated Before
    Then User clicks Send Reminder to "Send Reminder to" link, message template should show.
    Then User Note down the URL for external link from Message template.
    Then User clicks Send button in pending Request
    Then User verifies toast message Alert "Message sent."
    Then User  Verifies current Breadcrumb selected is Review step and Data entry step has green tick mark
    Then User navigates to Home page
    Then User verifies Application status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies pdf text in "DisplayApplication" document
      | UserFirstName |
      | UserLastName  |
      | 12345         |
      | 03/09/2000    |
    Then User Now Verifies Reviewer Documents, Approve, Reject, More Info Buttons are now enabled
    Then User Clicks on Reviewer Documents Button
    Then User Enters some data in Reviewer Document Page
    Then User Clicks on Complete button
    Then User  Clicks Lock and Complete button
    Then User clicks on Approve, Then on dialog window enter your own comment and click Approve
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "End2End_TC_02"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Pre-Submit Review: Approved"
    Then User Clicks Application from Recent Activity
    Then User verifies "REVIEW" tab has green tick mark
    Then User Goes to Other Action, Verifies "Unlock Application" is showing, Now Clicks on History
    Then User On History Dialog verifies few Audits like "Review Complete", "Review Approval Email Sent", "Login By External"
    Then User Closes History Dialog
    Then User Clicks on Continue button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" on signature window
    Then User selects "payer" on signature window
    Then User verifies Procced button Showng and Agent Signer get Disabled
    Then User clicks "Proceed" button on signature page
    Then User Clicks on Send Email Request
    Then User Enters "Signer" Name, Email, SSN, DOB on Request Signature page
    Then User Clicks on Send Email Request Button
    Then User Notes the URL generated and clicks Back to Signer
    Then User Verifies Now all signers 2 have Revoke Request link
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to signername         |
      | Send Passcode to signername's email |
      | Cancel this request                 |
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User verifies Application status as "In Signatures"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with Signer SSN and DOB
    Then User Clicks on Review Documents
    Then User verifies pdf text in "PrintApp" document
      | UserFirstName |
      | UserLastName  |
      | 03/09/2000    |
      | 98765         |
      | 1234567890    |
    Then User Clicks on  Sign Activity
    Then User Performs Initials
    Then User Clicks on Agree Checkbox Three Times
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer's Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User After Signing All Document set page will be on Congratulations screen, Click OK
    Then User is on FireLight login page for TestCase "End2End_TC_02"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"
    Then User Now Navigate to All Activities page
    Then User Verifies Recent application status is "Client Signatures Complete" in All Activities
    Then User Opens application by clicking on view button
    Then User Clicks on Continue button
    Then User selects "agent" signer on signature window
    Then User Clicks on Send Email Request
    Then User enter all required signer details for sending mail on signature window
    Then User Clicks on "Generate Link Without Email" Button
    Then User Notes the Generated URL & Passcode and User Clicks Back to Signer
    Then User Verifies Now signers have Revoke Request link
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup
    Then User verifies Pending Request dialog popup links
      | Send Reminder to SignerColorado        |
      | Send Passcode to SignerColorado's email |
      | Cancel this request                 |
    Then User verifies same Passcode as generated
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User verifies Application status as "In Signatures"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "agentUrl"
    Then User Logs in with "agentPasscode"
    Then User Clicks on  Sign Activity
    Then User Clicks on Agree Checkbox
    Then User Enters Agent Full Name,Agent ID, City Then Perform Signature
    Then User Clicks on I Consent
    Then User After Signing All Document set page will be on Congratulations screen, Click OK
    Then User is on FireLight login page for TestCase "End2End_TC_02"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies Application status as "Signatures Complete"
    Then User open application from recent activity
    Then User Clicks on Continue button
    Then User clicks Yes button
    Then User Verifies Final popup after application submitted with message "Application is finished"

  @End2EndTest
  Scenario: TC_07_Complete data entry on Multiple Activity and verify the Party data on Child Application through Autofill button.
    Given User is on FireLight login page for TestCase "End2End_TC_07"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Multiple Activities" Tab
    Then User selects Jurisdiction "Florida"
    Then User selects Given Product "KOC Multiple Activity USA"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User selects "04" in parties activity dropdown
    Then User clicks on Expand button to open form menu and verify "4" pages for Party demographic Data & "4" pages for Party Medical data
    Then User Close the Form Menu by clicking on Collapse button
    Then User enter Last Name "Amit1", First name "Sathe1", Street Address"M G Road1", City "Jaipur1", State "AL", Zip Code "11111-1111" for Party1
    Then User enter Council Number "11111" on same page. Make sure Red Bubble icon removed on page
    Then User clicks on Next button
    Then User enter Height-Feet "5 ft", height- Inches "5 in", Weight-lbs "58", Total Insurance in Force "70,000"
    Then User enter Primary Care Physician or Health Facility "Dr.Mate"
    Then User clicks on Next button
    Then User enter Last Name "Amit2", First name "Sathe2", Street Address"M G Road2", City "Jaipur2", State "AK", Zip Code "22222-2222" for Party2
    Then User clicks on Next button
    Then User clicks on Next button
    Then User enter Last Name "Amit3", First name "Sathe3", Street Address"M G Road3", City "Jaipur3", State "AK", Zip Code "33333-3333" for Party3
    Then User clicks on Next button
    Then User clicks on Next button
    Then User enter Last Name "Sathe4", First name "Amit4" & Middle Name "Vijay4" for Party4
    Then User clicks on Yes Radio button "Does Party #4 have the same address as Party #1?"
    Then User Open Form menu and click on "Multiple Activities" Wizard
    Then User selects "Application" Type in Dropdown
    Then User click Add activity button
    Then User verifies "Create New Application" window showing
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "KOC 903 Graded Death Benefit Whole Life USA"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then Verifies Multiple Activities tab will Have new Table with recently added application
    Then User verifies New Application Added on Multiple Activities page
    Then User clicks on Create Button on Top it get changed to "Update"
    Then User clicks on Link Icon
    Then User verifies the "Linked Activities" is open & verify the name of linked activity
    Then User clicks on Linked activity name
    Then User verifies Linked child activity is appear & verify the name
    Then User verifies the Last Name, First name Fields are blank initialy
    Then User clicks on custom button Applicant data Auto fill
    Then User verifies party List show names added on demographic party pages
    Then User selects Party 1 name from list
    Then User verifies Last name, First name, Street Address, City, State, Zip Code fields get autofilled for Party1
    Then User verifies Council Number fields get autofilled for Party1
    Then User clicks on Next buttons
    Then USer clicks on Insured Data Auto Fill button
    Then User selects Party 3 name from list
    Then User verifies Last name, First name, Street Address, City, State, Zip Code field get autofilled for Party3
    Then User open Form Menu and click on "Page 1" of 'KOC 903 US Life Insurance Application' form
    Then User verifies "Page 1" of "KOC 903 US Life Insurance Application" is Open
    Then User verifies Applicant & Insured Section have Name fields auto populated
    Then Applicant & owner Last name, First name, street address are auto populated with respective party selected on Page1 & Page2 of application.
    Then User enter some text in First name "AAAA" & last name "BBBB" of Owner Section
    Then User clicks Owner Auto Fill in Owner Section
    Then User selects Party 4 name from list
    Then User verifies Owner First name, last Name is updated with Party4 data, and Street Address, City, State, Zipcode is same as for Party1
