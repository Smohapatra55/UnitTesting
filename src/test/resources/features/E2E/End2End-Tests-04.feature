Feature: FireLight_End2End_Tests

  This feature will verify FireLight Complete Application End2End Tests

  @End2EndTest
  Scenario: TC_06_Complete the MVC Application on Distributor using Client Fill Request for data Entry,Signature Complete Post Signature Review- Approve then Submit app.
    Given User is on FireLight login page for TestCase "End2End_TC_06"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Colorado"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Product React UI"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User verifies electronic Signatures option window show
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies message on Electronic Signatures Declined window
    Then User clicks "Ok" button
    Then User verifies Application is in review step
    Then User clicks "Continue" button
    Then User clicks Submit link
    Then User verifies Submit Confirmation Message
    Then User clicks "Ok" on Confirmation Dialog
    Then User Reload the page
    Then User application is "finished" and verify Popup message
    Then User clicks on Other Action Link of Popup message
    Then User verifies Other Action Menu Opens
    Then User click "History" submenu
    Then User verifies "Complete" Audit, and verify other Audits like "E-Signature Process Declined", "Review Complete"
    Then Verifies Application Status as complete

  @End2EndTest
  Scenario: TC_09_Complete React E-Signature with Sign Now & Send Email request for Client Parties ad Agent Signature with Generate Link, then Submit the Application
    Given User is on FireLight login page for TestCase "End2End_TC_09"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Colorado"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Product React UI"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User enters value in field "ApplicantIncome" on investment profile page
    Then User enters value in field "JointApplicantIncome" on investment profile page
    Then User enters value in field "ApplicantNetWorthValue" on investment profile page
    Then User enters value in field "JointApplicantNetWorthValue" on investment profile page
    Then User clicks "Continue" button on signature page
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User verifies "Owner" under list of required signers section on signature page
    Then User verifies "Joint Owner" under list of required signers section on signature page
    Then User verifies "Agent" under list of required signers section on signature page
    Then User selects "owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verify Document review window showing "easySigningForm" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "joint owner" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    And User verify title of page is "Send Email To Joint Owner To Request Signatures"
    Then User enter all required "joint owner" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    And User save the "email link" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    Then User verify "Pending Request" dialog with "email link only" on signature page
    And User clicks "Close" button on signature page
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User verifies Application status as "In Signatures"
    Then User clicks "Logoff" button on home page
    And User login to email link with "SSN" generated on signature page from home page
    And User verify "Review Documents" button exists
    And User verify "Sign Activity" button exists
    And User verify "Contact Agent" button exists
    Then User clicks "Review Documents" button on page
    And User verify generated PDF displays correct data on SSN home page
    And User verify generated PDF displays signature done by first client on SSN home page
    Then User clicks "Sign Activity" button on page
    And User verify "View Activity PDF" button exists
    And User verify "Log Off" button exists
    And User verify "Contact Agent Details" button exists
    Then User verify Document review window showing "easySigningForm" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "joint owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User is on FireLight login page for TestCase "End2End_TC_09"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
    Then User clicks "Continue" button on signature page
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Joint Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "agent" details for sending mail on signature window
    Then User clicks "Generate Link Without Email" button on signature page
    And User save the "email link and passcode" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    And User verify request is sent for "Agent" on signature page
    Then User clicks "Back To Application" button
    Then User verify "Pending Request" dialog with "email link and passcode" on signature page
    And User clicks "Close" button on signature page
    Then User navigates to Home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User verifies Application status as "In Signatures"
    Then User clicks "Logoff" button on home page
    And User login to email link with "passcode" generated on signature page from home page
    Then User clicks "Sign Activity" button on page
    Then User verify Document review window showing "easySigningForm" on signature window
    Then User clicks "Confirm All Documents" button on signature page
    Then User clicks "OK" button on page
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "View Activity PDF" button on signature page
    And User verify generated PDF displays correct data on SSN home page
    And User verify generated PDF displays signature done by first client on SSN home page
    Then User clicks "OK" button on signature page
    Then User is on FireLight login page for TestCase "End2End_TC_09"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User verifies Application status as "Signatures Complete"
    Then User open application from recent activity
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Signatures Complete,Agent E-Signature Approved,In Signatures,E-Signature Link Generated,ESign Later Approval Sent to Agent,Client E-Signature Approved,Client On-Site Signature Approved" on history dialog
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User verifies application is "pending transmission" and verify Popup message
    And User verify "Continue" button is disabled on home page
    Then User navigates to Home page
    Then User verifies Application status as "Complete"


