Feature: FireLight_Regression_EsignHP1_MVC_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_001_Verify Contact Agent dialog displays properly in external Request Client to Fill App
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Contact Agent _Fill and Sign" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98 %"
    Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
    Then User Verifies "Subject" is Read Only
    Then User Verifies "Message" is Read Only
    Then User Verifies "Recipient Name" is not Read Only
    Then User Selects the Signer Type as "Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User Clicks Send Email request Button
    And User save the "email link" generated on signature page
    And User Clicks Back to App
    Then Pending request box with "Owner" is displayed on data entry page
    Then Pending request box shows "reviewerName" "receipantEmail" is displayed on data entry page
    And User verifies "Passcode" is displayed and store it
    And User clicks "Close" button on signature page
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Client Request"
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    And User login to email link with "SSN" generated on signature page from home page
    Then User Verifies Two field appears "Next Page" and "Previous Page"
    Then User clicks "Next Page" button 1 times till last page
    Then User clicks "Previous Page" button 1 times till last page
    Then User verifies Required for Form "Contact Agent Fill and Sign"
      | Page 1 |
    Then User verifies Optional for Form "Contact Agent Fill and Sign"
      | Page 2 |
      | Page 3 |
      | Page 4 |
    Then User sets values for prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type |
      | First Name     | UserFirstName | Owner_FirstName                  | Input        |
      | Last Name      | UserLastName  | Owner_LastName                   | Input        |
      | SSN            | 123-12-1234   | Owner_SSN                        | Input        |
    Then User Clicks "Contact Agent" Button
    Then User verifies "FromUserName" TextBox value as "reviewerName"
    Then User verifies "FromEmail" TextBox value as "receipantEmail"
    Then User verifies "ToUserName" TextBox value as "agentName"
    Then User verifies "ToEmail" TextBox value as "agentEmail"
    Then User verifies "Subject" TextBox value as "Question about the activity"
    Then User clicks on "Cancel" link
    Then User Clicks "Contact Agent" Button
    Then User Add some text to the Message body "Customized Message" and Click on Send button
    Then User verifies "Alert" popup box appeared
    Then User verify error message "Message sent." on signature page
    Then User clicks on "Ok Popup" link
    Then User Verifies Message Popup is not Displaying
    Then User Now Click on Complete Log Off button
    Then User Clicks on Submit and logoff button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Pending Client Request,External Signer Emailed Agent,Client Request Complete," on history dialog
    And User verify audit entries contains "Client reviewerName sent email to agent agentName (agentEmail) with questions in external signing activity newProductName." with variables "reviewerName,agentName,agentEmail,newProductName" on history dialog
    And User verify audit entries contains "Request to complete activity for `newProductName` was fulfilled by `reviewerName`." with variables "reviewerName,newProductName" on history dialog
    Then User Verifies Continue button Enabled

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_003_Verify Allow Blank Jurisdiction Flag when Set to True for MVC app for ESign Multi Signer Sign Now
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_003"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Blank Jurisdiction Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "Data Entry has met the requirements" popup showing
    Then User verifies prefilled form for Forms Only Application
      | Field            | Value      | data-item-id    | Locator Type |
      | Blank Jurisdiction | True | FLI_SIGNING_ALLOWBLANK_JURISDICTION | Input        |
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify value is "Alabama" for field "ID Issue Jurisdiction"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verify Document review window showing "form3DSB" on signature window
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User Verifies value "" for field "State"
    Then User selects value "Costa Rica" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verify Document review window showing "form3DSB" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify value is "" for field "State"
    Then User enter all required details for "joint owner" on capture electronic signature window
    Then User selects value "Costa Rica" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button
    Then User clicks "OK" on Confirmation Dialog
    Then User Refresh the Page
    Then User application is "finished" and verify Popup message
    Then User clicks "Close" button on signature page

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_004_Verify Allow Blank Jurisdiction Flag when Set to False or blank for React app for ESign Multi Signer Sign Now
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Ohio"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Jurisdiction1" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on close Popup on DataEntry Page
    Then User clicks "Next" button
    Then User verify "FLI_SIGNING_ALLOWBLANK_JURISDICTION" is set to ""
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify value is "Ohio" for field "ID Issue Jurisdiction"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verify Document review window showing "form3DSB" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify value is "Ohio" for field "State"
    Then User clicks "Cancel" button on signature page
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User clicks on close Popup on DataEntry Page
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Next" button
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid                     | Locator Type |
      | Blank Jurisdiction | False      | FLI_SIGNING_ALLOWBLANK_JURISDICTION | Input        |
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify value is "Ohio" for field "ID Issue Jurisdiction"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verify Document review window showing "form3DSB" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify value is "Ohio" for field "State"
    Then User selects value "Costa Rica" for field "State"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Annuitant" under completed signatures section with "Re-Sign" button on signature page

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_005_Verify Allow Blank Jurisdiction Flag when Set to True in ESign for PreSale Activity and Child app
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Need Determination Signature" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on close Popup on DataEntry Page
    Then User clicks "Next" button
    Then User verify "FLI_SIGNING_ALLOWBLANK_JURISDICTION" is set to "True"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "annuitant" details for sending mail on signature window
    Then User clicks "Generate Link Without Email" button on signature page
    And User save the "email link and passcode" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    And User verify request is sent for "Annuitant" on signature page
    Then User clicks "Back To Application" button
    Then User clicks on close Popup on DataEntry Page
    Then Pending request box with "Annuitant" is displayed on data entry page
    And User clicks "Close" button
    Then User navigates to Home page
    Then User clicks "Logoff" button on home page
    Then User should Logoff from the External page and Thank you for using our application page should display
    And User login to email link with "passcode" generated on signature page from home page
    Then User clicks "Sign Activity" button on page
    Then User verify Document review window showing "form3DSB" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify value is "" for field "State"
    Then User enter all required details for "annuitant" on capture electronic signature window
    Then User selects value "Costa Rica" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "In Signatures"
    Then User open application from recent activity
    Then User clicks "Continue" button
    Then User selects "Joint Owner" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify value is "Alabama" for field "ID Issue Jurisdiction"
    Then User Selects "Resident Alien ID" option in "IdentificationType" Dropdown
    Then User Selects "Togo" option in "CountryName" Dropdown
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verify Document review window showing "form3DSB" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify value is "" for field "State"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User selects value "California" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "Agree" button on signature page
    Then User verify value is "" for field "State"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User selects value "Florida" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks on Close icon on Toast Popup
    Then User Clicks on Continue button
    Then User verifies dialog window "Confirmation Dialog"
    Then User clicks "Yes" button
    Then User Verifies Final popup after application submitted with message "Needs determination is finished."
    Then User clicks on Close icon on Toast Popup
    Then User Verifies "Apply" button Enabled
    Then User clicks "Apply" button
    Then User verifies "Create New Application" window showing
    Then User selects Given Product "Signing Jurisdiction1"
    Then User clicks "Create" button
    Then User clicks on Create button on Rename window
    Then User clicks on close Popup on DataEntry Page
    Then User clicks "Next" button
    Then User verify "FLI_SIGNING_ALLOWBLANK_JURISDICTION" is set to "True"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5555" in TextBox "ID"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User verify error message "cautionMessageJSON" on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User verify Document review window showing "form3DSB" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify value is "" for field "State"
    Then User enter all required details for "annuitant" on capture electronic signature window
    Then User selects value "Costa Rica" for field "State"
    Then User clicks "I Decline" button on signature page
    Then User Add some text to the Message body "I don't want to sign so.." and Click on Send button
    Then User should be on page "Declined Signature"
    Then User verify "declined" message on signature page
    Then User Clicks Back to Application
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_006_Verify State Signing Error attempts for MVC App along with Blank Signing Jurisdiction E-Sign with Document set.
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_006"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Invalid Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User sets values for prefilled form
      | Field              | Value      | data-dataitemid                     | Locator Type |
      | Blank Jurisdiction | True       | FLI_SIGNING_ALLOWBLANK_JURISDICTION | Input        |
      | Signature Field    | True       | Signature Field                     | Input        |
    Then User verifies "Owner_Signature3" is enabled
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify value is "Arizona" for field "ID Issue Jurisdiction"
    Then User Selects "Colorado" option in "ID Issue Jurisdiction" Dropdown
    Then User Enters "5555" in TextBox "ID"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User verify error message "cautionMessageJSON" on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User verify Document review window showing "DSBSigners" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify value is "" for field "State"
    Then User enter all required details for "annuitant" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then user Verifies the Error Message "State is required." for "State"
    Then User selects value "Guam" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies "Annuitant" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5556" in TextBox "ID"
    Then User Enters "ShibaJO" in TextBox "ToName"
    Then User Enters "9877" in TextBox "SSN"
    Then User Enters "09081998" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User verify error message "cautionMessageJSON" on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User verify Document review window showing "DSBSigners" on signature window
    Then User clicks "Agree" button on signature page
    Then User verify value is "" for field "State"
    Then User selects value "Delaware" for field "State"
    Then User enter all required details for "joint owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Guam" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Guam" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "Cancel" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5556" in TextBox "ID"
    Then User Enters "ShibaJO" in TextBox "ToName"
    Then User Enters "9877" in TextBox "SSN"
    Then User Enters "09081998" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User verify error message "cautionMessageJSON" on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User verify Document review window showing "DSBSigners" on signature window
    Then User clicks "Agree" button on signature page
    Then User selects value "Guam" for field "State"
    Then User enter all required details for "joint owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "Cancel" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5556" in TextBox "ID"
    Then User Enters "ShibaJO" in TextBox "ToName"
    Then User Enters "9877" in TextBox "SSN"
    Then User Enters "09081998" in TextBox "BirthDate"
    Then User Enters "vkapil@hexure.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then User verify Document review window showing "DSBSigners" on signature window
    Then User clicks "Agree" button on signature page
    Then User selects value "Hawaii" for field "State"
    Then User enter all required details for "joint owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Arizona" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User clicks "Agree" button on signature page
    Then User selects value "Idaho" for field "State"
    Then User enter all required details for "joint owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The signing jurisdiction selected does not match the activity jurisdiction. Please contact your agent to review jurisdiction details."
    Then User application is "incomplete" and verify Popup message
    Then User Clicks "Close pending review request" Button
    Then User clicks "Other Actions" button
    Then User verify option "Unlock Application" is "not shown" in other actions menu
    Then User verify option "Copy Activity" is "shown" in other actions menu
    Then User click "History" submenu
    And User verify audit entries contains "Signature Submission Invalid,Signing Ceremony - Jurisdiction Attempts Exceeded,Signature jurisdiction exceeded the maximum number of acceptable attempts. Activity is no longer active." on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "In Signatures,Signing Ceremony - Invalid Jurisdiction,Signing jurisdiction selected 'Idaho' does not match the activity jurisdiction." on history dialog
    Then User navigates to Home page
    Then User Verifies Application Status as "Signature Submission Invalid"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Verifies Message "Signing Ceremony - Jurisdiction Attempts Exceeded"
    Then User Verifies Recent application status is "Signature Submission Invalid" in All Activities
    Then User Clicks on Button "Copy" on AllActivities
    Then User clicks "Copy As Is" button
    Then User clicks "ok" on Confirmation Dialog
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User Verifies Continue button Enabled

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_007_Verify State Signing Error attempts for React UI App For Client to Fill & Sign Request
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_007"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alaska"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV PDF Link" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User Verifies data entry percentage is "100%"
    Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill & Sign" and title should be "Request Clients to Complete Filling and Signing Application"
    Then User selects primary user as "Owner"
    Then User enters "Owner" details on page
    Then User enters "JointOwner" details on page
    Then User remove "annuitant" details on page
    Then User remove "owner 2" details on page
    Then User Clicks Send Email request Button
    Then User verifies data "Ok Confirmation"
    Then User Notes the URL generated in dialog box
    Then User clicks Ok popup button
    Then Pending request box with "Owner" is displayed on data entry page
    Then Pending request box with "Joint Owner" is displayed on data entry page
    Then User clicks on "Send Reminder to" "Joint Owner" link on data entry page
    Then User Note down the URL for external link from Message template.
    Then User clicks "Cancel" button
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Login to External Link for "Primary Owner"
    Then User Clicks On Sign Application then Clicks Lock Activity
    Then User clicks "Sign Activity" button on page
    Then User clicks "Continue" button on document sets signature page
    Then User clicks "Agree" button on signature page
    Then User verify value is "Alaska" for field "State"
    Then User selects value "Alabama" for field "State"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Alaska" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User clicks "Continue" button on document sets signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User selects value "Guam" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The signing jurisdiction selected does not match the activity jurisdiction. Please contact your agent to review jurisdiction details."
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "reviewerUrl"
    Then User verify "InvalidRequestHeader" message on signature page
    Then User verify "InvalidRequestMessage" message on signature page
    Then User verify "InvalidRequestAgentMessage" message on signature page
    Then User delete all the cookies from browser
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Signature Submission Invalid"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Verifies Message "Signing Ceremony - Jurisdiction Attempts Exceeded"
    Then User Verifies Recent application status is "Signature Submission Invalid" in All Activities
    Then User clicks on the status of application
    And User verify audit entries contains "Signature Submission Invalid,Signing Ceremony - Jurisdiction Attempts Exceeded,Signature jurisdiction exceeded the maximum number of acceptable attempts. Activity is no longer active." on history dialog
    Then User clicks on the status of application
    And User verify audit entries contains "In Signatures,Signing Ceremony - Invalid Jurisdiction,Signing jurisdiction selected 'Guam' does not match the activity jurisdiction." on history dialog
    Then User Opens application by clicking on view button
    Then User verifies toast message of "Activity is incomplete and no longer available for submission due to errors in the signing ceremony."
    Then User verifies toast message of "Please create a new activity or copy to restart the signing ceremony and continue with the submission process."
    Then User verifies application is "incomplete" with toast popup
    Then User verify "Continue" button is disabled on home page
    Then User clicks "Other Actions" button
    Then User verify option "Unlock Application" is "not shown" in other actions menu
    Then User verify option "Copy Activity" is "shown" in other actions menu
    Then User click "Copy Activity" submenu
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on Close icon on Toast Popup
    Then User Verifies data entry percentage is "100%"
    Then User Verifies Continue button Enabled
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Data Entry,Activity Copied As Is,Activity was copied as is from" on history dialog
    And User verify audit entries does not contain "Signing Ceremony - Jurisdiction Attempts Exceeded,Signing Ceremony - Invalid Jurisdiction" on history dialog

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_009_Verify Invalid Signature Submission for E-Sign Generate Link when Passcode Validation is enabled.
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signing Invalid Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required details for "email" with client authentication on signature window
    Then User clicks "Generate Link Without Email" button on signature page
    And User save the "email link and passcode" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    And User verify request is sent for "Annuitant" on signature page
    Then User selects "Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required details for "email" with client authentication on signature window
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User clicks "Back To Application" button
    Then User verifies dialog window "Pending Request" popup
    Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
    And User login to email link with "passcode" generated on signature page from home page
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User verify value is "Alabama" for field "State"
    Then User enter all required details for "annuitant" on capture electronic signature window
    Then User selects value "Ohio" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Alabama" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "annuitant" on capture electronic signature window
    Then User clicks "I Consent" button on signature page
    Then User verify error message "A signature capture is required. Please sign using a mouse, your finger, or a stylus." on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User selects value "Alaska" for field "State"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The signing jurisdiction selected does not match the activity jurisdiction. Please contact your agent to review jurisdiction details."
    And User verify "thankYou" message on signature page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User Verifies Application Status as "Signature Submission Invalid"
    Then User open application from recent activity
    Then User application is "incomplete" and verify Popup message
    Then User Clicks "Close pending review request" Button
    Then User Verifies Continue button is disabled
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Signature Submission Invalid,Signing Ceremony - Jurisdiction Attempts Exceeded,Signature jurisdiction exceeded the maximum number of acceptable attempts. Activity is no longer active." on history dialog
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "In Signatures,Signing Ceremony - Invalid Jurisdiction,Signing jurisdiction selected 'Alaska' does not match the activity jurisdiction." on history dialog

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_010_Verify unlimited wrong Jurisdiction attempts when State Signing Error Attempts set to 0 in E-Sign
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_010"
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "State Signing Error" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Annuitant" signer on signature window
    Then User selects "Insured" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify value is "Alabama" for field "ID Issue Jurisdiction"
    Then User Selects "Arkansas" option in "ID Issue Jurisdiction" Dropdown
    Then User Enters "5555" in TextBox "ID"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User Enters "vkapil@hexure.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then User clicks "Agree" button on signature page
    Then User verify value is "Alabama" for field "State"
    Then User enter all required details for "annuitant" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User selects value "California" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Colorado" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Connecticut" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Costa Rica" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Delaware" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Alabama" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User clicks "Agree" button on signature page
    Then User verify value is "Alabama" for field "State"
    Then User enter all required details for "insured" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User selects value "California" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Alabama" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies "Annuitant" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Insured" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "owner" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup
    Then User Logs Off from the current Application and clicks "ok" on Confirmation Dialog
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with Signer SSN and DOB
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User verify value is "Alabama" for field "State"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User selects value "Illinois" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User clicks "I Consent" button on signature page
    Then User verifies toast message Alert "The jurisdiction in which you are signing must match the activity jurisdiction."
    Then User selects value "Alabama" for field "State"
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User Clicks "Close pending review request" Button
    Then User Verifies Continue button Enabled
    Then User clicks "Other Actions" button
    Then User Verifies "Unlock" is enabled in Other Action
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                            | Status Description                   |
      | Client E-Signature Approved       | was signed by                        |
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "In Signatures,Signing Ceremony - Invalid Jurisdiction,Signing jurisdiction selected 'Illinois' does not match the activity jurisdiction." on history dialog

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_016_Verify Decline Signature From External Agent Signing Request
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_016"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "Agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User verifies "Subject" is "readonly" field
    Then User verifies "Message" is "readonly" field
    Then User Verifies Your name TextBox has "agentName"
    Then User Verifies Your Email TextBox has "agentEmail"
    Then User Clears the TextBox"Your Name"
    Then User Clears the TextBox"Your Email"
    Then User clicks "Send Email Request" button on signature page
    Then user Verifies the Error Message "Name is required." for "ToName"
    Then user Verifies the Error Message "Email is required." for "FromEmail"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User clicks "Send Email Request" button on signature page
    Then user Verifies the Error Message "Email is required." for "FromEmail"
    Then User Enters "vkapil@hexure.com" in TextBox "FromEmail"
    Then User clicks "Generate Link Without Email" button on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Revoke Request" for "Agent : Deep05" button on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User selects "Agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then user Verifies the Error Message "Name is required." for "ToName"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "vkapil@hexure.com" in TextBox "ToEmail"
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User selects "Producer" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "ShibaProducer" in TextBox "ToName"
    Then User Enters "vkapilP@hexure.com" in TextBox "ToEmail"
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User clicks "Back To Application" button
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
    Then User store "Passcode" for "Producer"
    Then User clicks "Close" button
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Logs in with "producerPasscode"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "Clear Signature" button on signature page
    Then User clicks "I Decline" button on signature page
    Then User should be on page "Declined Signature"
    Then User verify "DeclinedMessage" message on signature page
    Then User clicks "Exit" button
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User verify "InvalidRequestMessage" message on signature page
    Then User verify "InvalidRequestMessage1" message on signature page
    Then User delete all the cookies from browser
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "In Signatures,Agent E-Signature Declined,has declined to sign the application" on history dialog

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_015_Verify Overall Send Email Request functionality for Different Agent Signer types
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_015"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User verify page title is "Electronic Signature Choices"
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "Agent" signer on signature window
    Then User should be on page "Agent Signature Choice for Agent : Deep05"
    Then User verify error message "Please indicate below the method you would like to use to obtain the agent signature." on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Your name TextBox has "agentName"
    Then User Verifies Your Email TextBox has "agentEmail"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "vkapil@hexure.com" in TextBox "ToEmail"
    Then User clicks "Send Email Request" button on signature page
    And User save the "email link" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User verify "Revoke Request" for "Agent : Deep05" button on signature page
    Then User clicks "Revoke Request" for "Agent : Deep05" button on signature page
    Then User verify error message "Are you sure you want to cancel this request?" on signature page
    Then User clicks "cancel" on Confirmation Dialog
    Then User verify "Revoke Request" for "Agent : Deep05" button on signature page
    Then User selects "Agent 2" signer on signature window
    Then User should be on page "Agent Signature Choice for Agent 2"
    Then User verify error message "Please indicate below the method you would like to use to obtain the agent signature." on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "ShibaAgent2" in TextBox "ToName"
    Then User Enters "vkapil2@hexure.com" in TextBox "ToEmail"
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the URL generated and clicks Back to App
    Then User verify "Revoke Request" for "Agent 2" button on signature page
    Then User verify "Revoke Request" for "Agent : Deep05" button on signature page
    Then User selects "Agent 3" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "ShibaAgent3" in TextBox "ToName"
    Then User Enters "vkapil3@hexure.com" in TextBox "ToEmail"
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User verify "Revoke Request" for "Agent 3" button on signature page
    Then User verify "Revoke Request" for "Agent 2" button on signature page
    Then User verify "Revoke Request" for "Agent : Deep05" button on signature page
    Then User selects "Producer" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "ShibaProducer" in TextBox "ToName"
    Then User Enters "vkapilP@hexure.com" in TextBox "ToEmail"
    Then User clicks "Send Email Request" button on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User verify "Revoke Request" for "Producer" button on signature page
    Then User clicks "Revoke Request" for "Producer" button on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User verify "no Revoke Request" for "Producer" button on signature page
    Then User verify "Revoke Request" for "Agent 3" button on signature page
    Then User verify "Revoke Request" for "Agent 2" button on signature page
    Then User verify "Revoke Request" for "Agent : Deep05" button on signature page
    Then User selects "Producer" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User clicks "Cancel" button
    Then User should be on page "List of Required Signers for AppName"
    Then User verify "no Revoke Request" for "Producer" button on signature page
    Then User selects "Producer" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Confirm All Documents" button on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Producer" under completed signatures section with "Re-Sign" button on signature page
    Then User clicks "Back To Application" button
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
    Then Pending request box with "Agent 2" is displayed on data entry page
    Then Pending request box with "Agent 3" is displayed on data entry page
    Then Pending request box with "Agent" is displayed on data entry page
    Then Pending request box with "Producer" is not displayed on data entry page
    Then User store "Passcode" for "Agent 2"
    Then User store "Passcode" for "Agent 3"
    Then User store "Passcode" for "Agent"
    And User clicks "Close" button
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Agent On-Site Signature Approved,Request Canceled,E-Signature Request Sent,E-Signature Link Generated" on history dialog
    Then User clicks "Other Actions" button
    Then User click "Requests" submenu
    Then User verify 3 requests are displayed on requests page
    Then User verify "" requests for "Agent 2" is displayed on requests page
    Then User verify "" requests for "Agent 3" is displayed on requests page
    Then User verify "" requests for "Agent" is displayed on requests page
