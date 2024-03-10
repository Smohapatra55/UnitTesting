Feature: FireLight_Regression_EsignHP1_REACT_TestCases

  This feature will verify FireLight Complete Application Regression Tests.

  @RegressionTest @RegEsignHP1REACT @RegressionTestHP1
  Scenario: TC_001_Verify Contact Agent dialog displays properly in external Request Client to Fill App
    Given User is on FireLight login page for TestCase "RegEsignHP1REACT_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Contact Agent Form With Wiz" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "97%"
    Then User Now Clicks on Other Action tab and  Clicks on "Request Client to Fill App" and title should be "Request Clients to Complete Filling the Application"
    Then User Selects the Signer Type as "Owner"
    Then User Enters Recipient name, Email, SSN, DOB
    Then User Clicks Send Email request Button
    And User save the "email link" generated on signature page
    And User Clicks Back to App
    Then Pending request box with "Owner" is displayed on data entry page
    Then Pending request box shows "reviewerName" "receipantEmail" is displayed on data entry page
    And User verifies "Passcode" is displayed and store it
    And User clicks "Close" button
    Then User navigates to Home page
    Then User Verifies Application Status as "Pending Client Request"
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    And User login to email link with "SSN" generated on signature page from home page
    Then User verifies Alerts and Print Button
    Then User clicks "Next" button
    Then User clicks "Previous" button
    Then User verifies Required for Form "Annuity 222 Wizard"
      | Contract Data Participants |
      | Participants               |
      | Beneficiaries              |
    Then User verifies Optional for Form "Annuity 222 Wizard"
      | Disclosures |
      | Allocations |
    Then User fills required fields and verify fields error should not display "false"
      | Field      | Value          |
      | First Name | OwnerFirstName |
      | Last Name  | OwnerLastName  |
    Then User opens "Page 1" Required for Form "Contact Agent"
    Then User fills required fields and verify fields error should not display "false"
      | Field      | Value          |
      | Owner_SSN  | 123-34-1234    |
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field                        | Value                |
      | PrimaryBeneficiary_FirstName | BeneficiaryFirstName |
      | PrimaryBeneficiary_LastName  | BeneficiaryLastName  |
    Then User selects value "Brother" for field "PrimaryBeneficiary_Relationship"
    Then User Clicks "Contact Agent" Button
    Then User verifies "FromName" TextBox value as "reviewerName"
    Then User verifies "FromAddress" TextBox value as "receipantEmail"
    Then User verifies "ToName" TextBox value as "agentName"
    Then User verifies "ToAddress" TextBox value as "agentEmail"
    Then User verifies "Subject" TextBox value as "Question about the activity"
    Then User clicks on "Cancel" link
    Then User Clicks "Contact Agent" Button
    Then User Add some text to the Message body "Customized Message" and Click on Send button
    Then User verifies "Your message has been sent." popup is displayed
    Then User Clicks CompleteLog off Tab
    Then User clicks on submit and Log Off
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Other Actions" button
    Then User click "History" submenu
    And User verify audit entries contains "Pending Client Request,External Signer Emailed Agent,Client Request Complete," on history dialog
    And User verify audit entries contains "Client reviewerName sent email to agent agentName (agentEmail) with questions in external signing activity newProductName." with variables "reviewerName,agentName,agentEmail,newProductName" on history dialog
    And User verify audit entries contains "Request to complete activity for `newProductName` was fulfilled by `reviewerName`." with variables "reviewerName,newProductName" on history dialog
    Then User Verifies Continue button Enabled

