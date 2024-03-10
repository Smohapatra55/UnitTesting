Feature: FireLight_End2End_Tests

  This feature will verify FireLight Complete Application End2End Tests

  @End2EndTest
  Scenario: TC_04_Complete the Application on Distributor using Client Fill & Sign Request with Document Set, Decline Post Signature Review then Submit app
    Given User is on FireLight login page for TestCase "End2End_TC_04"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Colorado"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Product Doc Set"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Other Action Tab and verify "Request Client to Fill & Sign" option not showing in menu and Showing "Request Client to Fill App" in menu
    Then User Close Other Action by clicking again on OtherAction tab
    Then User Now clicks on Data Entry Percentage, Error Menu list should appear, Click on First Green Office Use only Field "Application222 With Groups for signers/Page 4 - This is a required field. (OFFICE USE ONLY)"
    Then User Reads the validation message for agent required fields "This field is required. (OFFICE USE ONLY)"  and "This is a required field. (OFFICE USE ONLY)" user closes all validations by clicking on Red Bubble Icon
    Then User Now Enters Data in Agent Required fields marked in Green. on "Page 4" of "Application222"
    Then User Now Again clicks on Data Entry Percentage and clicks on Remaining "OFFICE USE ONLY" field in list
    Then User After Reaching "Page 1" verifies the validation messages for any one field, then clicks on Red Bubble Icon to Hide all validation messages
    Then User Enters random value in Contract Number text box
    Then User Now Clicks on Other Action tab
    Then User Clicks on "Request Client to Fill & Sign"
    Then User Keeps the Annuitant as Primary owner enters Details for Both Annuitant & owner
    Then User Now Clicks Send Email Request button
    Then User "Request Sent" Dialog appear with Generated URL for "annuitant", Stores the URL, Verifies the email on dialog box, Then Clicks on OK
    Then Pending request box appears, User verifies two pending request for signers
    Then User Notes the Passcode for both Annuitant & Owner both
    Then For Owner(Secondary Signer) User gets the URL from Message template by clicking Send Reminder to Owner
    Then User goes to Home page
    Then User Verifies Application Status as "Pending Client Request"
    Then User Log Off from current Application
    Then User Loads the URL generated previously for "receipantLink(url)"
    Then User on External Login page have two for Login SSN,DOB or Passcode
    Then User Logs in with Passcode
    Then User Verifies the Form menu having two Wizards & Form with Red Exclamation mark on some pages
    Then User Clicks on Client Data Page
    Then User Clicks on Individual Radio button, Clicks on No for question Annuitant same as owner then clicks Non Qualified, Clicks Yes on Replacement Questions
    Then User Clicks on Next Button
    Then User checks Current page is "Owner"
    Then User Enters Owner First name, last name & Date of Birth Enter Zipcode
    Then User Clicks on Alerts on top, it will show validation error list, Click on list having "Annuity Wizard/Beneficiary" text
    Then User Enters "1" in Beneficiary dropdown, then Updates fields Relationship to owner "Spouse", Percentage of Proceeds "100", Beneficiary First name & Last Name
    Then User Clicks Next Button for Agent Page, Verify Agent First Name & Last name field is Pre Filled
    Then User Clicks Next for Payment Details Page
    Then User Selects "Replacement/Transfer/Rollover" in Payment Method dropdown
    Then User Now Navigates to Page 1 of Fees & Expense Disclosure sample from Form menu
    Then Enter DOB on Client Information section
    Then User verifies Alerts tab has green tick now. & Sign Application Button is enabled
    Then User Clicks on Attach Documents tab, Selects "Other" in Document Type & uploads any PDF
    Then User Closes Documents Window
    Then User Now Clicks on Print Tab
    Then User Gets Print PDF and Verify the Content in PDF (Owner Name Agent Name ect)
    Then User Clicks On Sign Application then Clicks Lock Activity
    Then User Clicks Review Documents and verify Generated PDF is same as generated before
    Then User Clicks Sign Activity button
    Then User Verifies Document Set window has text "Document Sets to be Signed by Annuitant"
    Then User Verifies Page has 2 document sets for Annuitant, Get the Documents name for each documents need to be identify in next step
    Then User Clicks Continue Button
    Then User Checks First Document Set should have same forms as showing on Document Set window
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User Again Clicks on Continue
    Then Now it will show as document to review as shown on Document Set 2 window
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then Click OK on Congratulations screen. then close the browser
    Then User Loads Secondary Signer URL
    Then User Logs in With SSN and DOB
    Then User Clicks on Review Documents, Verifies Generated PDF has data entry and Signatures done by Primary Signer
    Then User Clicks on  Sign Activity
    Then User Verifies Forms Name in Document Set for each Doc set type and verifies at the time of document review
    Then User Clicks on Continue
    Then User Performs Initials
    Then User Clicks on Continue
    Then User on Document Set 1
    Then User Clicks on Agree Checkbox
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User Clicks on Continue
    Then User Follows the same process for remaining Document Set as done in Document Set 1
    Then User After Signing All Document set page will be on Congratulations screen, Click OK
    Then User is on FireLight login page for TestCase "End2End_TC_04"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User Clicks Application from Recent Activity
    Then User Verifies Popup message as "Finished 1 of 4 Steps. Agent signatures are needed"
    Then User Clicks Continue
    Then User Selects Agent Signer
    Then User Clicks Sign Now
    Then User Clicks Agree Document Checkbox
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User Performs Signature and Clicks I Consent
    Then User Goes to Other Action, Verifies "Unlock Application" is showing, Now Clicks on History
    Then User On History Dialog verifies few Audits like "Signatures Complete ", "Agent On-Site Signature Approved", "Client E-Signature Approved" (2 times), "Login By External"
    Then User Closes History Dialog
    Then User Clicks Continue
    Then User Clicks on Request Review
    Then User Clicks on Decline E-Review
    Then User Clicks OK
    Then User Verifies Data Entry, Signatures tab has green tick and Review tab has minus circle
    Then User Clicks on Continue when app is in Finalize step
    Then User Clicks on "yes" on confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is finished"
    Then User Clicks on Other Action link in popup and verify "Unlock Option" not showing in Other Action Menu
    Then User Navigates to Home Page
    Then User Verifies Application Status as "Complete"

  @End2EndTest
  Scenario: TC_05_Complete the MVC Application on Distributor using Client Fill Request for data Entry,Signature Complete Post Signature Review- Approve then Submit app
    Given User is on FireLight login page for TestCase "End2End_TC_05"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Colorado"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Other Action Tab and verify "Request Client to Fill App" option Showing
    Then User "Data Entry has met the requirements" popup showing, Click on Enter More Data
    Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Joint Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User Clicks Send Email request Button
    Then User Notes the URL generated and clicks Back to App
    Then Pending Request popup should appear for Joint Owner User verifies the three links exist Send Email, Send Passcode, Cancel link on pending Request Dialog
    Then User Notes the Passcode from Pending Request dialog
    Then User Navigates to Home page and verifies application status as "Pending Client Request"
    Then User Logs Off from current Application
    Then User Loads external link as generated and Login with passcode
    Then User Enters any text Applicant , Joint Applicant Grid, and select any percentage values in any dropdowns showing on page
    Then User Clicks on DisplayPrint PDF, verifies the entered text in PDF
    Then User Clicks on Attach Document and Upload any document on Documents page
    Then User Closes Documents window
    Then User Clicks CompleteLog off Tab
    Then User Clicks on Submit and log off
    Then User is on FireLight login page for TestCase "End2End_TC_05"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User Clicks Application from Recent Activity
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User verifies fields updated by external clients showing on Application
    Then User Clicks on Continue button
    Then User clicks on Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" on signature window
    Then User selects "joint owner" on signature window
    Then User clicks "Proceed" button on signature page
    Then User Clicks on Send Email Request
    Then User Enters "Signer" Name, Email, SSN, DOB on Request Signature page
    Then User Clicks on "Generate Link Without Email" Button
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User selects "agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required signer details for sending mail on signature window
    Then User Clicks on Send Email Request
    Then User Notes the Generated URL & Passcode and User Clicks Back to Signer
    Then User Verifies Now all signers 3 have Revoke Request link
    Then User Clicks Back to Application
    Then User Verifies Pending Request Dialog open and it has two Pending Request one for client & one for Agent, Notes down the Passcodes for agent Request
    Then User navigates to Home page
    Then User clicks on Ok button
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User Clicks Sign Activity button
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name, City Then Perform Signature
    Then User Clicks on I Consent
    Then User After Signing All Document set page will be on Congratulations screen, Click OK
    Then User Loads the URL generated previously for "agentUrl"
    Then User Logs in with "agentPasscode"
    Then User Clicks Sign Activity button
    Then User Clicks Agree Document Checkbox
    Then User Enters Agent Full Name,Agent ID, City Then Perform Signature
    Then User Clicks on I Consent
    Then User After Signing All Document set page will be on Congratulations screen, Click OK
    Then User is on FireLight login page for TestCase "End2End_TC_05"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User Verifies Application Status as "Signatures Complete"
    Then User Clicks Application from Recent Activity
    Then User Clicks on Continue button
    Then User Clicks on Request Review
    Then User clicks "Send request to reviewer" E-Review
    Then User Clicks on Add to Reviewer link
    Then User Updates Reviewer Name, Email & Click on Checkbox
    Then User Clicks on Send Email Request
    Then User Clicks Back to App
    Then User On Pending Request Dialog Notes the Reviewer Passcode
    Then User Gets the URL by Clicking Send Reminder link
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Pre-Submit Review"
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User Logs in with "reviewerPasscode"
    Then User Clicks on Application PDF Link and verify app data and signatures done by all signers
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User Verifies Opened pdf is same as generated before
    Then User Clicks on Approve, then Click Approve on Approve Activity Dialog
    Then User Logs Off from current Application
    Then User is on FireLight login page for TestCase "End2End_TC_05"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User verifies Application status as "Pending Review"
    Then User Clicks Application from Recent Activity
    Then User Verifies Final popup after application submitted with message "Application is pending transmission"
    Then User navigates to Home page
    Then User clicks "Review Queue" Tab
    Then User Selects Queue RQ
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User Now Clicks Reject Button, then Clicks Reject on Reject Activity Dialog
    Then User verifies Application should not appear in review queue page
    Then User clicks on "History Tab" in Left panel
    Then User verifies Application appears in History with comment "Rejected by.." for Reject
    Then User navigates to Home page from review Queue page
    Then User verifies Application Status on Recent Activity is "Review: Declined" now
    Then User Clicks Application from Recent Activity
    Then User Verifies Final popup after application submitted with message "This submitted application has been rejected by the reviewer and was not released to the carrier."
    Then User verifies Application is still in Finalize mode with Disabled Finished Tab.