#    Then User verify "Complete" requests for "Signer" is displayed on requests page
#    Then User verifies Request statuses in All activities
#      | Signature Request Sent to Agent    |
#      | Signature Request Sent to Agent |
#      | Signature Request Sent to Agent  |
#      | Agent On-Site Signature  |
#    And User clicks "Close" button
#    Then User Clicks on Button "Close"
#    Then User clicks "Other Actions" button
#    Then User click "Requests" submenu
    Then User clicks cancel button for "Agent 3" on requests page
    Then User clicks "ok" on Confirmation Dialog
    Then User clicks "Other Actions" button
    Then User click "Requests" submenu
    Then User verify "No" requests for "Agent 3" is displayed on requests page
    Then User Refresh the Page
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
#    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
#    Then Pending request box with "Agent 2" is displayed on data entry page
#    Then Pending request box with "Agent 3" is not displayed on data entry page
    Then Pending request box with "Agent" is displayed on data entry page
#    Then Pending request box with "Producer" is not displayed on data entry page
    Then User Clicks on Button "Close"
#    And User clicks "Close" button
    Then User navigate to home page
    Then User Verifies Application Status as "In Signatures"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                            | Status Description                              |
      | Request Canceled                  | Electronic Signature request canceled by agent. |
    Then User Clicks on Button "Requests" on AllActivities
    Then User verify 1 requests are displayed on requests page MVC type
