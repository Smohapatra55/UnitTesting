Feature: FireLight_Unit_Test

  This feature will verify FireLight Unit Tests


  @UnitTest
  Scenario: TC_01_Selecting file size 50MB from admin for Single file - Verifying the same in application part
    Given User is on FireLight Admin login page for TestCase "UnitTest_TC_01"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User verifies Single and Cumulative Label is showing
    Then User Verifies options present for "ddlCumMaxSize" dropdown
      | options    |
      | Null       |
      | 5        |
      | 10       |
      | 15       |
      | 20       |
      | 25       |
      | 30       |
      | 35       |
      | 40       |
      | 45       |
      | 50       |
    Then User Verifies options present for "ddlMaxSize" dropdown
      | options |
      | 1 |
      | 2 |
      | 3 |
      | 4 |
      | 5 |
      | 6 |
      | 7 |
      | 8 |
      | 9 |
      | 10 |
      | 11 |
      | 12 |
      | 13 |
      | 14 |
      | 15 |
      | 16 |
      | 17 |
      | 18 |
      | 19 |
      | 20 |
      | 25 |
      | 30 |
      | 35 |
      | 40 |
      | 45 |
      | 50 |
    Then User selects "20" from "Maximum Upload File Size Single" dropdown
#    Then User Verifies popup "Invalid Selection"
#    Then User verifies pop up message "Cumulative size should be greater than single file size!"
#    Then User clicks "ok" on Confirmation Dialog
#    Then User Verifies value "Null" for field "ddlCumMaxSize"
    Then User selects "30" from "Maximum Upload File Size Cumulative" dropdown
    Then User selects "50" from "Maximum Upload File Size Single" dropdown
    Then User Verifies popup "Invalid Selection"
    Then User verifies pop up message "Cumulative size should be greater than single file size!"
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies value "50" for field "ddlMaxSize"
    Then User Verifies value "Null" for field "ddlCumMaxSize"
    Then User selects "20" from "Maximum Upload File Size Cumulative" dropdown
    Then User Verifies popup "Invalid Selection"
    Then User verifies pop up message "Cumulative size should be greater than single file size!"
    Then User clicks "ok" on Confirmation Dialog
    Then User selects "20" from "Maximum Upload File Size Single" dropdown
    Then User selects "30" from "Maximum Upload File Size Cumulative" dropdown
    Then User verifies No Dialog box appear for "Invalid Selection"
    Then User selects "50" from "Maximum Upload File Size Single" dropdown
    Then User Verifies popup "Invalid Selection"
    Then User verifies pop up message "Cumulative size should be greater than single file size!"
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies value "50" for field "ddlMaxSize"
    Then User Verifies value "Null" for field "ddlCumMaxSize"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User waits for cache timeout
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Documents"
    Then User Refresh the Page
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 50 MB."
    Then User Verifies Remaining Size Does not Show in the Popup
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample"
    Then User clicks "Upload" button
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Verifies Uploaded file is "Sample" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User Verifies value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "sample-pdf-download-49-mb"
    Then User clicks "Upload" button
    Then User Verifies Uploaded file is "sample-pdf-download-49-mb" for "Medical Exam - Part 2" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Other" for field "Select Document Type"
    Then User Verifies value "Other" for field "Select Document Type"
    Then User uploads Document "sample-50-MB-pdf-file"
    Then User verifies "Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "The selected file is larger than the maximum of 50 MB. Reduce file resolution to reduce file size."
    Then User Closes Documents window
    Then User Logs Off from current Application
    Then User Verifies message "Thank you for using our application."
    Given User is on FireLight Admin login page for TestCase "UnitTest_TC_01"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User verifies Single and Cumulative Label is showing
    Then User selects "45" from "Maximum Upload File Size Single" dropdown
    Then User selects "50" from "Maximum Upload File Size Cumulative" dropdown
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User waits for cache timeout
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User opens Menu "Other Actions  ->Documents"
    Then User Refresh the Page
    Then User opens Menu "Other Actions  ->Documents"
    Then User verifies dialog window "Documents"
    Then User Verifies Document Type Note Message as "Note: Supplemental documents must be in PDF format and no larger than 45 MB. Cumulative file size to be maximum of 50 MB."
    Then User selects value "Illustration" for field "Select Document Type"
    Then User Verifies value "Illustration" for field "Select Document Type"
    Then User uploads Document "Sample"
    Then User clicks "Upload" button
    Then User verifies "View" and "Remove" links appear for all uploaded documents
    Then User Verifies Uploaded file is "Sample" for "Illustration" Document type and Size Of File Appears
    Then User Verifies Total size Shows in the Popup
    Then User selects value "Medical Exam - Part 2" for field "Select Document Type"
    Then User Verifies value "Medical Exam - Part 2" for field "Select Document Type"
    Then User uploads Document "sample-pdf-download-49-mb"
    Then User verifies "Maximum File Size Exceeded" popup box appeared
    Then User verifies toast message Alert "The selected file is larger than the maximum of 45 MB. Reduce file resolution to reduce file size."
    Then User Closes Documents window
    Then User Logs Off from current Application
    Then User Verifies message "Thank you for using our application."


  @UnitTest
  Scenario: TC_01_Revert setting
    Given User is on FireLight Admin login page for TestCase "UnitTest_TC_01"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User selects "10" from "Maximum Upload File Size Single" dropdown
    Then User selects "15" from "Maximum Upload File Size Cumulative" dropdown
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"