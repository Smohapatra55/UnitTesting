Feature: FireLight_End2End_Tests

  This feature will verify FireLight Complete Application End2End Tests


  @End2EndTest @JenkinsTest
  Scenario: TC_03_Complete Application with Decline Review & Signature then Approve app in Post Submit Review Queue
    Given User is on FireLight login page for TestCase "End2End_TC_03"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Firm Product Wiz and Forms"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks "Decline" E-Review
    Then User verifies message on Electronic Review Declined window
    Then User clicks Ok to decline Electronic Review
    Then User verifies Review step has minus circle
    And  User verifies Signature tab is highlighted now
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies message on Electronic Signatures Declined window
    Then User clicks "Ok" button
    Then User verifies that Now Signature step has minus circle
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User verifies application is "pending transmission" with toast popup
    Then User navigates to Home page
    Then User verifies Application status as "Pending Review"
    Then User clicks "Review Queue" Tab
    Then User selects Queue as "DSB"
    Then User enters App Name in search box then click search Icon
    Then User verifies Application should appear in review queue
    Then User clicks Review Button
    Then User clicks Lock and Review Order
    Then User verifies PDF "DisplayApplication" is generated
    Then User clicks on Approve, Then on dialog window enter your own comment and click Approve
    Then User verifies Application should be removed from current Queue DSB
    Then User clicks on "History Tab" in Left panel
    Then User verifies Application appears in History with comment "Approved by.."
    Then User navigates to "Home page"
    Then User verifies Application Status on Recent Activity is "Complete" now

  @End2EndTest
  Scenario: TC_10_Verify Addendum Generate for React App in Print PDF and Completed Signature for Single Signers with AddenDum Generated
    Given User is on FireLight login page for TestCase "End2End_TC_10"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Addendum Signing"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    And User save the "soft limit signature credentials" generated on data entry page
    Then User clicks "Next" button
    Then User clicks "Next" button
    Then User clicks "Next" button
    And User verify the multilines text is not blank on data entry page
    Then User clicks "Other Actions" button
    Then User click "Display/Print PDF" submenu
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verify generated PDF "PrintPdf" contains addendum on signature page
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User verifies "Owner" under list of required signers section on signature page
    Then User verifies "Insured" under list of required signers section on signature page
    Then User verifies "Annuitant" under list of required signers section on signature page
    Then User verifies "Agent" under list of required signers section on signature page
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verify "Document Set" is set to "SoftLimitSignatureForm3" for "Owner" on signatures page
    Then User verify "Document Set 2" is set to "SoftLimitSignatureForm1" for "Owner" on signatures page
    Then User verify "Initials" is set to "SoftLimitSignatureForm1" for "Owner" on signatures page
    Then User clicks "Continue" button on document sets signature page
    Then User verify Document review window showing "softLimitSignatureForm3" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm3" on signature window
    Then User clicks "Next Page" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm32" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verify "Document Set" is set to "SoftLimitSignatureForm3 - Signed" for "Owner" on signatures page
    Then User clicks "Continue" button on document sets signature page
    Then User verify Document review window showing "softLimitSignatureForm1Initial" on signature window
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User wait for "Document Set" element to display on signature page
    Then User verify "Initials" is set to "SoftLimitSignatureForm1 - Initialed" for "Owner" on signatures page
    Then User clicks "Continue" button on document sets signature page
    Then User verify Document review window showing "softLimitSignatureForm1" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm1" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "annuitant" signer on signature window
    Then User selects "insured" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    And User verify title of page is "Send Email To Signer To Request Signatures"
    Then User enter all required "insured" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    And User save the "email link" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    And User clicks "Close Addendum" button on signature page
    Then User navigates to Home page
    Then User verifies Application status as "In Signatures"
    Then User clicks "Logoff" button on home page
    And User login to email link with "SSN" generated on signature page from home page
    Then User clicks "Review Documents" button on page
    Then User verify generated PDF "PrintApp" contains addendum on signature page
    Then User clicks "Sign Activity" button on page
    Then User verify Document review window showing "softLimitSignatureForm2" on signature window
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User wait for "Acknowledge" element to display on signature page
    Then User wait for "Initials" element to display on signature page
    Then User verify Document review window showing "softLimitSignatureForm22" on signature window
    Then User clicks "Initials" button on signature page
    Then User wait for "Annuitant Insured Signature" element to display on signature page
    Then User verify Document review window showing "softLimitSignatureForm1" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm1" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "softLimitSignatureForm2" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "softLimitSignatureForm22" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm2" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm22" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "softLimitSignatureForm3" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm3" on signature window
    Then User clicks "Next Page" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm32" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for email validations for "insured" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User is on FireLight login page for TestCase "End2End_TC_10"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks "Continue" button
    Then User selects "agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User verify Document review window showing "softLimitSignatureForm2" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm2" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "softLimitSignatureForm22" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify Document review window showing "addendumSoftLimitSignatureForm22" on signature window
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User clicks "Yes" on Confirmation Dialog
    Then User Reload the page
    Then User verifies application is "finished" with toast popup
    Then User clicks "Other Actions" button
    Then User click "Display/Print PDF" submenu
    Then User clicks "Print Selected Documents" button on select documents to print page
    Then User verify generated PDF "PrintPDF" contains addendum on signature page
    And User verify generated PDF displays signature on signature page
    Then User navigates to Home page
    Then User clicks "Logoff" button on home page
    Then User select email with subject "PrintDownloadSignedApplication" on gmail page
    And User login to email link with "SSN" generated on signature page from home page
    And User verify "View All" button exists
    And User verify "Download All" button exists
    And User verify "View" button exists
    And User verify "Download" button exists
    And User verify there are "8" documents available on SSN home page
    And User verify title of page is "Documents for Application" for "Annuitant/Insured"
    And User verify document "SoftLimitSignatureForm1" exists with view and download buttons on SSN home page
    And User verify document "Addendum - SoftLimitSignatureForm1" exists with view and download buttons on SSN home page
    And User verify document "SoftLimitSignatureForm2" exists with view and download buttons on SSN home page
    And User verify document "Addendum - SoftLimitSignatureForm2" exists with view and download buttons on SSN home page
    And User verify document "SoftLimitSignatureForm2 2" exists with view and download buttons on SSN home page
    And User verify document "Addendum - SoftLimitSignatureForm2 2" exists with view and download buttons on SSN home page
    And User verify document "SoftLimitSignatureForm3" exists with view and download buttons on SSN home page
    And User verify document "Addendum - SoftLimitSignatureForm3" exists with view and download buttons on SSN home page
    And User clicks "View All" button on page
    Then User verify generated PDF "DisplayAllDocuments" contains addendum on signature page
    And User verify generated PDF displays signature on signature page
    And User clicks "Download All" button on page
    And User verify all documents are downloaded to system with name "App.pdf"