#    Then User verify "Pending" requests for "Agent 2" is displayed on requests page
#    Then User verify "No" requests for "Agent 3" is displayed on requests page
    Then User verify "displayed" requests for "Agent" is displayed on requests page
#    Then User verify "Complete" requests for "Signer" is displayed on requests page
    Then User clicks on Close icon on Toast Popup
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "URL"
    Then User verifies no "Last 4 Digits of SSN/Government ID" TextBox in External Login Page
    Then User verifies no "Birth Date (MM/DD/YYYY)" TextBox in External Login Page
    Then User verifies "Passcode" TextBox in External Login Page
    Then User Logs in with "agentPasscode"
    And User verify "Review Documents" button exists
    And User verify "Sign Activity" button exists
    And User verify "Contact Agent" button exists
    Then User clicks "Sign Activity" button on page
    And User verify "View Activity PDF" button exists
    And User verify "Log Off" button exists
    And User verify "Contact Agent" button exists
    Then User clicks "View Activity PDF" button on signature page
    Then User verifies pdf text in "PrintApp" document
      | This is 2 Page PDF |
      | Second Page  |
    Then User verifies pdf document contains 2 pages
    Then User verify generated PDF displays signature
    Then User Clicks "Contact Agent" Button
    Then User Add some text to the Message body "Customized Message" and Click on Send button
    Then User verify error message "Message sent." on signature page
    Then User clicks on "Ok Popup" link
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User Loads the URL generated previously for "recipientUrl"
    Then User Logs in with "agent2Passcode"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User Loads the URL generated previously for "signerUrl"
    Then User verify "InvalidRequestMessage" message on signature page
    Then User verify "InvalidRequestMessage1" message on signature page
    Then User delete all the cookies from browser
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "In Signatures"
    Then User open application from recent activity
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Agent E-Signature Approved,Activity 'newProductName' was signed by Agent 2 'signerFullName',Activity 'newProductName' was signed by Agent 'signerFullName'" on history dialog
    Then User clicks "Other Actions" button
    Then User click "Requests" submenu
    Then User verify 3 completed requests are displayed on requests page
    Then User closes pending requests on requests page
    And User clicks "Continue" button
    Then User verifies "Producer" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Agent 2" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Owner" under list of required signers section on signature page
    Then User verifies "AgentThird" under list of required signers section on signature page
    Then User selects "Re-Sign" button for "Agent 2" on Signature Tab
    Then User clicks "OK" on Confirmation Dialog
    Then User selects "Agent 2" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "ShibaAgent2" in TextBox "ToName"
    Then User Enters "vkapil2@hexure.com" in TextBox "ToEmail"
    Then User clicks "Send Email Request" button on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User verify "Revoke Request" for "Agent 2" button on signature page

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_012_Verify E-Sign Sign Now & Sign Later when Agent Signing Order set to Last
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_012"
    Then User on Login Page enters valid username as "CEUSER2_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "State Signing Error" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then Verify Signers "Annuitant" Tab Are "Enabled"
    Then Verify Signers "Insured" Tab Are "Enabled"
    Then Verify Signers "JointOwner" Tab Are "Enabled"
    Then Verify Signers "Owner" Tab Are "Enabled"
    Then Verify Signers "Agent : CEUser2" Tab Are "Disabled"
    Then Verify Signers "Producer" Tab Are "Disabled"
    Then User Select Signers "Annuitant" Tab
    Then User Select Signers "Insured" Tab
    Then User Select Signers "JointOwner" Tab
    Then User Clicks on proceed button
    Then User Clicks Sign Now
    Then User Enters "5555" in TextBox "ID"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then User Clicks on Agree Checkbox
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then Verify Signers "Owner" Tab Are "Enabled"
    Then User verifies "Annuitant / Insured / Joint Owner" under completed signatures section with "Re-Sign" button on signature page
    Then Verify Signers "Agent : CEUser2" Tab Are "Disabled"
    Then Verify Signers "Producer" Tab Are "Disabled"
    Then User selects "owner" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User Verifies Now signers have Revoke Request link
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User opens Menu "Log Off"
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with Signer SSN and DOB
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then Click OK on Congratulations screen. then close the browser
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_012"
    Then User on Login Page enters valid username as "CEUSER2_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks "Continue" button
    Then User verifies "Annuitant / Insured / Joint Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then Verify Signers "AgentProducer" Tab Are "Enabled"
    Then User Select Signers "Agent" Tab
    Then User Clicks Sign Now
    Then User clicks "Agree" button on signature page
    Then User Enters Agent City as "Jaipur" Perform Signature, I Consent
    Then User Select Signers "AgentProducer" Tab
    Then User Clicks Sign Now
    Then User clicks "Agree" button on signature page
    Then User Enters Agent Full Name,Agent ID, City Then Perform Signature
    Then User Performs Signature and Clicks I Consent
    Then User clicks "Continue" button
    Then User Clicks on yes Confirmation dialog
    Then User verifies toast message of "Application is pending transmission."
    Then User Verifies Final popup after application submitted with message "Application is finished."

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_011_Verify E-Sign Sign Now & Sign Later when Agent Signing Order set to First
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_011"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "State Signing Error" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then Verify Signers "Annuitant" Tab Are "Disabled"
    Then Verify Signers "Insured" Tab Are "Disabled"
    Then Verify Signers "Joint Owner" Tab Are "Disabled"
    Then Verify Signers "Owner" Tab Are "Disabled"
    Then Verify Signers "Agent" Tab Are "Enabled"
    Then Verify Signers "AgentProducer" Tab Are "Enabled"
    Then User selects "Agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then Verify Signers "Annuitant" Tab Are "Disabled"
    Then Verify Signers "Insured" Tab Are "Disabled"
    Then Verify Signers "Joint Owner" Tab Are "Disabled"
    Then Verify Signers "Owner" Tab Are "Disabled"
    Then Verify Signers "Agent" Tab Are "Enabled"
    Then Verify Signers "AgentProducer" Tab Are "Enabled"
    Then User Clicks Back to Application
    Then User opens Menu "Log Off"
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User Clicks Sign Activity button
    Then User Clicks Agree Document Checkbox
    Then User Verifies Document Set window has text "Agent Off-Site Signature"
    Then User Enters Agent Full Name,Agent ID, City Then Perform Signature
    Then User Performs Signature and Clicks I Consent
    Then Click OK on Congratulations screen. then close the browser
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_011"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User verifies Application Status on Recent Activity is "In Signatures" now
    Then User open application from recent activity
    Then User clicks "Continue" button
    Then Verify Signers "Annuitant" Tab Are "Disabled"
    Then Verify Signers "Insured" Tab Are "Disabled"
    Then Verify Signers "Joint Owner" Tab Are "Disabled"
    Then Verify Signers "Owner" Tab Are "Disabled"
    Then Verify Signers "AgentProducer" Tab Are "Enabled"
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "producer" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Clicks Agree Document Checkbox
    Then User Enters Agent Full Name,Agent ID, City Then Perform Signature
    Then User Performs Signature and Clicks I Consent
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User verifies "Producer" under completed signatures section with "Re-Sign" button on signature page
    Then Verify Signers "Annuitant" Tab Are "Enabled"
    Then Verify Signers "Insured" Tab Are "Enabled"
    Then Verify Signers "JointOwner" Tab Are "Enabled"
    Then Verify Signers "Owner" Tab Are "Enabled"
    Then User Select Signers "Annuitant" Tab
    Then User Select Signers "Insured" Tab
    Then User Select Signers "JointOwner" Tab
    Then User Select Signers "Owner" Tab
    Then User Clicks on proceed button
    Then User Clicks Sign Now
    Then User Enters "5555" in TextBox "ID"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then User Clicks on Agree Checkbox
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User clicks "Agree" button on signature page
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User clicks "Continue" button
    Then User clicks "Continue" button
    Then User Clicks on yes Confirmation dialog
    Then User Verifies Final popup after application submitted with message "Application is finished."

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_008_Verify Invalid Signature Submission for Send Email Request when Passcode Validation is enabled
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "California"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "RV PDF Link" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on "close" link
    Then User Clicks on Continue button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Annuitant" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required signer details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the "first" URL generated and clicks Back to Signer
    Then User selects "Owner" signer on signature window
    Then User selects "Owner 2" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required signer details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the "second" URL generated and clicks Back to Signer
    Then User selects "Agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Clicks Agree Document Checkbox
    Then User selects value "Indiana" for field "State"
    Then User Enters Agent City as "Jaipur" Perform Signature, I Consent
    Then User clicks "Back To Application" button
    Then User verify pending request dialogue should appear
    Then User stores "primary signer" passcode as "second"
    Then User stores "secondary signer" passcode as "first"
    Then User clicks "Close" button
    Then User clicks "Close" button
    Then User Logs Off from current Application
    Then User Loads "firstsignerUrl" external link as generated and Login with "firstPasscode"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User Verifies value "California" for field "State"
    Then User selects value "Alabama" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User verify error message "cautionMessageJSON" on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User selects value "California" for field "State"
    Then User clicks "I Consent" button on signature page
    Then Click OK on Congratulations screen. then close the browser
    Then User Loads "secondsignerUrl" external link as generated and Login with "secondPasscode"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User selects value "Alaska" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User verify error message "cautionMessageJSON" on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User selects value "California" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User clicks "Agree" button on signature page
    Then User selects value "Guam" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User verify error message "cautionMessageJSON1" on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies message "Thank you for using our application."
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_008"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User verifies Application Status on Recent Activity is "Signature Submission Invalid" now
    Then User open application from recent activity
    Then User clicks "Close" button
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    Then User verifies Audit History statuses
      | Status                            | Status Description                   |
      | Signing Ceremony - Jurisdiction Attempts Exceeded        | Signature jurisdiction exceeded the maximum number of acceptable attempts. Activity is no longer active. |
      | Signing Ceremony - Invalid Jurisdiction        | Signing jurisdiction selected 'Alaska' does not match the activity jurisdiction. |

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_014_Verify State Signing Error disabled for particular Signer defined in During Client Fill and Sign Request
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_014"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Colorado"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "State Signing Error" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Close" button
    Then User clicks "Other Actions" button
    Then User click "Request Client to Fill & Sign" submenu
    Then User select "jointowner" checkbox on ReactApp page
    Then User remove "Owner" details on page
    Then User enters "Insured" details on page
    Then User enters "Annuitant" details on page
    Then User enters "jointowner" details on page
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User verifies dialog window "Pending Requests"
    Then User Gets the URL from message box by Clicking "Annuitant" Send Reminder link
    Then User clicks "Cancel" button
    Then User Clicks Pending request Button
    Then User verifies dialog window "Pending Requests"
    Then User Gets the URL from message box by Clicking "Insured" Send Reminder link
    Then User clicks "Cancel" button
    Then User clicks "Logoff" button on home page
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User set value "18|8" for field "Enter Signer code for which State signing error needs to be disabled"
    Then User Clicks On Sign Application then Clicks Lock Activity
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User verify value is "Colorado" for field "State"
    Then User selects value "Alaska" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User clicks "OK" button on signature page
    Then User Loads the URL generated previously for "reviewerUrlAnnuitant"
    Then User Login with SSN "annuitantSsn" and birth date "annuitantBirthdate"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User verify value is "Colorado" for field "State"
    Then User selects value "Alaska" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User verifies data "Signing Error"
    Then User Verifies Message on Popup "The jurisdiction in which you are signing must match the activity jurisdiction." in Queue
    Then User clicks Yes button
    Then User selects value "Colorado" for field "State"
    Then User Clicks on I Consent
    Then User clicks "OK" button on signature page
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "reviewerUrlInsured"
    Then User Login with SSN "insuredSsn" and birth date "insuredBirthdate"
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User verify value is "Colorado" for field "State"
    Then User selects value "Arizona" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User clicks "OK" button on signature page
    Then User Verifies message "Thank you for using our application."

  @RegressionTest @RegEsignHP1MVC @RegressionTestHP1
  Scenario: TC_013_Verify State Signing Error disabled for particular Signer defined in Presale Activity
    Given User is on FireLight login page for TestCase "RegEsignHP1MVC_TC_013"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Illustration" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "DSB Illustration" for application
    Then User clicks "Close" button
    Then User set value "8|32|4" for field "Disable State Signing With Signer Code"
    Then User Clicks On Application
    Then User verifies prefilled data Form
      | data-dataitemid                 | Locator Type |
      | FLI_DISABLE_STATE_SIGNING_ERROR | Input        |
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5555" in TextBox "ID"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then User clicks "Agree" button on signature page
    Then User verify value is "Arizona" for field "State"
    Then User selects value "Costa Rica" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User verifies "Annuitant" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5555" in TextBox "ID"
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then User clicks "Agree" button on signature page
    Then User verify value is "Arizona" for field "State"
    Then User selects value "Costa Rica" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then User clicks Yes button
    Then User selects value "Arizona" for field "State"
    Then User Clicks on I Consent
    Then User verifies "Owner / Joint Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Clicks Agree Document Checkbox
    Then User selects value "Costa Rica" for field "State"
    Then User Enters Agent City as "Jaipur" Perform Signature, I Consent
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Producer" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User selects value "Costa Rica" for field "State"
    Then User Enters Agent Full Name,Agent ID, City Then Perform Signature
    Then User Performs Signature and Clicks I Consent
    Then User verify error message "cautionMessageJSON" on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User selects value "Arizona" for field "State"
    Then User clicks "I Consent" button on signature page
    Then User verifies "Producer" under completed signatures section with "Re-Sign" button on signature page
    Then User Select Signers "Insured" Tab
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Enters "9876" in TextBox "SSN"
    Then User Enters "09081999" in TextBox "BirthDate"
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User Clicks Back to Application
    Then User verifies dialog window "Pending Request" popup if appears and closes it
    Then User clicks "Logoff" button on home page
    Then User Verifies message "Thank you for using our application."
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with Signer SSN and DOB
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User verify value is "Arizona" for field "State"
    Then User selects value "Costa Rica" for field "State"
    Then User Enters Signer Full Name as "Extensible" City as "Jaipur" Then perform Signature and click I Consent
    Then Click OK on Congratulations screen. then close the browser
    Then User Verifies message "Thank you for using our application."





