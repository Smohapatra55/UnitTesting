Feature:  FireLight_AdminApp_Tests

  This feature will verify FireLight Admin Tests

  @RegAdminActivityMasterLP1MVC @AdminTests
  Scenario: AT_018_Include InsTech managed products_Application
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterLP1MVC_AT_018"
    Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
    Then User clicks "Activities" Tab
    Then User selects "Application" from list Activities
    Then User clicks "Include InsTech Managed Products" checkbox from activity detail
    Then User clicks "Save" button
    Then User verifies "Application Saved Successfully with time" message is displayed
    Then User Clicks on Home button on Admin page
    Then User Logs off from Admin page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "Fixed Annuity"
    Then User verifies "DSB Ins Product" product not avaliable
    Then User Log Off from current Application
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterLP1MVC_AT_018"
    Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
    Then User clicks "Activities" Tab
    Then User selects "Application" from list Activities
    Then User clicks "Include InsTech Managed Products" checkbox from activity detail
    Then User clicks "Save" button
    Then User verifies "Application Saved Successfully with time" message is displayed
    Then User Clicks on Home button on Admin page
    Then User Logs off from Admin page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deependra_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "Fixed Annuity"
    Then User verifies "DSB Ins Product" product is avaliable
    Then User selects Given Product "DSB Ins Product" for application
    Then User clicks "Create" button
    Then User Logs Off from current Application

  @RegAdminActivityMasterMP1P2MVC @AdminTests
  Scenario: AT_004_Enable Form change Notifications for MVC App
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2MVC_AT_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Form Designer Changes_OP | Form Designer Changes_OP | " from dropdown
    Then User Deletes Control "ComboBox_0" on Admin Form Designer if Present
    Then User save form controls
    Then User add "COMBOBOX" control on form
    Then User save form controls
    Then User Clicks on Home button on Admin page
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Form Designer Changes_OP" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User verifies prefilled data Form input text fields should be blank
      | data-dataitemid           | Locator Type |
      | ComboBox_0                | Select       |
      | LN_OrderNumber            | Input        |
      | LNRisk_ResultCode         | Input        |
      | LNRisk_Score              | Input        |
      | LNRisk_ResultMessage      | Textarea     |
      | ANNUITANT_FNAME           | Input        |
      | ANNUITANT_LNAME           | Input        |
      | ANNUITANT_BDATE           | Input        |
      | ANNUITANT_STREETADDRESS   | Input        |
      | FLI_ANNUITANT_PHONENUMBER | Input        |
      | ANNUITANT_POLICY_STATE    | Input        |
      | ANNUITANT_POLICY_FACE     | Input        |
      | ANNUITANT_SSN             | Input        |
      | ANNUITANT_GENDER          | Input        |
      | ANNUITANT_AGE             | Input        |
      | ANNUITANT_CITYADDRESS     | Input        |
      | ANNUITANT_ZIPCODEADDRESS  | Input        |
      | ANNUITANT_LICENSE_STATE   | Input        |
      | ANNUITANT_LICENSE_NUMBER  | Input        |
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2MVC_AT_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Form Designer Changes_OP | Form Designer Changes_OP | " from dropdown
    Then User Clicks on "ComboBox_0" in admin APP
    Then User Clicks on Delete Control
    Then User verify "ComboBox_0" button does not exist
    Then User save form controls
    Then User Logs Off from current Application
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies dialog window "Application has been updated with new form list."
    Then User verify "ComboBox_0" button does not exist
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Clicks Back to Application
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2MVC_AT_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Form Designer Changes_OP | Form Designer Changes_OP | " from dropdown
    Then User add "COMBOBOX" control on form
    Then User save form controls
    Then User Logs Off from current Application
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User verify pop up message displays progress as "1" out of "3" steps on signature page
    Then User verifies dialog window "Form List has been updated, please Unlock application to get the updated list."
    Then User Clicks on Close PopUp
    Then User verify "ComboBox_0" button does not exist
    Then User clicks on lock icon
    Then User clicks Unlock button on data entry page
    Then User Clicks on Unlock Application
    Then User verifies prefilled data Form input text fields should be blank
      | data-dataitemid           | Locator Type |
      | ComboBox_0                | Select |
      | LN_OrderNumber            | Input        |
      | LNRisk_ResultCode         | Input        |
      | LNRisk_Score              | Input        |
      | LNRisk_ResultMessage      | Textarea     |
      | ANNUITANT_FNAME           | Input        |
      | ANNUITANT_LNAME           | Input        |
      | ANNUITANT_BDATE           | Input        |
      | ANNUITANT_STREETADDRESS   | Input        |
      | FLI_ANNUITANT_PHONENUMBER | Input        |
      | ANNUITANT_POLICY_STATE    | Input        |
      | ANNUITANT_POLICY_FACE     | Input        |
      | ANNUITANT_SSN             | Input        |
      | ANNUITANT_GENDER          | Input        |
      | ANNUITANT_AGE             | Input        |
      | ANNUITANT_CITYADDRESS     | Input        |
      | ANNUITANT_ZIPCODEADDRESS  | Input        |
      | ANNUITANT_LICENSE_STATE   | Input        |
      | ANNUITANT_LICENSE_NUMBER  | Input        |

  @RegAdminActivityMasterMP1P2MVC @AdminTests
  Scenario: TC_010_Create new application with new fields on Form Designer_Form only
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2MVC_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User selects "Form Designer Changes_OP | Form Designer Changes_OP | " Form Designer list
    Then User Clicks on "ComboBox_0" in admin APP
    Then User Clicks on Delete Control
    Then User save form controls
    Then User add "COMBOBOX" control on form
    Then User save form controls
    Then User Clicks on Home button on Admin page
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Form Designer Changes_OP" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User verifies prefilled data Form input text fields should be blank
      | data-dataitemid           | Locator Type |
      | ComboBox_0                | Select |
      | LN_OrderNumber            | Input        |
      | LNRisk_ResultCode         | Input        |
      | LNRisk_Score              | Input        |
      | LNRisk_ResultMessage      | Textarea     |
      | ANNUITANT_FNAME           | Input        |
      | ANNUITANT_LNAME           | Input        |
      | ANNUITANT_BDATE           | Input        |
      | ANNUITANT_STREETADDRESS   | Input        |
      | FLI_ANNUITANT_PHONENUMBER | Input        |
      | ANNUITANT_POLICY_STATE    | Input        |
      | ANNUITANT_POLICY_FACE     | Input        |
      | ANNUITANT_SSN             | Input        |
      | ANNUITANT_GENDER          | Input        |
      | ANNUITANT_AGE             | Input        |
      | ANNUITANT_CITYADDRESS     | Input        |
      | ANNUITANT_ZIPCODEADDRESS  | Input        |
      | ANNUITANT_LICENSE_STATE   | Input        |
      | ANNUITANT_LICENSE_NUMBER  | Input        |
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2MVC_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User selects "Form Designer Changes_OP | Form Designer Changes_OP | " Form Designer list
    Then User Clicks on "ComboBox_0" in admin APP
    Then User Clicks on Delete Control
    Then User verify "ComboBox_0" button does not exist
    Then User save form controls
    Then User Logs Off from current Application
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies dialog window "Application has been updated with new form list."
    Then User verify "ComboBox_0" button does not exist
    Then User clicks Link "[Close]"
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Clicks Back to Application
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2MVC_TC_010"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User selects "Form Designer Changes_OP | Form Designer Changes_OP | " Form Designer list
    Then User add "COMBOBOX" control on form
    Then User save form controls
    Then User Logs Off from current Application
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies dialog window "Form List has been updated, please Unlock application to get the updated list."
    Then User clicks on lock icon
    Then User Verifies Unlock is enable and displayed
    Then User clicks Unlock button on data entry page
    Then User Clicks on Unlock Application
    Then User clicks Link "[Close]"
    Then User verifies prefilled data Form input text fields should be blank
      | data-dataitemid           | Locator Type |
      | ComboBox_0                | Select       |
      | LN_OrderNumber            | Input        |
      | LNRisk_ResultCode         | Input        |
      | LNRisk_Score              | Input        |
      | LNRisk_ResultMessage      | Textarea     |
      | ANNUITANT_FNAME           | Input        |
      | ANNUITANT_LNAME           | Input        |
      | ANNUITANT_BDATE           | Input        |
      | ANNUITANT_STREETADDRESS   | Input        |
      | FLI_ANNUITANT_PHONENUMBER | Input        |
      | ANNUITANT_POLICY_STATE    | Input        |
      | ANNUITANT_POLICY_FACE     | Input        |
      | ANNUITANT_SSN             | Input        |
      | ANNUITANT_GENDER          | Input        |
      | ANNUITANT_AGE             | Input        |
      | ANNUITANT_CITYADDRESS     | Input        |
      | ANNUITANT_ZIPCODEADDRESS  | Input        |
      | ANNUITANT_LICENSE_STATE   | Input        |
      | ANNUITANT_LICENSE_NUMBER  | Input        |

  @RegAdminActivityMasterMP1P2React @AdminTests
  Scenario: AT_004_Enable Form change Notifications REACT App
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_AT_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Form with wiz Designer Changes_OP | Form with wiz Designer Changes_OP | " from dropdown
    Then User Deletes Control "ComboBox_0" on Admin Form Designer if Present
    Then User add "COMBOBOX" control on form
    Then User save form controls
    Then User Clicks on Home button on Admin page
    Then User clicks "Wizard Designer" Tab
    Then User selects "Wizard Designer Changes_OP" value form the Wizard Designer dropdown
    Then User Deletes checkbox on Admin Wizard Designer if Present
    Then User Drags "Check Box" to blank field
    Then User clicks on save wizard button
    Then User Clicks on Home button on Admin page
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Form with wiz Designer Changes_OP" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User verifies check box on Wizard page
    Then User opens "Page 1" Optional for Form "Form with wiz Designer Changes_OP"
    Then User verifies Combox is present on page
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_AT_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Form with wiz Designer Changes_OP | Form with wiz Designer Changes_OP | " from dropdown
    Then User Clicks on "ComboBox_0" in admin APP
    Then User Clicks on Delete Control
    Then User verify "ComboBox_0" button does not exist
    Then User save form controls
    Then User Clicks on Home button on Admin page
    Then User clicks "Wizard Designer" Tab
    Then User selects "Wizard Designer Changes_OP" value form the Wizard Designer dropdown
    Then User selects checkbox on wizard designer
    Then User clicks on delete icon
    Then User clicks on save wizard button
    Then User Clicks on Home button on Admin page
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies "Activity has been updated with new page list." popup is displayed
    Then User Close the Popup
    Then User verifies check box on Wizard page is not displayed
    Then User opens "Page 1" Optional for Form "Form with wiz Designer Changes_OP"
    Then User verify "ComboBox_0" button does not exist
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Clicks Back to Application
    Then User Logs Off from current Application
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_AT_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Library" Tab
    Then User search for "Form with wiz Designer Changes_OP" and click on search icon
    Then User clicks on "Form Designer" button on admin
    Then User clicks "ddlForm" and select "Form with wiz Designer Changes_OP | Form with wiz Designer Changes_OP | " from dropdown
    Then User add "COMBOBOX" control on form
    Then User save form controls
    Then User Clicks on Home button on Admin page
    Then User clicks "Wizard Library" Tab
    Then User search for "Wizard Designer Changes_OP wizard" and click on search icon
    Then User clicks on "Wizard Designer" button on admin
    Then User selects "Wizard Designer Changes_OP" value form the Wizard Designer dropdown
    Then User Drags "Check Box" to blank field
    Then User clicks on save wizard button
    Then User Clicks on Home button on Admin page
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies "Page List has been updated" popup is displayed
    Then User Close the Popup
    Then User clicks "Lock" button on data entry page
    Then User clicks "Unlock" button on data entry page
    Then User clicks "Unlock Activity" button on data entry page
    Then User verifies check box on Wizard page
    Then User opens "Page 1" Optional for Form "Form with wiz Designer Changes_OP"
    Then User verifies Combox is displayed on page

  @RegAdminActivityMasterMP1P2React @AdminTests
  Scenario: TC_009_Create new application Form_Wiz only with new fields on Form Designer
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Form with wiz Designer Changes_OP | Form with wiz Designer Changes_OP | " from dropdown
    Then User Deletes Control "ComboBox_0" on Admin Form Designer if Present
    Then User save form controls
    Then User add "COMBOBOX" control on form
    Then User save form controls
    Then User Clicks on Home button on Admin page
    Then User clicks "Wizard Designer" Tab
    Then User selects "Wizard Designer Changes_OP" value form the Wizard Designer dropdown
    Then User selects checkbox on wizard designer
    Then User clicks on delete icon
    Then User clicks on save wizard button
    Then User Drags "Check Box" to blank field
    Then User clicks on save wizard button
    Then User Clicks on Home button on Admin page
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Form with wiz Designer Changes_OP" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies toast message of "Data Entry has met the requirements."
    Then User clicks on Close icon on Toast Popup
    Then User verifies check box on Wizard page
    Then User opens "Page 1" Optional for Form "Form with wiz Designer Changes_OP"
    Then User verifies Combox is present on page
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Form with wiz Designer Changes_OP | Form with wiz Designer Changes_OP | " from dropdown
    Then User Deletes Control "ComboBox_0" on Admin Form Designer if Present
    Then User save form controls
    Then User Clicks on Home button on Admin page
    Then User clicks "Wizard Designer" Tab
    Then User selects "Wizard Designer Changes_OP" value form the Wizard Designer dropdown
    Then User selects checkbox on wizard designer
    Then User clicks on delete icon
    Then User clicks on save wizard button
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies "Activity has been updated with new page list." popup is displayed
    Then User clicks on Close icon on Toast Popup
    Then User clicks on Close icon on Toast Popup
    Then User verifies check box on Wizard page is not displayed
    Then User opens "Page 1" Optional for Form "Form with wiz Designer Changes_OP"
    Then User verifies Combox is not present on page
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User Clicks Back to Application
    Then User Logs Off from current Application
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_TC_009"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Library" Tab
    Then User search for "Form with wiz Designer Changes_OP" and click on search icon
    Then User clicks on "Form Designer" button on admin
    Then User selects "Form with wiz Designer Changes_OP | Form with wiz Designer Changes_OP | " Form Designer list
    Then User add "COMBOBOX" control on form
    Then User save form controls
    Then User Clicks on Home button on Admin page
    Then User clicks "Wizard Library" Tab
    Then User search for "Wizard Designer Changes_OP wizard" and click on search icon
    Then User clicks on "Wizard Designer" button on admin
    Then User selects "Wizard Designer Changes_OP" value form the Wizard Designer dropdown
    Then User Drags "Check Box" to blank field
    Then User clicks on save wizard button
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User open application from recent activity
    Then User verifies "Page List has been updated, please `Unlock` activity to get the updated list." popup is displayed
    Then User clicks on Close icon on Toast Popup
    Then User clicks on Close icon on Toast Popup
    Then User clicks "Lock" button on data entry page
    Then User clicks "Unlock" button on data entry page
    Then User clicks "Unlock Activity" button on data entry page
    Then User verifies check box on Wizard page
    Then User opens "Page 1" Optional for Form "Form with wiz Designer Changes_OP"
    Then User verifies Combox is displayed on page

  @RegAdminActivityMasterMP1P2React @AdminTests
  Scenario: TC_011_Masking Verification
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_TC_011"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User "Delete" required options from dropdown "cboMaskFieldProp"
    Then User clicks on add button
    Then User verifies Add mask window should display
    Then User select "LongDate" form mask type
    Then User enter "DateMask_OP" mask name
    Then User clicks on add mask on popup
    Then User clicks on add button
    Then User select "SSN" form mask type
    Then User enter "SSNMask_OP" mask name
    Then User clicks on add mask on popup
    Then User clicks on add button
    Then User select "Zipcode" form mask type
    Then User enter "ZipMask_OP" mask name
    Then User clicks on add mask on popup
    Then User clicks on add button
    Then User select "Phone" form mask type
    Then User enter "PhoneMask_OP" mask name
    Then User clicks on add mask on popup
    Then User clicks on save organisation
    Then User Verifies options present for "cboMaskFieldProp" dropdown
      | options      |
      | DateMask_OP  |
      | SSNMask_OP   |
      | ZipMask_OP   |
      | PhoneMask_OP |
    Then User clicks on "Designer" on admin toolbar
    Then User clicks on "Wizard Designer" on designer
    Then User selects "FormMaskingWiz_op" value form the Wizard Designer dropdown
    Then User double click on "DateTextBox"
    Then User verifies "Custom" is the selected option from text mask dropdown
    Then User select the "DateMask_OP" from text mask dropdown
    Then User Single click on Text Mask
    Then User verifies "DateMask_OP" mask is present
    Then User Clicks on "OK" Button in Admin Page
    Then User double click on "SSN TextBox"
    Then User verifies "Custom" is the selected option from text mask dropdown
    Then User select the "SSNMask_OP" from text mask dropdown
    Then User Single click on Text Mask
    Then User verifies "SSNMask_OP" mask is present
    Then User Clicks on "OK" Button in Admin Page
    Then User double click on "ZipCode"
    Then User verifies "Custom" is the selected option from text mask dropdown
    Then User select the "ZipMask_OP" from text mask dropdown
    Then User Single click on Text Mask
    Then User verifies "ZipMask_OP" mask is present
    Then User Clicks on "OK" Button in Admin Page
    Then User double click on "Phone"
    Then User verifies "Custom" is the selected option from text mask dropdown
    Then User select the "PhoneMask_OP" from text mask dropdown
    Then User Single click on Text Mask
    Then User verifies "PhoneMask_OP" mask is present
    Then User Clicks on "OK" Button in Admin Page
    Then User double click on "Calendar Date "
    Then User Single click on Text Mask
    Then User verifies "DateMask_OP" mask is present
    Then User selects the value "DateMask_OP"
    Then User "check" the ReadOnly checkbox on properties dialog box
    Then User "uncheck" the ReadOnly checkbox on properties dialog box
    Then User clicks on Ok button on popup
    Then User clicks on save wizard button
    Then User clicks on "Designer" on admin toolbar
    Then User clicks on "Form Designer" on designer
    Then User clicks "ddlForm" and select "FormMasking_op | FormMasking_op | " from dropdown
    Then User single click "DateTextBox" on "TextBox_0" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies "DateMask_OP" is present in mask dropdown and select it
    Then User clicks on Update button on field properties window
    Then User clicks on close button on field properties window
    Then User single click "SSN TextBox" on "TextBox_1" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies "SSNMask_OP" is present in mask dropdown and select it
    Then User clicks on Update button on field properties window
    Then User clicks on close button on field properties window
    Then User single click "ZipCode" on "TextBox_2" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies "ZipMask_OP" is present in mask dropdown and select it
    Then User clicks on Update button on field properties window
    Then User clicks on close button on field properties window
    Then User single click "Phone" on "TextBox_3" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies "PhoneMask_OP" is present in mask dropdown and select it
    Then User clicks on Update button on field properties window
    Then User clicks on close button on field properties window
    Then User single click "Calendar" on "Calendar_0" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies "DateMask_OP" is present in mask dropdown and select it
    Then User clicks on Update button on field properties window
    Then User clicks on close button on field properties window
    Then User save form controls
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "MaskingForm and Wiz_op" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User sets "Calendar Date " to "12062012" date field
    Then User sets values for prefilled form
      | Field         | Value      | data-dataitemid | Locator Type |
      | DateTextBox   | 06291983   |                 | Input        |
      | SSN TextBox   | 987654321  |                 | Input        |
      | ZipCode       | 998877777  |                 | Input        |
      | Phone         | 9950358141 |                 | Input        |
    Then User Verifies Data entered at External page is displaying at main application
      | Field       | Value          | data-dataitemid | Locator Type |
      | DateTextBox | 06-29-1983     | FIELD_30        | Input        |
      | SSN TextBox | 987-65-4321    | FIELD_6         | Input        |
      | ZipCode     | 99887-7777     | FIELD_7         | Input        |
      | Phone       | (995) 035-8141 | FIELD_8         | Input        |
    Then User clicks next button
    Then User fills soft Limit form data
      | Value      | data-dataitemid | Locator Type |
      | 06251990   | TextBox_0       | Input        |
      | 654321987  | TextBox_1       | Input        |
      | 998877777  | TextBox_2       | Input        |
      | 6377098035 | TextBox_3       | Input        |
      | 12062012   | Calendar_0      | Input        |
    Then User Verifies Data entered at External page is displaying at main application
      | Field       | Value          | data-dataitemid | Locator Type |
      | DateTextBox | 06-25-1990     | TextBox_0       | Input        |
      | SSN TextBox | 654-32-1987    | TextBox_1       | Input        |
      | ZipCode     | 99887-7777     | TextBox_2       | Input        |
      | Phone       | (637) 709-8035 | TextBox_3       | Input        |
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_TC_011"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User selects value "DateMask_OP" for field "cboMaskFieldProp"
    Then User clicks on "Update" button on designer page
    Then User select "Date" form mask type
    Then User clicks on update Mask
    Then User clicks on save organisation
    Then User clicks on "Designer" on admin toolbar
    Then User clicks on "Wizard Designer" on designer
    Then User selects "FormMaskingWiz_op" value form the Wizard Designer dropdown
    Then User double click on "DateTextBox"
    Then User verifies "DateMask_OP  (99-99-99)" mask is present in list
    Then User clicks on cancel button
    Then User double click on "Calendar Date "
    Then User verifies "DateMask_OP  (99-99-99)" mask is present in list
    Then User clicks on cancel button
    Then User Logs off from Admin page without Cache time
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User open application from recent activity
    Then User sets values for prefilled form
      | Field         | Value      | data-dataitemid | Locator Type |
      | DateTextBox   | 06291983   |                 | Input        |
    Then User sets "Calendar Date " to "06291983" date field
    Then User verifies the date format for "Calendar Date " to "12-06-2012"
    Then User clicks next button
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User fills soft Limit form data
      | Value    | data-dataitemid | Locator Type |
      | 12032022 | TextBox_0       | Input        |
      | 12032022 | Calendar_0      | Input        |
    Then User Log Off from current Application
    Then User clicks on "OK" button on incomplete activity pop up dialog
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterMP1P2React_TC_011"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User selects value "DateMask_OP" for field "cboMaskFieldProp"
    Then User clicks on "Delete" button on designer page
    Then User verifies delete Dialog box
    Then User clicks on confirm button
    Then User selects value "PhoneMask_OP" for field "cboMaskFieldProp"
    Then User clicks on "Delete" button on designer page
    Then User clicks on confirm button
    Then User selects value "SSNMask_OP" for field "cboMaskFieldProp"
    Then User clicks on "Delete" button on designer page
    Then User clicks on confirm button
    Then User selects value "ZipMask_OP" for field "cboMaskFieldProp"
    Then User clicks on "Delete" button on designer page
    Then User clicks on confirm button
    Then User clicks on save organisation
    Then User verifies following values are not present in mask dropdown
      | DateMask_OP  |
      | SSNMask_OP   |
      | ZipMask_OP   |
      | PhoneMask_OP |
    Then User clicks on "Designer" on admin toolbar
    Then User clicks on "Wizard Designer" on designer
    Then User selects "FormMaskingWiz_op" value form the Wizard Designer dropdown
    Then User double click on "DateTextBox"
    Then User verifies custom mask as "DateMask_OP"
    Then User clicks on cancel button
    Then User double click on "SSN TextBox"
    Then User verifies custom mask as "SSNMask_OP"
    Then User clicks on cancel button
    Then User double click on "ZipCode"
    Then User verifies custom mask as "ZipMask_OP"
    Then User clicks on cancel button
    Then User double click on "Phone"
    Then User verifies custom mask as "PhoneMask_OP"
    Then User clicks on cancel button
    Then User double click on "Calendar Date "
    Then User verifies custom mask as "DateMask_OP"
    Then User clicks on cancel button
    Then User clicks on "Designer" on admin toolbar
    Then User clicks on "Form Designer" on designer
    Then User clicks "ddlForm" and select "FormMasking_op | FormMasking_op | " from dropdown
    Then User single click "DateTextBox" on "TextBox_0" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies mark value as "None"
    Then User clicks on close button
    Then User single click "SSN TextBox" on "TextBox_1" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies mark value as "None"
    Then User clicks on close button
    Then User single click "ZipCode" on "TextBox_2" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies mark value as "None"
    Then User clicks on close button
    Then User single click "Phone" on "TextBox_3" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies mark value as "None"
    Then User clicks on close button
    Then User single click "Calendar" on "Calendar_0" Form Designer page
    Then User Clicks on Tab "Field Properties"
    Then User verifies mark value as "None"
    Then User clicks on close button

  @RegAdminActivityMasterCP1MVC @AdminTests
  Scenario: TC_001 settings for product MVC Automation Product 2
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterCP1MVC_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "01AutoUpdateandDelete | 01AutoUpdateandDelete | " from dropdown
    Then User deletes all the controls on form
    Then User add "BUTTON" control on form
    Then User open properties for "Button_0"
    Then User select "Custom Action" as current action and "Data Entry Review" as custom action
    Then User add "TextBox" control on form
    Then User open properties for "TextBox_0"
    Then User Enters "120" in Text Field "Top"
    Then User Enters "60" in Text Field "Left"
    Then User Clicks on "fieldNameDropdown" in admin APP
    Then User Enters "First Name" in Text Field "TextField"
    Then User clicks on Update button and close the window
    Then User save form controls
    Then User add "TextBox" control on form
    Then User open properties for "TextBox_1"
    Then User Enters "120" in Text Field "Top"
    Then User Enters "300" in Text Field "Left"
    Then User Clicks on "fieldNameDropdown" in admin APP
    Then User Enters "Last Name" in Text Field "TextField"
    Then User clicks on Update button and close the window
    Then User save form controls
    Then User navigates to "Home" toolbar menu
    Then User clicks "Packages" Tab
    Then User clicks on "Forms/Wizards In Package" tab on Package page
    Then User verify "01Automation Form" under Forms and Wizards

  @RegAdminActivityMasterCP1MVC @AdminTests
  Scenario: TC_002 settings for product MVC Automation Product Approved
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterCP1MVC_TC_002"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Product2"
    Then User selects Optional Forms "_01Automation Form"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Review custom button is displayed
    Then User opens "Page 1" Required for Form "Test Form Multiple Signer for Automation Project"
    Then User sets values for prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type |
      | Contract Number | 1234567890    | Contract_Number                  | Input        |
    Then User clicks "Next Page" button 3 times till last page
    Then User sets values for prefilled form
      | Field      | Value      | data-dataitemid  | Locator Type |
      | First Name | AgentShiba | Agent_FirstName  | Input        |
      | Last Name  | AgentLast  | Agent_LastName   | Input        |
      | Agent ID   | 98765      | Agent_FLIDNumber | Input        |
      | Percentage | 10         | Agent_Commission | Input        |
    Then User verifies prefilled form for Forms Only Application
      | Field      | Value      | data-item-id     | Locator Type |
      | First Name | AgentShiba | Agent_FirstName  | Input        |
      | Last Name  | AgentLast  | Agent_LastName   | Input        |
      | Agent ID   | 98765      | Agent_FLIDNumber | Input        |
      | Percentage | 10         | Agent_Commission | Input        |
    Then User clicks on Close icon on Toast Popup New
    Then User opens "Page 1" Optional for Form "_01Automation Form"
    Then User opens Menu "Data Entry Review"
    Then User Verifies popup "Back Office Action is being performed."
    Then User verifies pop up message "Activity is sent for data entry review."
    Then User clicks Ok popup button
    Then User verifies application is display in Locked mode
    Then User Verifies Data Entry Tab status "data entry review"
    Then User opens Menu "Other Actions  "
    Then User verifies that the menu item "Client Fill" is "not present"
    Then User verifies that the menu item "Client Fill and Sign" is "not present"
    Then User verifies that the menu item "Share" is "disabled"
    Then User verifies that the menu item "Transfer" is "not present"
    Then User verifies that the menu item "Requests" is "disabled"
    Then User Verifies Continue button is disabled
    Then User opens Menu "Home"
    Then User Verifies Application Status as "In Data Entry Review"
    Then User clicks "All Activities" Tab
    Then User verifies "Delete" button should be "not present"
    Then User opens Menu "Home"
    Then User clicks "Review Queue" Tab
    Then User click on the Review Queue button with title "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User Verifies app showing in pre submit list
    Then User verifies that the link "Application PDF" is "enabled"
    Then User verifies that the link "Application History" is "enabled"
    Then User verifies that the link "Queue History" is "enabled"
    Then User verifies that the link "Attach Documents" is "enabled"
    Then User verifies that the link "Audit Report" is "enabled"
    Then User verifies application status should be "In Data Entry Review" in pre-submit
    Then User verifies "Approve Application" button should be "disabled"
    Then User verifies "Reject Application" button should be "disabled"
    Then User verifies "More Info Application" button should be "disabled"
    Then User clicks on review queue application button "Review"
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies "Approve" button should be "enabled"
    Then User verifies "Reject" button should be "enabled"
    Then User verifies "More Info" button should be "enabled"
    Then User clicks on review queue application button "Approve"
    Then User Verify the Default message "This application has been processed and approved by the reviewer [AUTOUser1_FLADEMO2_AUTO]. The application will be unlocked and move to data entry."
    Then User on Approve Activity dialog window enters own comment and clicks "Approve" button
    Then User Verifies app not showing in pre submit list
    Then User opens Menu "Home"
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User sets values for prefilled form
      | Field      | Value         | data-dataitemid | Locator Type |
      | First Name | UserFirstName | First Name      | Input        |
      | Last Name  | UserLastName  | Last Name       | Input        |
    Then User opens Menu "Other Actions  "
    Then User verifies that the menu item "Request Client to Fill App" is "enabled"
    Then User verifies that the menu item "Share" is "enabled"
    Then User verifies that the menu item "Transfer" is "enabled"
    Then User opens Menu "Data Entry Review"
    Then User clicks Ok popup button
    Then User verifies application is display in Locked mode
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History
      | Status                     | Status Description                                                      |
      | Updates by Agent           | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'. Saved                    |
      | In Data Entry Review       | Activity was locked to begin the data entry review process.             |
      | Updates by Agent           | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'. Saved                    |
      | Data Entry Review Approved | Data Entry Review has been approved for activity AT Automation Product2 |
      | Activity Approved          | id: txtActionRemarks]AT Automation Product2                             |
      | Locked for Review          | Activity was locked to begin the review process.                        |

  @RegAdminActivityMasterCP1MVC @AdminTests
  Scenario: TC_003 settings for product MVC Automation Product Rejected
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterCP1MVC_TC_003"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Automation Product2"
    Then User selects Optional Forms "_01Automation Form"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Review custom button is displayed
    Then User opens "Page 1" Required for Form "Test Form Multiple Signer for Automation Project"
    Then User sets values for prefilled form
      | Field          | Value         | data-dataitemid                  | Locator Type |
      | Contract Number | 1234567890    | Contract_Number                  | Input        |
    Then User clicks "Next Page" button 3 times till last page
    Then User sets values for prefilled form
      | Field      | Value      | data-dataitemid  | Locator Type |
      | First Name | AgentShiba | Agent_FirstName  | Input        |
      | Last Name  | AgentLast  | Agent_LastName   | Input        |
      | Agent ID   | 98765      | Agent_FLIDNumber | Input        |
      | Percentage | 10         | Agent_Commission | Input        |
    Then User clicks on Close icon on Toast Popup New
    Then User opens "Page 1" Optional for Form "_01Automation Form"
    Then User opens Menu "Data Entry Review"
    Then User Verifies popup "Back Office Action is being performed."
    Then User verifies pop up message "Activity is sent for data entry review."
    Then User clicks Ok popup button
    Then User verifies pop message "Back Office Action is being performed." disappears
    Then User verifies application is display in Locked mode
    Then User Verifies Data Entry Tab status "data entry review"
    Then User opens Menu "Other Actions  "
    Then User verifies that the menu item "Client Fill" is "not present"
    Then User verifies that the menu item "Client Fill and Sign" is "not present"
    Then User verifies that the menu item "Share" is "disabled"
    Then User verifies that the menu item "Transfer" is "not present"
    Then User verifies that the menu item "Requests" is "disabled"
    Then User Verifies Continue button is disabled
    Then User opens Menu "Home"
    Then User Verifies Application Status as "In Data Entry Review"
    Then User clicks "All Activities" Tab
    Then User verifies "Delete" button should be "not present"
    Then User opens Menu "Home"
    Then User clicks "Review Queue" Tab
    Then User click on the Review Queue button with title "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User Verifies app showing in pre submit list
    Then User verifies that the link "Application PDF" is "enabled"
    Then User verifies that the link "Application History" is "enabled"
    Then User verifies that the link "Queue History" is "enabled"
    Then User verifies that the link "Attach Documents" is "enabled"
    Then User verifies that the link "Audit Report" is "enabled"
    Then User verifies application status should be "In Data Entry Review" in pre-submit
    Then User verifies "Approve Application" button should be "disabled"
    Then User verifies "Reject Application" button should be "disabled"
    Then User verifies "More Info Application" button should be "disabled"
    Then User clicks on review queue application button "Review"
    Then User Verifies popup "Lock and Review Order"
    Then User clicks Lock and Review Order
    Then User verifies "Approve" button should be "enabled"
    Then User verifies "Reject" button should be "enabled"
    Then User verifies "More Info" button should be "enabled"
    Then User clicks on review queue application button "Reject"
    Then User Verifies popup "Reject Activity"
    Then User Verify the Default message "This application has been processed and rejected by the reviewer [AUTOUser1_FLADEMO2_AUTO]. The application will be cancelled disallowing data entry."
    Then User should be able to edit the default message by sending "Reason for Reject"
    Then User lets the default message and clicks on Reject button
    Then User verifies Application should not appear in review queue
    Then User opens Menu "Home"
    Then User Verifies Application Status as "Data Entry Review: Rejected"
    Then User clicks "All Activities" Tab
    Then User Verifies Recent application status is "Data Entry Review: Rejected" in All Activities
    Then User Verifies "Copy" button is disabled in All Activities Page
    Then User Searches for application
    Then User clicks "View" button
    Then User verifies Activity is cancelled and no longer available "Activity is cancelled and no longer available for data entry due to errors in the data entry review" should contain the text:
    Then User verifies Activity is cancelled and no longer available "Please create a new activity, since copy option for this activity is unavailable." should contain the text:
    Then User opens Menu "Other Actions  "
    Then User verifies that the menu item "Request Client to Fill App" is "not present"
    Then User verifies that the menu item "client fill & sign and document" is "not present"
    Then User verifies that the menu item "Share" is "disabled"
    Then User verifies that the menu item "Transfer" is "not present"
    Then User verifies that the menu item "Requests" is "disabled"
    Then User clicks on lock icon
    Then User verifies Activity Summary Dialog box is displayed
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History
      | Status                     | Status Description                                                      |
      | Data Entry Review Rejected | Data Entry Review has been rejected for activity AT Automation Product2 |
      | Declined                   | Reason for Reject                                                            |
      | Locked for Review          | Activity was locked to begin the review process.                        |

  @RegAdminActivityMasterCP1MVC @AdminTests
  Scenario: AT_110_A Verify the signature can be complete with Validate Identity Verification enabled on Org setting - MVC UI
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterCP1MVC_AT_110"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "select" checkbox "Validate Identity"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Logs off from Admin page
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Automation Product2" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User complete data Entry
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User clicks "Owner" button on signature page
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User navigates to "Owner - Client Identification Verification" page
    Then User do data entry for all fields and enter incorrect SSN "2222" and DOB "10/10/2000"
    Then User clicks "Verified" button on signature page
    Then User verifies validation message displayed for incorrect SSN and DOB
    Then User enter same SSN and DOB as entered in data entry
    Then User clicks "Verified" button on signature page
    Then User navigates to Document Review page for further Signature process
    Then User clicks "Next Page" button 3 times till last page
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User Clicks on Agree Checkbox
    Then User should be on page "Capture Electronic Signature"
    Then User enter signer Full Name as "Vinod vaje" City as "JAIPUR" perform Signature click I Consent
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page

  @RegAdminActivityMasterCP1React @AdminTests
  Scenario: AT_110_B Verify the signature can be complete with Validate Identity Verification enabled on Org setting - REACT UI
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterCP1React_AT_110"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Automation Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies data entry percentage is "98%"
    Then User verifies Page heading "Automation wiz" with form name "Client Data" for data entry flow
    Then User selects radio button "Joint" for "Owner Type"
    Then User selects radio button "Yes" for field "Does the owner have existing or pending life insurance or annuity policies?" from section "Replacement Questions"
    Then User selects radio button "Yes" for field "Are there plans to discontinue, reduce, change or replace any existing life insurance or annuity contracts?" from section "Replacement Questions"
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field         | Value         |
      | First Name    | UserFirstName |
      | Last Name     | UserLastName  |
      | Date of Birth | 10/10/1950    |
      | Zip Code      | 12345         |
      | SSN           | 1234         |
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field         | Value        |
      | First Name    | JointOwnerFN |
      | Date of Birth | 10/10/1950   |
    Then User clicks "Next" button
    Then User selects value "1" for field "How many Primary Beneficiaries do you have?"
    Then User selects value "Spouse" for field "Relationship to Owner"
    Then User set value "100" for field "Percentage of Proceeds"
    Then User set value "UFirstName" for field "First Name"
    Then User set value "ULastName" for field "Last Name"
    Then User clicks "Next" button
    Then User fills required fields and verify fields error should not display "false"
      | Field      | Value          |
      | First Name | AgentFirstName |
      | Last Name  | AgentLastName  |
    Then User clicks "Next" button
    Then User verifies Page heading "Automation wiz" with form name "Payment Details" for data entry flow
    Then User selects value "Replacement/Transfer/Rollover" for field "Payment Method"
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "enter more data" link of data entry met Toast popup
    Then User Verifies data entry percentage is "100%"
    Then User opens "Page 1" Optional for Form "Application222 LN Questionnaire"
    Then User verifies Page heading "Application222 LN Questionnaire" with form name "Page 1" for data entry flow
    Then User fills required fields and verify fields error should not display "false"
      | Field                                  | Value         |
      | Owner_FirstName                        | UserFirstName |
      | Owner_LastName                         | UserLastName  |
      | Owner_ResidentialAddress_Zipcode       | 12345         |
      | JointOwner_DOB                         | 10/10/1950    |
      | OWNER_SSN                              | 1234          |
    Then User Verifies data entry percentage is "100%"
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User clicks "Owner" button on signature page
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User navigates to "Owner - Client Identification Verification" page
    Then User do data entry for all fields and enter incorrect SSN "2222" and DOB "10102000"
    Then User clicks "Verified" button on signature page
    Then User verifies validation message displayed for incorrect SSN and DOB
    Then User enter same SSN and DOB as entered in data entry
    Then User clicks "Verified" button on signature page
    Then User navigates to Document Review page for further Signature process
    Then User clicks "Next Page" button 3 times till last page
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 2 times
    Then User should be on page "Capture Electronic Signature"
    Then User sets value "FullName Signer"  for field "Signer Full Name" for To Signature tab
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page

  @RegAdminActivityMasterCP1React @AdminTests @UpdateAdminSettings
  Scenario: AT_110_C Revert Admin Settings - Uncheck Validate Identity Verification
    Given User is on FireLight login page for TestCase "RegAdminActivityMasterCP1React_AT_110"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "uncheck" checkbox "Validate Identity"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Logs off from Admin page
    Then User Verifies message "Thank you for using our application"

  @AdminTests @RegAdminActivityMasterHP1MVC
  Scenario: AT_053_A HTTP Redirect UI redirect on Submit does not work for Activities with Next Activities - Presale MVC UI
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_053"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Activities" Tab
    Then User scroll to "Needs Determination" tab
    Then User clicks on "Needs Determination" and click on "Next Activities" tab
    Then User click on activity name "application"
    Then User add Activity from Next Activities tab
    Then User clicks on save button
    Then User click on "Organization Config" and select "Groups" form menu list
    Then User clicks on "CE01" group in the list
    Then User clicks on "App" tab
    Then User "select" checkbox "enableHTTPId"
    Then User Verifies checkbox "enableHTTPId" is "selected"
    Then User put "url" in text box
    Then User clicks on save button
    Then User verifies "Group saved." message is displayed
    Then User Logs off from Admin page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Needs Determination Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies text on Electronic signature Declined
      | value                                                                                                 |
      | You have declined to use E-Signature. All signatures for this application must be collected manually. |
      | To upload wet signed documents, click on `Other Actions` and select `Documents`.                      |
      | To revise your decision, click on `Other Actions` and select `Unlock Application`.                    |
    Then User clicks "OK" button on signature page
    Then User clicks "Continue" button
    Then User Clicks on "yes" on confirmation dialog
    Then User clicks "Apply" button
    Then User verifies URL is NOT redirected to "https://www.google.com/"
    Then User Log Off from current Application

  @RegAdminActivityMasterReactHP1 @AdminTests
  Scenario: AT_053_B HTTP Redirect UI redirect on Submit does not work for Activities with Next Activities - Presale React UI
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1React_AT_053"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Needs Determination Wizard Test" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies text on Electronic signature Declined
      | value                                                                                                 |
      | You have declined to use E-Signature. All signatures for this application must be collected manually. |
      | To upload wet signed documents, click on `Other Actions` and select `Documents`.                      |
      | To revise your decision, click on `Other Actions` and select `Unlock Application`.                    |
    Then User clicks "OK" button on signature page
    Then User clicks "Continue" button
    Then User verifies toast message "Finished 1 of 3 Steps. Please Continue."
    Then User Clicks on yes Confirmation dialog
    Then User clicks "Apply" button
    Then User verifies URL is NOT redirected to "https://www.google.com/"
    Then User Log Off from current Application

  @RegAdminActivityMasterHP1MVC @AdminTests @UpdateAdminSettings
  Scenario: AT_053_C Revert Admin Settings - Uncheck Enable HTTP Redirect on Submit
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_053"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User clicks on "CE01" group in the list
    Then User clicks on "App" tab
    Then User "uncheck" checkbox "enableHTTPId"
    Then User Verifies checkbox "enableHTTPId" is "unchecked"
    Then User clicks on save button
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminActivityMasterHP1MVC @AdminTests
  Scenario: AT_054_A HTTP Redirect UI redirect on Submit does work for Activities without a defined Next Activities - Account Opening or Need Determination
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_054"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Activities" Tab
    Then User scroll to "Needs Determination" tab
    Then User clicks on "Needs Determination" and click on "Next Activities" tab
    Then User click on activity name "application"
    Then User remove Activity from Next Activities tab
    Then User clicks on save button
    Then User click on "Organization Config" and select "Groups" form menu list
    Then User clicks on "CE01" group in the list
    Then User clicks on "App" tab
    Then User "select" checkbox "enableHTTPId"
    Then User Verifies checkbox "enableHTTPId" is "selected"
    Then User put "url" in text box
    Then User clicks on save button
    Then User verifies "Group saved." message is displayed
    Then User Logs off from Admin page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Needs Determination Forms Only" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies text on Electronic signature Declined
      | value                                                                                                 |
      | You have declined to use E-Signature. All signatures for this application must be collected manually. |
      | To upload wet signed documents, click on `Other Actions` and select `Documents`.                      |
      | To revise your decision, click on `Other Actions` and select `Unlock Application`.                    |
    Then User clicks "OK" button on signature page
    Then User clicks "Continue" button
    Then User clicks Yes button and verifies the "url" is opening in same tab
    Then User verifies the "Login" page should be open

  @RegAdminActivityMasterReactHP1 @AdminTests
  Scenario: AT_054_B HTTP Redirect UI redirect on Submit does work for Activities without a defined Next Activities - Account Opening or Needs Determination
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1React_AT_054"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Needs Determination" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Needs Determination Wizard Test" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User verifies text on Electronic signature Declined
      | value                                                                                                 |
      | You have declined to use E-Signature. All signatures for this application must be collected manually. |
      | To upload wet signed documents, click on `Other Actions` and select `Documents`.                      |
      | To revise your decision, click on `Other Actions` and select `Unlock Application`.                    |
    Then User clicks "OK" button on signature page
    Then User clicks "Continue" button
    Then User clicks Yes button and verifies the "url" is opening in same tab
    Then User verifies the "Login" page should be open

  @RegAdminActivityMasterHP1MVC @AdminTests @UpdateAdminSettings
  Scenario: TC_054_C Revert Admin Settings - Add Next Activity and uncheck Enable HTTP Redirect
    Then User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_054"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Activities" Tab
    Then User scroll to "Needs Determination" tab
    Then User clicks on "Needs Determination" and click on "Next Activities" tab
    Then User click on activity name "application"
    Then User add Activity from Next Activities tab
    Then User clicks on save button
    Then User click on "Organization Config" and select "Groups" form menu list
    Then User clicks on "CE01" group in the list
    Then User clicks on "App" tab
    Then User "uncheck" checkbox "enableHTTPId"
    Then User Verifies checkbox "enableHTTPId" is "unchecked"
    Then User Logs off from Admin page
    Then User Verifies message "Thank you for using our application"

  @RegAdminActivityMasterHP1MVC @AdminTests
  Scenario: AT_030_Print submitted Only
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_030"
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User "select" checkbox "PrintSubmittedOnly"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Logs off from Admin page
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User selects Optional Forms "One Time Automatic Payment Authorization"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks Expand form menu
    Then User Close the Form Menu by clicking on Collapse button
    Then User captures DATA ENTRY% & verify Data Entry % should not be 100%
    Then User verifies "Continue" Button should be disable
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
    Then User Verifies data entry percentage is "100 %"
    Then User Verifies Continue button Enabled
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is Disabled in Other Action
    Then User clicks Link "[Close]"
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "payor" signer on signature window
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then  User verifies Owner Payor - Client Identification Verification window should be present
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
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
    Then User selects "agent" signer on signature window
    Then User selects "Sign Now" button on Signature Tab
    Then User clicks check box Confirm all documents without reviewing individually. 1 times
    Then User clicks "OK" on Confirmation Dialog
    Then User sets value "Pune"  for field "City" for To Signature tab
    Then User perform Signature on Signature Pad
    Then User selects "I Consent" button on Signature Tab
    Then User clicks "Continue" button
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies toast message "Application is pending transmission." or "Application is finished." on Application Page
    Then User verifies second toast message "To print or view the application, history or documents, click on Other Actions." or "Thank you for your business!" on Application Page
    Then User verifies second toast message "To print or view the application, history or documents, click on Other Actions." or "Thank you for your business!" on Application Page
    Then User verifies "FINALIZE" tab is green tick mark
    Then User verifies "SIGNATURES" tab is green tick mark
    Then User navigates to Home page
    Then User verifies Application Status on Recent Activity is "Pending Transmission" or "Complete" now
    Then User open application from recent activity
    Then User clicks "Other Actions" button
    Then User Verifies "Display/Print PDF" is enabled in Other Action

  @RegAdminActivityMasterHP1MVC @AdminTests @UpdateAdminSettings
  Scenario: AT_030_Revert Admin Settings - Check Allow NIGO Printing and Uncheck Print Submitted Only
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_030"
    Then User on Login Page enters valid username as "Autouser1_FLADIST" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Activity"
    Then User "select" checkbox "AllowNIGOPrinting"
    Then User Verifies checkbox "PrintSubmittedOnly" is "unchecked"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Logs off from Admin page
    Then User Verifies message "Thank you for using our application"

  @RegAdminActivityMasterHP1MVC @AdminTests
  Scenario: TC_004_Verify Same browser for user Login Admin and App and Verify User login works on different browser as well when already logged on one browser
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_TC_004"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User verifies the "Home" page should be open
    Then User "open" new tab in browser
    Then User opens "Firelight" Application Login Page
    Then User verifies the "Welcome" page should be open
    Then User Opens Edge Browser and Opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button in Edge
    Then User verifies the "Welcome" page should be open in edge
    Then User "open" new tab in browser Edge
    Then User Loads the URL generated previously for "adminUrl" in edge
    Then User verifies the "Home" page should be open in edge
    Then User Clears Tabs In Edge Browser

  @AdminTests @RegAdminActivityMasterHP1MVC
  Scenario: AT_048_HTTP Redirect - HTTP Redirect - Admin setup
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_048"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "CE01"
    Then User clicks "App" Tab
    Then User Verifies http redirect "enableHTTPId" checkbox is checked or unchecked and unchecks it
    Then User verifies URL text box below Enable HTTP Redirect checkbox is "disabled"
    Then User "select" checkbox "enableHTTPId"
    Then User verifies URL text box below Enable HTTP Redirect checkbox is "enabled"
    Then User "select" checkbox "allowNigoSubmitId"
    Then User "select" checkbox "enableAutoSubmitId"
    Then User Verifies checkbox "enableHTTPId" is "checked"
    Then User Verifies checkbox "allowNigoSubmitId" is "checked"
    Then User Verifies checkbox "enableAutoSubmitId" is "checked"
    Then User "uncheck" checkbox "allowNigoSubmitId"
    Then User "select" checkbox "enableCustomSubmitPageId"
    Then User Verifies checkbox "enableHTTPId" is "unchecked"
    Then User "select" checkbox "enableHTTPId"
    Then User Verifies checkbox "enableCustomSubmitPageId" is "unchecked"
    Then User "select" checkbox "disableSubmitId"
    Then User Verifies checkbox "enableHTTPId" is "unchecked"
    Then User "select" checkbox "allowNigoSubmitId"
    Then User "select" checkbox "enableCustomSubmitPageId"
    Then User "select" checkbox "enableHTTPId"
    Then User Verifies checkbox "enableAutoSubmitId" is "checked"
    Then User enters "urlValue" in the URL field
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "OK" button on signature page
    Then User verifies URL is NOT redirected to "https://www.google.com/"
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_048"
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "CE01"
    Then User clicks "App" Tab
    Then User "unselect" checkbox "enableHTTPId"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User opens "Firelight" Application Login Page
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Income Choice" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks on Continue button
    Then User clicks Decline E-Signature on Electronic Signatures option window
    Then User clicks "OK" button on signature page
    Then User verifies URL is NOT redirected to "https://www.google.com/"
    Then User Verifies Final popup after application submitted with message "Application is finished."
    Then User Logs Off from current Application
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterHP1MVC_AT_048"
    Then User on Login Page enters valid username as "CEUSER1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "CE01"
    Then User clicks "App" Tab
    Then User "unselect" checkbox "enableAutoSubmitId"
    Then User "unselect" checkbox "allowNigoSubmitId"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options


  @AdminTests @RegAdminActivityMasterHP2MVC
  Scenario: AT_105_Add Product Type Filter UI Selection for each product on the product details tab in the admin tool. This field will define the product type selection options available on the Create New Application page.
    Given User is on FireLight login page for TestCase "RegAdminActivityMasterHP2MVC_AT_105"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User verifies "Product Category" displayed on the Products Page
    Then User verifies "Product Filter Type (UI)" displayed on the Products Page
    Then User verifies "Rank Order" displayed on the Products Page
    Then User clicks on product "Demo Product For Automation" under Product List
    Then User selects "Term Life" Type from Products Type Filter UI dropdown
    Then User clicks on save button
    Then User Clicks on Home button on Admin page
    Then User Logs Off from current Application
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "Term Life"
    Then User selects Given Product "Demo Product for Automation" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Logs Off from the current Application and clicks "OK" on Confirmation Dialog
    Then User is on FireLight login page for TestCase "RegAdminActivityMasterHP2MVC_AT_105"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User clicks on product "Demo Product For Automation" under Product List
    Then User selects "Fixed Annuity" Type from Products Type Filter UI dropdown
    Then User clicks on save button
    Then User Clicks on Home button on Admin page
    Then User clicks "Products" Tab
    Then User clicks on product "Demo Product For Automation" under Product List
    Then User selects "Accident And Health" Type from Products Type dropdown
    Then User clicks on save button
    Then User verifies "Accident And Health" is selected from the Product Type
    Then User verifies "Fixed Annuity" is selected from the Product Type Filter UI
    Then User Clicks on Home button on Admin page
    Then User Logs Off from current Application
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "Fixed Annuity"
    Then User opens Given Product "Demo Product For Automation" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_018_A When Disable Copy with Changes & Disable Copy As Is selected
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_018"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA10"
    Then User "select" checkbox "Disable Copy As Is"
    Then User "select" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Verifies "Copy" button is disabled in All Activities Page
    Then User Clicks on disabled Button "copy" on AllActivities
    Then User verify page title is "All Activities"

  @RegAdminAppAllActivityMVCMP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_018_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_018"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_019_When Disable Copy with Changes and Disable Copy As Is are both unchecked
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_019"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies dialog window "Copy"
    Then User verify "copy Message" message in "copyAppMsg" field on Admin app
    Then User verify "Copy As Is" button "exists" on Admin page
    Then User verify "Copy With Changes" button "exists" on Admin page
    Then User verify "Copy Cancel" button "exists" on Admin page
    Then User clicks "Copy As Is" button
    Then User verifies "Copy Activity" popup box appeared
    Then User verify "Name" button "exists" on Admin page
    Then User verify "Ok" button "exists" on Admin page
    Then User verify "Cancel" button "exists" on Admin page
    Then User clicks on "Ok Popup" link
    Then User verifies copy of application created
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "All Activities" Tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies dialog window "Copy"
    Then User clicks "Copy with Changes" button
    Then User should be on page "Create New Application"
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "AppName" created successfully

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_016_When Disable Copy As Is selected
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_016"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA10"
    Then User verify "Disable Change Carrier Copy With Changes" button "does not exist" on Admin page
    Then User verify "Disable Copy with Changes" button "exists" on Admin page
    Then User verify "Disable Copy As Is" button "exists" on Admin page
    Then User "select" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User should be on page "Create New Application"

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_017_A When Disable Copy with Changes selected
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_017"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "select" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies "Copy Activity" popup box appeared
    Then User verify "Name" button "exists" on All Activity page
    Then User verify "Ok" button "exists" on All Activity page
    Then User verify "Cancel" button "exists" on All Activity page
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies copy of application created

  @RegAdminAppAllActivityMVCMP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_017_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_017"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_020_A Verify that the Copy with Changes option is launched If Disable Copy As Is is selected for the group role code
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_020"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD10"
    Then User "select" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User should be on page "Create New Application"

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_021_Verify that the Copy As Is option is launched Copy Activity dialog  if Disable Copy with Changes is selected for the group role code
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_021"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "select" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies "Copy Activity" popup box appeared
    Then User verify "Name" button "exists" on Admin page
    Then User verify "Ok" button "exists" on Admin page
    Then User verify "Cancel" button "exists" on Admin page
    Then User clicks "ok" on Confirmation Dialog
    Then User verifies copy of application created

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_022_If both Disable Copy As Is and Disable Copy with Changes are selected for the group role code Verify that the Copy is not allowed
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_022"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD10"
    Then User "select" checkbox "Disable Copy As Is"
    Then User "select" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Verifies "Copy" button is disabled in All Activities Page
    Then User Clicks on disabled Button "copy" on AllActivities
    Then User verify page title is "All Activities"

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_023_If both Disable Copy As Is and Disable Copy with Changes are Not selected for the group role code verify that the original Copy dialog is launched
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_023"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies dialog window "Copy"
    Then User verify "copy Message" message in "copyAppMsg" field on Admin app
    Then User verify "Copy As Is" button "exists" on Admin page
    Then User verify "Copy With Changes" button "exists" on Admin page
    Then User verify "Copy Cancel" button "exists" on Admin page
    Then User clicks "Copy As Is" button
    Then User verifies "Copy Activity" popup box appeared
    Then User verify "Name" button "exists" on Admin page
    Then User verify "Ok" button "exists" on Admin page
    Then User verify "Cancel" button "exists" on Admin page
    Then User clicks on "Ok Popup" link
    Then User verifies copy of application created
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "All Activities" Tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies dialog window "Copy"
    Then User Clicks on Button "Copy" on AllActivities
    Then User clicks "Copy with Changes" button
    Then User should be on page "Create New Application"
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies "AppName" created successfully

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_024_A Verify The Carrier selection is hidden for Copy With Changes  if Disable Change Carrier in Copy with Changes is selected and  Disable Copy with Changes is not selected in Groups
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_024"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User "select" checkbox "Disable Change Carrier Copy With Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User Verifies options present for "CarrierID" dropdown
      | options                            |
      | Select Carrier                     |
      | FL Access Brokerage - Automation 2 |
      | FL Access Carrier - Automation     |
    Then User Selects "FL Access Carrier - Automation" option in "CarrierID" Dropdown
    Then User selects Given Product "Easy Signing" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User navigate to home page
    And User clicks on "OK" button on incomplete activity pop up dialog
    Then User clicks "All Activities" Tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies dialog window "Copy"
    Then User verify "copy Message" message in "copyAppMsg" field on Admin app
    Then User verify "Copy As Is" button "exists" on Admin page
    Then User verify "Copy With Changes" button "exists" on Admin page
    Then User verify "Copy Cancel" button "exists" on Admin page
    Then User clicks "Copy with Changes" button
    Then User should be on page "Create New Application"
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User verify "Carrier" button "does not exist" on Admin page
    Then User verify all displayed products are for "FL Access Carrier - Automation" and not for "FL Access Brokerage - Automation 2"

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_025_If Disable Copy with Changes AND Disable Change Carrier in Copy with Changes are both selected on a Group, then Copy with Changes option does not appear in All Activities, regardless of the Disable Change Carrier in Copy with Changes selection
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_025"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "select" checkbox "Disable Copy with Changes"
    Then User "select" checkbox "Disable Change Carrier Copy With Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies "Copy Activity" popup box appeared
    Then User verify "Name" button "exists" on Admin page
    Then User verify "Ok" button "exists" on Admin page
    Then User verify "Cancel" button "exists" on Admin page
    Then User clicks on "Ok Popup" link
    Then User verifies copy of application created

  @RegAdminAppAllActivityMVCMP1 @AdminTests
  Scenario: TC_026_A Verify Copy With Changes action performed when Copy As Is is disabled with Disable Change Carrier Copy With Changes Checked
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_026"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD10"
    Then User "select" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User "select" checkbox "Disable Change Carrier Copy With Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "All Activities" Tab
    Then User notes first application name from all activities tab
    Then User Clicks on Button "Copy" on AllActivities
    Then User verifies Dialog box Disappear
   Then User should be on page "Create New Application"

  @RegAdminAppAllActivityMVCMP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_027_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminAppAllActivityMVCMP1_TC_027"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST2" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD10"
    Then User "uncheck" checkbox "Disable Copy As Is"
    Then User "uncheck" checkbox "Disable Copy with Changes"
    Then User "uncheck" checkbox "Disable Change Carrier Copy With Changes"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminEmailMVCMP1 @AdminTests
  Scenario: TC_001_Add replacement variable for the Product Prospectus
    Given User is on FireLight Admin login page for TestCase "RegAdminEmailMVCMP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User clicks on product "ESign with Multiple signers" under Product List
    Then User selects "Prospectus" from "ProductLink" dropdown
    Then User Enters "google.com" in Text Field "ProductLinkURL"
    Then User clicks "Save" button
    Then User verifies "Product saved." message without any error
    Then User click on "Organization Config" and select "Email" form menu list
    Then User selects "Activities" from "EmailCategory" dropdown
    Then User selects "Leave-Behind Email" from "EmailTemplate" dropdown
    Then User Enters " Click link <PRODUCT_LINK> to download <PRODUCT_LINK_NAME>" in Email Template
    Then User clicks "Save Template" button
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "ESign with Multiple signers" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
    Then User should be on page "Electronic Review"
    Then User clicks "Decline" E-Review
    Then User clicks Ok to decline Electronic Review
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "Owner" signer on signature window
    Then User selects "Insured" signer on signature window
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User select "signer download application" email with subject "Print or download your signed Application." on gmail page and save "email link"
    Then User verify expected mailbody is "printMailContent"

  @RegAdminEmailMVCMP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_001_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEmailMVCMP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User clicks on product "ESign with Multiple signers" under Product List
    Then User selects "" from "ProductLink" dropdown
    Then User Enters "" in Text Field "ProductLinkURL"
    Then User clicks "Save" button
    Then User click on "Organization Config" and select "Email" form menu list
    Then User selects "Activities" from "EmailCategory" dropdown
    Then User selects "Leave-Behind Email" from "EmailTemplate" dropdown
    Then User removes " Click link <PRODUCT_LINK> to download <PRODUCT_LINK_NAME>" in Email Template
    Then User selects "Activity Ready for Agent Signature" from "EmailTemplate" dropdown
    Then User clicks "Save Template" button
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminEmailMVCMP1 @AdminTests
  Scenario: TC_005_E Generate Leave-Behind Email When Product link is Prospectus setup for product
    Given User is on FireLight Admin login page for TestCase "RegAdminEmailMVCMP1_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User clicks on product "Automation Product Link with Rule" under Product List
    Then User selects "Buyer's Guide" from "ProductLink" dropdown
    Then User Enters "yahoo.com" in Text Field "ProductLinkURL"
    Then User clicks "Save" button
    Then User click on "Organization Config" and select "Email" form menu list
    Then User selects "Activities" from "EmailCategory" dropdown
    Then User selects "Leave-Behind Email" from "EmailTemplate" dropdown
    Then User Enters " Click link <PRODUCT_LINK> to download <PRODUCT_LINK_NAME>" in Email Template
    Then User clicks "Save Template" button
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Automation Product Link with Rule" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User "Data Entry has met the requirements" popup showing, Close Popup
    Then User Verifies data entry percentage is "100 %"
    Then User clicks "Continue" button
    Then User should be on page "Electronic Review"
    Then User clicks "Decline" E-Review
    Then User clicks Ok to decline Electronic Review
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User should be on page "List of Required Signers for AppName"
    Then User selects "Payor" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User select "signer download application" email with subject "Print or download your signed Application." on gmail page and save "email link"
    Then User verify expected mailbody is "printMailContent"

  @RegAdminEmailMVCMP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_005_F Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEmailMVCMP1_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Products" Tab
    Then User clicks on product "Automation Product Link with Rule" under Product List
    Then User selects "" from "ProductLink" dropdown
    Then User Enters "" in Text Field "ProductLinkURL"
    Then User clicks "Save" button
    Then User click on "Organization Config" and select "Email" form menu list
    Then User selects "Activities" from "EmailCategory" dropdown
    Then User selects "Leave-Behind Email" from "EmailTemplate" dropdown
    Then User removes " Click link <PRODUCT_LINK> to download <PRODUCT_LINK_NAME>" in Email Template
    Then User clicks "Save Template" button
    Then User selects "Activity Ready for Agent Signature" from "EmailTemplate" dropdown
    Then User clicks "Save Template" button
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminEsignMVCCP1 @AdminTests
  Scenario: TC_011_A Verify Disable Send Email Request group setting for Client signer
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_011"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA05"
    Then User "select" checkbox "DisableSendEmailRequest"
    Then User "select" checkbox "RequireAllPage"
    Then User "uncheck" checkbox "RequireSigPad"
    Then User Verifies checkbox "RequireSigPad" is "unchecked"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User Verifies checkbox "DisableSendEmailRequest" is "checked"
    Then User Verifies checkbox "RequireAllPage" is "checked"
    Then User reload the page
    Then User on Groups page selects Role Code as "External"
    Then User "select" checkbox "RequireAllPage"
    Then User "uncheck" checkbox "AgentAllPageNotRequired"
    Then User "uncheck" checkbox "RequireSigPad"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User Verifies checkbox "AgentAllPageNotRequired" is "unchecked"
    Then User Verifies checkbox "RequireAllPage" is "checked"
    Then User Verifies checkbox "RequireSigPad" is "unchecked"
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" signer on signature window
    Then User verify "Proceed" button "does not exist" on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User verify "Agree" button "does not exist" on signature page
    Then User clicks "Next Page" button on signature page
    Then User verify "Agree" button "exists" on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User selects "Marck Script" font on capture electronic signature window
    Then User clicks "I Consent" button on signature page
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User verify "Agree" button "exists" on signature page
    Then User verify "Confirm All Documents" button "exists" on signature page
    Then User clicks "Next Page" button on signature page
    Then User clicks "Confirm All Documents" button on signature page
    Then User clicks "Cancel" on Confirmation Dialog
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "Clear Signature" button on signature page
    Then User clicks "I Consent" button on signature page
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "producer" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required signer details for sending mail on signature window
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User clicks "Back To Application" button
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User clicks "Sign Activity" button on page
    Then User verify "Agree" button "does not exist" on signature page
    Then User verify "Confirm All Documents" button "does not exist" on signature page
    Then User clicks "Next Page" button on signature page
    Then User verify "Agree" button "exists" on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "agent" on capture electronic signature window
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    Then User should Logoff from the External page and Thank you for using our application page should display

  @RegAdminEsignMVCCP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_011_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_011"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA05"
    Then User "uncheck" checkbox "DisableSendEmailRequest"
    Then User "uncheck" checkbox "RequireAllPage"
    Then User "select" checkbox "RequireSigPad"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User reload the page
    Then User on Groups page selects Role Code as "External"
    Then User "uncheck" checkbox "RequireAllPage"
    Then User "select" checkbox "AgentAllPageNotRequired"
    Then User "select" checkbox "RequireSigPad"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User Verifies checkbox "AgentAllPageNotRequired" is "checked"
    Then User Verifies checkbox "RequireAllPage" is "unchecked"
    Then User Verifies checkbox "RequireSigPad" is "checked"
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminEsignMVCCP1 @AdminTests
  Scenario: TC_012_A Verify Disable Send Email Request group setting for Agent signer
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_012"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA05"
    Then User "select" checkbox "DisableSendEmailRequestAgent"
    Then User Verifies "RequireSigPad" checkbox is checked or unchecked and checks it
    Then User "uncheck" checkbox "AgentAllPageNotRequired"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "agent" signer on signature window
    Then User verify "Proceed" button "does not exist" on signature page
    Then User should be on page "Agent : Deep05"
    Then User verify Document review window showing "formNamePage1" on signature window
    Then User verify "Agree" button "exists" on signature page
    Then User verify "Confirm All Documents" button "does not exist" on signature page
    Then User clicks "Next Page" button on signature page
    Then User verify Document review window showing "formNamePage2" on signature window
    Then User clicks "Previous Page" button 1 times till last page
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User clicks "I Consent" button on signature page
    Then User verify error message "A signature capture is required. Please sign using a mouse, your finger, or a stylus." on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User clicks "Cancel" button on signature page
    Then User selects "owner" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "owner" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User clicks "Back To Application" button
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Login to External Link using Client Last 4 Digits of SSN Govt ID
    Then User clicks "Sign Activity" button on page
    Then User verify "Agree" button "exists" on signature page
    Then User verify "Confirm All Documents" button "does not exist" on signature page
    Then User clicks "Next Page" button on signature page
    Then User verify Document review window showing "formNamePage2" on signature window
    Then User verify "Agree" button "exists" on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User clicks "I Consent" button on signature page
    Then User verify error message "A signature capture is required. Please sign using a mouse, your finger, or a stylus." on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    Then User should Logoff from the External page and Thank you for using our application page should display

  @RegAdminEsignMVCCP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_012_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_012"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA05"
    Then User "uncheck" checkbox "DisableSendEmailRequestAgent"
    Then User "select" checkbox "RequireSigPad"
    Then User "select" checkbox "AgentAllPageNotRequired"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminEsignMVCCP1 @AdminTests
  Scenario:  TC_021_A Verify group setting Disable Sign Now for Agent when checked along with FLI Flags to Enable & Disable Sign Now  and Sign Later for both Agent & Client Parties. (E-Sign Legacy)"
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_021"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA05"
    Then User "select" checkbox "DisableSignNowAgent"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "agent" signer on signature window
    Then User verify "Proceed" button "does not exist" on signature page
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User enter all required "agent" details for sending mail on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Notes the URL generated and clicks Back to Signer
    Then User selects "owner" signer on signature window
    Then User verify "Proceed" button "does not exist" on signature page
    Then User should be on page "Client Signature Choice for Owner"
    Then User verify "Sign Now" button "exists" on signature page
    Then User verify "Send Email Request" button "exists" on signature page
    Then User clicks "Sign Now" button on signature page
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User clicks "Back To Application" button
    And User verifies "Passcode" is displayed and store it
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "Newpasscode"
    Then User clicks "Sign Activity" button on page
    Then User verify "Agree" button "exists" on signature page
    Then User verify "Confirm All Documents" button "exists" on signature page
    Then User clicks "Confirm All Documents" button on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks on close Popup on DataEntry Page
    Then User clicks "Other Actions" button
    Then User click "Unlock" submenu
    Then User clicks "Unlock Activity" button on data entry page
    Then User fills required fields and verify fields error should not display "false"
      | Field                          | Value         |
      | FLI_DISABLE_AGENT_SIGN_NOW     | False         |
      | FLI_DISABLE_SIGN_LATER         | True          |
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" signer on signature window
    Then User should be on page "Agent Identification Verification"
    Then User clicks "Cancel" button on signature page
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice for Agent : Deep05"
    Then User clicks "Sign Now" button on signature page
    Then User clicks "Agree" button on signature page
    Then User On "Agent On-Site Signature" window Agent Full name & Agent ID is pre filled, needs to enter City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "producer" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User clicks "Cancel" button on signature page
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User clicks on close Popup on DataEntry Page
    Then User Verifies data entry percentage is "100%"
    Then User fills required fields and verify fields error should not display "false"
      | Field                          | Value         |
      | FLI_DISABLE_SIGN_LATER         |               |
      | FLI_DISABLE_SIGN_NOW           | True          |
      | FLI_DISABLE_AGENT_SIGN_NOW     | True          |
      | FLI_DISABLE_AGENT_SIGN_LATER   | False         |
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" signer on signature window
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User clicks "Cancel" button on signature page
    Then User selects "agent" signer on signature window
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User clicks "Cancel" button on signature page

  @RegAdminEsignMVCCP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_021_B Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_021"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA05"
    Then User "uncheck" checkbox "DisableSignNowAgent"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminEsignMVCCP1 @AdminTests
  Scenario: TC_026_A Verify group setting Disable Sign Now for Client when checked along with FLI Flags to Enable & Disable Sign Now  and Sign Later for both Agent & Client Parties. (E-Sign Legacy)
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_026"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA05"
    Then User "select" checkbox "DisableSignNow"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" signer on signature window
    Then User verify "Proceed" button "does not exist" on signature page
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User enter all required "owner" details for sending mail on signature window
    Then User clicks "Generate Link Without Email" button on signature page
    Then User Notes the Generated URL & Passcode for Client Signer Party User Clicks Back to Signer
    Then User selects "agent" signer on signature window
    Then User verify "Proceed" button "does not exist" on signature page
    Then User should be on page "Agent Signature Choice for Agent : Deep05"
    Then User verify "Sign Now" button "exists" on signature page
    Then User verify "Send Email Request" button "exists" on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User clicks "Cancel" button on signature page
    Then User selects "agent 2" signer on signature window
    Then User should be on page "Agent Signature Choice for Agent 2"
    Then User verify "Sign Now" button "exists" on signature page
    Then User verify "Send Email Request" button "exists" on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify "Agree" button "exists" on signature page
    Then User verify "Confirm All Documents" button "exists" on signature page
    Then User clicks "Confirm All Documents" button on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Agent 2" under completed signatures section with "Re-Sign" button on signature page
    Then User clicks "Back To Application" button
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "signerPasscode"
    Then User clicks "Sign Activity" button on page
    Then User verify "Agree" button "exists" on signature page
    Then User verify "Confirm All Documents" button "does not exist" on signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks on close Popup on DataEntry Page
    Then User clicks "Lock" button on data entry page
    Then User clicks "Unlock" button on data entry page
    Then User clicks "Unlock Activity" button on data entry page
    Then User fills required fields and verify fields error should not display "false"
      | Field                          | Value         |
      | FLI_DISABLE_SIGN_LATER         | True          |
      | FLI_DISABLE_SIGN_NOW           | False         |
      | FLI_DISABLE_AGENT_SIGN_NOW     | True          |
      | FLI_DISABLE_AGENT_SIGN_LATER   | False         |
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "owner" signer on signature window
    Then User should be on page "Agent Identification Verification"
    Then User clicks "Cancel" button on signature page
    Then User selects "producer" signer on signature window
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User clicks "Cancel" button on signature page
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User clicks on close Popup on DataEntry Page
    Then User Verifies data entry percentage is "100%"
    Then User fills required fields and verify fields error should not display "false"
      | Field                          | Value         |
      | FLI_DISABLE_AGENT_SIGN_LATER   | True         |
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "agent" signer on signature window
    Then User should be on page "Agent Signature Choice for Agent : Deep05"
    Then User verify "Sign Now" button "does not exist" on signature page
    Then User verify "Send Email Request" button "does not exist" on signature page
    Then User verify error message "Please indicate below the method you would like to use to obtain the agent signature." on signature page
    Then User clicks "Back To Application" button
    Then User clicks on close Popup on DataEntry Page

  @RegAdminEsignMVCCP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_026_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_026"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLA05"
    Then User "uncheck" checkbox "DisableSignNow"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"


  @RegAdminEsignMVCHP1 @AdminTests
  Scenario:TC_002_C Verify ESign Now and Sign Later when Validate Identity Verification is selected
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCHP1_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "select" checkbox "Validate Identity"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "React ESign Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User Verifies Data Entry Met Toast popup is showing
    Then User clicks on "CONTINUE" link of data entry met Toast popup
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
    Then User Enters "vkapil@hexure.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "BirthDate"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "SSN"
    Then User clicks "Cancel" button on signature page
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User Enters "Shiba" in TextBox "ToName"
    Then User Enters "testhexure@gmail.com" in TextBox "ToEmail"
    Then User Enters "1929" in TextBox "SSN"
    Then User Enters "10082000" in TextBox "BirthDate"
    Then User clicks "Generate Link Without Email" button on signature page
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "BirthDate"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "SSN"
    Then User Enters "1928" in TextBox "SSN"
    Then User Enters "10/07/2000" in TextBox "BirthDate"
    Then User clicks "Send Email Request" button on signature page
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "BirthDate"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "SSN"
    Then User clicks "Cancel" button on signature page
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User clicks on close Popup on DataEntry Page
    Then User Verifies data entry percentage is "100%"
    Then User fills required fields and verify fields error should not display "false"
      | Field                        | Value         |
      | FLI_OWNER_FNAME              | UserFirstName |
      | FLI_OWNER_LNAME              | UserLastName  |
      | OWNER_SSN                    | 123-45-4321   |
      | Owner_DOB                    | 11/11/1960    |
      | FLI_OWNER_EMAIL              | testhexure@gmail.com    |
      | FLI_ANNUITANT_FNAME          | AnnuitantFirstName |
      | Annuitant_LastName           | AnnuitantLastName  |
      | FLI_ANNUITANT_SSN            | 123-12-1234   |
      | FLI_ANNUITANT_BDATE          | 01/01/2002    |
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "annuitant" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User verify "ToName" is set to "AnnuitantFirstName" on signature page
    Then User verify "SSN" is set to "" on signature page
    Then User verify "BirthDate" is set to "" on signature page
    Then User Enters "5555" in TextBox "ID"
    Then User Enters "4321" in TextBox "SSN"
    Then User Enters "11111960" in TextBox "BirthDate"
    Then User Enters "vkapil@hexure.com" in TextBox "ToEmail"
    Then User Clicks on Button "Verified"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "SSN"
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "BirthDate"
    Then User Enters "1234" in TextBox "SSN"
    Then User Clicks on Button "Verified"
    Then user Verifies the Error Message "" for "SSN"
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "BirthDate"
    Then User Enters "01012002" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "annuitant" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Annuitant" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User verify "ToName" is set to "UserFirstName UserLastName" on signature page
    Then User verify "ToEmail" is set to "testhexure@gmail.com" on signature page
    Then User verify "SSN" is set to "" on signature page
    Then User verify "BirthDate" is set to "" on signature page
    Then User Enters "8176" in TextBox "SSN"
    Then User Enters "01012020" in TextBox "BirthDate"
    Then User clicks "Send Email Request" button on signature page
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "BirthDate"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "SSN"
    Then User Enters "4321" in TextBox "SSN"
    Then User Enters "11111960" in TextBox "BirthDate"
    Then User clicks "Send Email Request" button on signature page
    And User save the "email link" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    Then User clicks Close button on pending request page
    Then User navigates to Home page
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "emailLink"
    Then User Enters "9999" in TextBox "SSN"
    Then User Enters "01/01/2002" in TextBox "BirthDate"
    Then User clicks "Enter" button on External link page
    Then User verifies validation message appeared "SSN or birth date does not match."
    Then User Enters "4321" in TextBox "SSN"
    Then User Enters "11/11/1960" in TextBox "BirthDate"
    Then User clicks "Enter" button on External link page
    Then User Clicks "Contact Agent" Button
    Then User Add some text to the Message body "Customized Message" and Click on Send button
    Then User verify error message "Message sent." on signature page
    Then User clicks on "Ok Popup" link
    Then User clicks "Sign Activity" button on page
    Then User clicks "Next Page" button on signature page
    Then User clicks "Next Page" button on signature page
    Then User clicks "Next Page" button on signature page
    Then User clicks initials box and enter "Mr" on document sets signature page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    Then User should Logoff from the External page and Thank you for using our application page should display

  @RegAdminEsignMVCHP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_002_D Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCHP1_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "uncheck" checkbox "Validate Identity"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminEsignMVCLP1 @AdminTests
  Scenario: TC_001_A Verify New checkbox State Signing Error on Form Designer
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCLP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO3" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Varun_State_Signing | Varun_State_Signing | " from dropdown
    Then User deletes all the controls on form
    Then User save form controls
    Then User add "SIGNATUREBOX" control on form
    Then User open properties for "Signature"
    Then User selects value "Owner" for field "SignerType"
    Then User Verifies checkbox "State signing error" is "unchecked"
    Then User Verifies checkbox "State Match Warning" is "unchecked"
    Then User Verifies checkbox "Passcode only validation" is "disabled"
    Then User "select" checkbox "State signing error"
    Then User Verifies checkbox "State signing error" is "selected"
    Then User "select" checkbox "State Match Warning"
    Then User Verifies checkbox "State Match Warning" is "selected"
    Then User Verifies checkbox "State signing error" is "unchecked"
    Then User "select" checkbox "State signing error"
    Then User Verifies checkbox "State signing error" is "selected"
    Then User Verifies checkbox "State Match Warning" is "unchecked"
    Then User clicks on close button
    Then User open properties for "Signature"
    Then User Verifies checkbox "State signing error" is "unchecked"
    Then User Verifies checkbox "State Match Warning" is "unchecked"
    Then User "select" checkbox "State signing error"
    Then User Verifies checkbox "State signing error" is "selected"
    Then User clicks on Update button and close the window
    Then User save form controls
    Then User navigates to "Home" toolbar menu
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Varun_State_Signing | Varun_State_Signing | " from dropdown
    Then User open properties for "Signature"
    Then User Verifies checkbox "State signing error" is "selected"
    Then User Verifies checkbox "State Match Warning" is "unchecked"
    Then User "select" checkbox "State Match Warning"
    Then User Verifies checkbox "State Match Warning" is "selected"
    Then User Verifies checkbox "State signing error" is "unchecked"
    Then User clicks on Update button and close the window
    Then User save form controls
    Then User navigates to "Home" toolbar menu
    Then User clicks "Form Designer" Tab
    Then User clicks "ddlForm" and select "Varun_State_Signing | Varun_State_Signing | " from dropdown
    Then User open properties for "Signature"
    Then User Verifies checkbox "State Match Warning" is "selected"
    Then User Verifies checkbox "State signing error" is "unchecked"
    Then User clicks on close button
    Then User delete control for "Signature"
    Then User save form controls
    Then User Logs off from Admin page
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCLP1_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Form Designer" Tab
    Then User selects "Varun_State_Signing | Varun_State_Signing | " Form Designer list
    Then User add "SIGNATUREBOX" control on form
    Then User open properties for "Signature"
    Then User Verifies checkbox "State signing error" is "unchecked"
    Then User Verifies checkbox "State Match Warning" is "unchecked"
    Then User Verifies checkbox "Passcode only validation" is "unchecked"
    Then User "select" checkbox "Passcode only validation"
    Then User Verifies checkbox "Passcode only validation" is "selected"
    Then User clicks on close button
    Then User open properties for "Signature"
    Then User Verifies checkbox "Passcode only validation" is "unchecked"
    Then User "select" checkbox "Passcode only validation"
    Then User Verifies checkbox "Passcode only validation" is "selected"
    Then User clicks on Update button and close the window
    Then User save form controls
    Then User navigates to "Home" toolbar menu
    Then User clicks "Form Designer" Tab
    Then User selects "Varun_State_Signing | Varun_State_Signing | " Form Designer list
    Then User open properties for "Signature"
    Then User Verifies checkbox "Passcode only validation" is "selected"
    Then User clicks on close button
    Then User deletes all the controls on form
    Then User delete control for "Signature"
    Then User save form controls
    Then User verify all controls are deleted
    Then User Logs off from Admin page

  @RegAdminESignREACTCP1 @AdminTests
  Scenario:TC_009_A Verify Group setting 'Disable Send Email Request for Agent' with 'Disable Sign Now for Client' along with FLI Flags to enable disable signature choices (E-Sign React)
    Given User is on FireLight Admin login page for TestCase "RegAdminESignReactCP1_TC_009"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD05"
    Then User clicks "App" Tab
    Then User "select" checkbox "DisableSendEmailRequestAgent"
    Then User Verifies checkbox "DisableSendEmailRequestAgent" is "selected"
    Then User "select" checkbox "DisableSignNow"
    Then User Verifies checkbox "DisableSignNow" is "selected"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Colorado"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User Verifies Sign Now plus Send Email Request Buttons Are Disabled Before Selecting Any User
    Then User selects "Owner" signer on signature window
    Then User Verifies Sign Now button is disabled and Send Email Request Button is Enabled
    Then User Clicks on React Send Email Request
    Then User should be on page "Send Email To Owner To Request Signatures"
    Then User enter all required "Owner" details for sending mail on signature window
    Then User Clicks on React Send Email Request
    And User save the "email link" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User Clicks Back to Application
    Then User Logs Off from the current Application and clicks "OK" on Confirmation Dialog
    And User login to email link with "SSN" generated on signature page from home page
    Then User Clicks on Sign Activity
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "signerFullName" City as "signerCity"
    Then User Clicks on "I Consent" Button
    Then User verifies dialog window "Signature Capture"
    Then User verify error message "A signature capture is required. Please sign using a mouse, your finger, or a stylus." on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Electronic Signatures Complete"
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User Verifies Application Status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User Clicks Continue
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Agent" signer on signature window
    Then User Verifies Sign Now button is enabled and Send Email Request Button is Disabled
    Then User clicks on Sign Now button
    Then User verifies Agree Checkbox and Confirm All checkbox is showing
    Then User clicks Confirm all documents without reviewing individually followed by OK Click on Confirm Document Dialog.
    Then User Enters Agent Full Name, Agent ID if not autofilled and Enter Agent City
    Then User perform Signature on Signature Pad
    Then User Clicks on "I Consent" Button
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Producer" signer on signature window
    Then User Verifies Sign Now button is enabled and Send Email Request Button is Disabled
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User verifies text on Electronic signature Declined
      | The Activity is currently unlocked. It must be completed and locked before signatures may be collected. |
    Then User clicks on Ok button
    Then User sets values for prefilled form
      | Field                        | Value | data-dataitemid              | Locator Type |
      | FLI_DISABLE_SIGN_Now         | False | FLI_DISABLE_SIGN_NOW         | Input        |
      | FLI_DISABLE_SIGN_LATER       | True  | FLI_DISABLE_SIGN_LATER       | Input        |
      | FLI_DISABLE_AGENT_SIGN_NOW   | True  | FLI_DISABLE_AGENT_SIGN_NOW   | Input        |
      | FLI_DISABLE_AGENT_SIGN_LATER | False | FLI_DISABLE_AGENT_SIGN_LATER | Input        |
    Then User Clicks Continue
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Owner" signer on signature window
    Then User Verifies Sign Now button is enabled and Send Email Request Button is Disabled
    Then User clicks on Sign Now button
    Then User should be on page "Agent Identification Verification"
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "signerFullName" City as "signerCity"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Agent 2" signer on signature window
    Then User Verifies Sign Now button is disabled and Send Email Request Button is Enabled
    Then User Clicks on React Send Email Request
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User clicks on "Cancel" link

  @RegAdminESignREACTCP1 @AdminTests @UpdateAdminSettings
  Scenario:TC_009_Verify Group setting 'Disable Send Email Request for Agent' with 'Disable Sign Now for Client' along with FLI Flags to enable disbale signature choices (E-Sign React)
    Given User is on FireLight Admin login page for TestCase "RegAdminESignReactCP1_TC_009"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD05"
    Then User clicks "App" Tab
    Then User "uncheck" checkbox "DisableSendEmailRequestAgent"
    Then User Verifies checkbox "DisableSendEmailRequestAgent" is "unchecked"
    Then User "uncheck" checkbox "DisableSignNow"
    Then User Verifies checkbox "DisableSignNow" is "unchecked"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @RegAdminESignREACTCP1 @AdminTests
  Scenario:TC_014_A Verify Group setting 'Disable Send Email Request for Client' & 'Disable Sign Now for agent' along with FLI Flags to enable disable signature choices (E-Sign React)
    Given User is on FireLight Admin login page for TestCase "RegAdminESignReactCP1_TC_014"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD05"
    Then User clicks "App" Tab
    Then User "select" checkbox "DisableSendEmailRequest"
    Then User Verifies checkbox "DisableSendEmailRequest" is "selected"
    Then User "select" checkbox "DisableSignNowAgent"
    Then User Verifies checkbox "DisableSignNowAgent" is "selected"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Colorado"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Multiple Agent Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Continue button Enabled
    Then User clicks "Continue" button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User Verifies Sign Now plus Send Email Request Buttons Are Disabled Before Selecting Any User
    Then User selects "Agent" signer on signature window
    Then User Verifies Sign Now button is disabled and Send Email Request Button is Enabled
    Then User Clicks on React Send Email Request
    Then User should be on page "Send Email To Signer To Request Signatures"
    Then User enter all required "Agent" details for sending mail on signature window
    Then User Clicks on React Generate Link Without Email
    And User save the "email link" generated on signature page
    Then User save the "passcode" generated on signature page
    Then User clicks "Back To Signers" button on signature page
    Then User Clicks Back to Application
    Then User Logs Off from the current Application and clicks "OK" on Confirmation Dialog
    And User login to email link with "passcode" generated on signature page from home page
    Then User Clicks on Sign Activity
    Then User Clicks Agree Document Checkbox
    Then User Enters Agent Full Name, Agent ID, and Agent City
    Then User Clicks on "I Consent" Button
    Then User verifies dialog window "Signature Capture"
    Then User verify error message "A signature capture is required. Please sign using a mouse, your finger, or a stylus." on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Electronic Signatures Complete"
    And User verify "congratulations" message on signature page
    Then User clicks "OK" button on signature page
    And User verify "thankYou" message on signature page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User Verifies Application Status as "In Signatures"
    Then User open application from recent activity
    Then User Clicks Continue
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Owner" signer on signature window
    Then User Verifies Sign Now button is enabled and Send Email Request Button is Disabled
    Then User clicks on Sign Now button
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then User Clicks Agree Document Checkbox
    Then User Enters Signer Full Name as "signerFullName" City as "signerCity"
    Then User perform Signature on Signature Pad
    Then User Clicks on "I Consent" Button
    Then User verifies "Owner" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Producer" signer on signature window
    Then User Verifies Sign Now button is disabled and Send Email Request Button is Enabled
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User verifies text on Electronic signature Declined
      | The Activity is currently unlocked. It must be completed and locked before signatures may be collected. |
    Then User clicks on Ok button
    Then User sets values for prefilled form
      | Field                        | Value | data-dataitemid              | Locator Type |
      | FLI_DISABLE_SIGN_Now         | True | FLI_DISABLE_SIGN_NOW         | Input        |
      | FLI_DISABLE_SIGN_LATER       | False  | FLI_DISABLE_SIGN_LATER       | Input        |
      | FLI_DISABLE_AGENT_SIGN_NOW   | False  | FLI_DISABLE_AGENT_SIGN_NOW   | Input        |
      | FLI_DISABLE_AGENT_SIGN_LATER | True | FLI_DISABLE_AGENT_SIGN_LATER | Input        |
    Then User Clicks Continue
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Agent" signer on signature window
    Then User Verifies Sign Now button is enabled and Send Email Request Button is Disabled
    Then User clicks on Sign Now button
    Then User Clicks Agree Document Checkbox
    Then User Enters Agent Full Name, Agent ID if not autofilled and Enter Agent City
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User verifies "Agent" under completed signatures section with "Re-Sign" button on signature page
    Then User selects "Owner" signer on signature window
    Then User Verifies Sign Now button is disabled and Send Email Request Button is Enabled
    Then User Clicks on React Send Email Request
    Then User should be on page "Send Email To Owner To Request Signatures"
    Then User clicks on "Cancel" link

  @RegAdminESignREACTCP1 @AdminTests @UpdateAdminSettings
  Scenario:TC_014_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminESignReactCP1_TC_014"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD05"
    Then User clicks "App" Tab
    Then User "uncheck" checkbox "DisableSendEmailRequest"
    Then User Verifies checkbox "DisableSendEmailRequest" is "unchecked"
    Then User "uncheck" checkbox "DisableSignNowAgent"
    Then User Verifies checkbox "DisableSignNowAgent" is "unchecked"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @AdminTests  @RegAdminEsignReactCP2
  Scenario: TC_002-A Verify React Sign Now & Sign Later when Validate Identity Verification is selected
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignReactCP2_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "select" checkbox "Validate Identity Verification"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "React Esign Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User sets values for prefilled form
      | Field       | Value       | data-dataitemid   | Locator Type |
      | First Name | Shiba       | FLI_OWNER_FNAME   | Input        |
      | Last Name   | Shankar     | FLI_OWNER_LNAME   | Input        |
      | SSN         | 123-12-1234 | OWNER_SSN         | Input        |
      | Birthdate   | 10/10/1950  | Owner_DOB         | Input        |
    Then User Reload the page
    Then User clicks "Continue" button
    Then User Verifies Use Esignature and Decline Esignature buttons are visible
    Then User clicks "Use E-Signature" button on signature page
    Then User Verifies page heading "Request Signers for "
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies page heading "Agent Identification Verification"
    Then User verifies "AgentID" TextBox
    Then User verifies "FormofIdentification" TextBox
    Then User verifies "IDNumber" TextBox
    Then User verifies "Name" TextBox
    Then User verifies "Last4DigitsofSSN/GovernmentID" TextBox
    Then User verifies "BirthDate" TextBox
    Then User Verifies TextBox "ID Issue Jurisdiction"
    Then User verifies "Cancel" Button
    Then User verifies "Verified" Button
    Then User Verifies options present for "FormofIdentification" dropdown
      |options|
      |Drivers License|
      |Passport       |
      |Resident Alien ID|
      |State Issued ID|
    Then User Verifies options present for "IDIssueJurisdiction" dropdown
      |options|
      |Alabama |
      |Alaska       |
      |Arizona|
      |Arkansas|
    Then User verifies "Name" TextBox has Prefilled Value "Shiba Shankar"
    Then User verifies "Last4DigitsofSSN/GovernmentID" TextBox has Prefilled Value ""
    Then User verifies "BirthDate" TextBox has Prefilled Value ""
    Then User Enters "5566" in TextBox "IDNumber"
    Then User Enters "vkapil@hexure.com" in TextBox "EmailAddress"
    Then User Enters "4452" in TextBox "Last4DigitsofSSN/GovernmentID"
    Then User Enters "01011950" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "BirthDate"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "Last4DigitsofSSN/GovernmentID"
    Then User Enters "1234" in TextBox "Last4DigitsofSSN/GovernmentID"
    Then User Enters "10101950" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User Verifies toast message Close
    Then User clicks initials box and enter "MR" on document sets signature page
    Then User Verifies toast message "Initials are complete. You can move forward to Signatures" and Closes it
    Then User Clicks on "Agree" Button
    Then User Verifies page heading "Capture Electronic Signature"
    Then User enter all required details for "Owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Decline" button on signature page
    Then User Enters "I don't want to sign so.." into the Text field of Decline E=Signature
    Then User clicks "Continue" button on signature page
    Then User Verifies page heading "Signature Declined"
    Then User clicks "OK" button on signature page
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User navigates to Data Entry page
    Then User sets values for prefilled form
      | Field       | Value       | data-dataitemid   | Locator Type |
      | First Name  | Litan       | FLI_JOINT_OWNER_FNAME   | Input        |
      | Last Name   | Mohapatra     | JointOwner_LastName   | Input        |
      | SSN         | 123-45-6789 | FLI_JOINT_OWNER_SSN         | Input        |
      | Birthdate   | 11/11/1955  | FLI_JOINT_OWNER_BDATE         | Input        |
      | Phone Number| 8209771155  | FLI_JOINT_OWNER_MOBILENUMBER         | Input        |
    Then User Reload the page
    Then User clicks "Continue" button
    Then User Verifies Use Esignature and Decline Esignature buttons are visible
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User verifies "Last4DigitsofSSN/GovernmentID" TextBox has Prefilled Value ""
    Then User verifies "BirthDate" TextBox has Prefilled Value ""
    Then User verifies "MobileNumber" TextBox has Prefilled Value ""
    Then User Clicks on Button "Cancel"
    Then User selects "Annuitant" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User verifies "*SignerBirthDate" TextBox has Prefilled Value ""
    Then User verifies "*SignerLast4DigitsofSSN/GovernmentID" TextBox has Prefilled Value ""
    Then User Enters "Shiba" in TextBox "SignerName"
    Then User Enters "testhexure@gmail.com" in TextBox "SignerEmail"
    Then User Enters "2020" in TextBox "*SignerLast4DigitsofSSN/GovernmentID"
    Then User Enters "02022000" in TextBox "*SignerBirthDate"
    Then User Clicks on Button "Send Email Request"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "*SignerLast4DigitsofSSN/GovernmentID"
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "*SignerBirthDate"
    Then User Clears the TextBox"*SignerLast4DigitsofSSN/GovernmentID"
    Then User Clears the TextBox"*SignerBirthDate"
    Then User Enters "1111" in TextBox "*SignerLast4DigitsofSSN/GovernmentID"
    Then User Enters "11111990" in TextBox "*SignerBirthDate"
    Then User Clicks on Button "Generate Link Without Email"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "*SignerLast4DigitsofSSN/GovernmentID"
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "*SignerBirthDate"
    Then User Clicks on Button "Cancel"
    Then User Verifies page heading "Request Signers for "
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User verifies "*SignerBirthDate" TextBox has Prefilled Value ""
    Then User verifies "*SignerLast4DigitsofSSN/GovernmentID" TextBox has Prefilled Value ""
    Then User verifies "SignerMobileNumber" TextBox has Prefilled Value ""
    Then User Enters "Shankar" in TextBox "SignerName"
    Then User Enters "testhexure@gmail.com" in TextBox "SignerEmail"
    Then User Enters "2123" in TextBox "*SignerLast4DigitsofSSN/GovernmentID"
    Then User Enters "02081996" in TextBox "*SignerBirthDate"
    Then User Enters "8888888852" in TextBox "SignerMobileNumber"
    Then User Clicks on Button "Send Email Request"
    Then user Verifies the Error Message "SSN does not match value entered in application." for "*SignerLast4DigitsofSSN/GovernmentID"
    Then user Verifies the Error Message "Birth date does not match value entered in application." for "*SignerBirthDate"
    Then user Verifies the Error Message "Mobile Number does not match value entered in application." for "SignerMobileNumber"
    Then User Clicks on Button "Send Email Request"
    Then User Enters "6789" in TextBox "*SignerLast4DigitsofSSN/GovernmentID"
    Then User Enters "11111955" in TextBox "*SignerBirthDate"
    Then User Enters "8209771155" in TextBox "SignerMobileNumber"
    Then User Clicks on Button "Send Email Request"
    Then User verifies link is generated and store it
    Then User Clicks on Button "Back To Signers"
    Then User Verifies page heading "Request Signers for "
    Then User clicks "Back To Application" button
    Then User Log Off from current Application
    Then User clicks on "ok" button on incomplete activity pop up dialog

  @AdminTests  @RegAdminEsignReactCP2 @UpdateAdminSettings
  Scenario: TC_002_B Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignReactCP2_TC_002"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "uncheck" checkbox "Validate Identity Verification"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"


  @AdminTests  @RegAdminEsignReactCP2
  Scenario: TC_004_A Verify Group Setting Agent Not Required to view All Pages when Disabled for Agent with Enable Auto Submit and Required Signature Capture disabled
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignReactCP2_TC_004"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD05"
    Then User "uncheck" checkbox "Agent Not Required to View All Pages"
    Then User "uncheck" checkbox "Require Signature Capture"
    Then User "select" checkbox "Enable Auto Submit"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Account Opening" Tab
    Then User selects Jurisdiction "Guam"
    Then User selects Given Product "Dist Signing Product" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Verifies Toast Popup message as "Data Entry has met the requirements." and closes it
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5566" in TextBox "IDNumber"
    Then User Enters "Shiba" in TextBox "Name"
    Then User Enters "4452" in TextBox "Last4DigitsofSSN/GovernmentID"
    Then User Enters "01011950" in TextBox "BirthDate"
    Then User Clicks on Button "Verified"
    Then User clicks on "OK" link
    Then User Verifies toast message Close
    Then User clicks initials box and enter "MR" on document sets signature page
    Then User Verifies toast message "Initials are complete. You can move forward to Signatures" and Closes it
    Then User verifies Documents
      |         Application222            |
      |         Easy Signing Form         |
    Then User Clicks on Button "Application222"
    Then User Verifies Form "Application222 - Page 1 of 4"
    Then User Clicks on Button "Next Page"
    Then User Verifies Form "Application222 - Page 2 of 4"
    Then User Clicks on "Agree" Button
    Then User Verifies Form "Easy Signing Form - Page 1 of 4"
    Then User Clicks on "Agree" Button
    Then User clicks "I Consent" button on signature page
    Then user Verifies the Error Message "This is required." for "SignerFullName"
    Then user Verifies the Error Message "City is required." for "City"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User Clicks on Button "Clear Signature"
    Then User clicks "I Consent" button on signature page
    Then User selects "Agent" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User verifies Documents
      |         Application222            |
      |         Easy Signing Form         |
    Then User Clicks on "Agree" Button
    Then User Clicks on "Agree" Button
    Then User Clears the TextBox"AgentFullName"
    Then User Clears the TextBox"AgentID"
    Then User clicks "I Consent" button on signature page
    Then user Verifies the Error Message "This is required." for "AgentFullName"
    Then user Verifies the Error Message "City is required." for "City"
    Then user Verifies the Error Message "Agent identification number is required." for "AgentID"
    Then User enter all required details for "agent" on capture electronic signature window
    Then User put dot on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Verifies Popup Heading As "Signature Too Small"
    Then User Verifies Popup message as "Signature is too small and not legible. Please sign again."
    Then User Clicks on Button "OK"
    Then User perform Signature on Signature Pad
    Then User Clicks on Button "Clear Signature"
    Then User clicks "I Consent" button on signature page
    Then User verifies text on Electronic signature Declined
      |E-Signatures is complete. All needed signatures have been collected.|
    Then User Clicks on Button "OK"
    Then User verifies "Account opening is finished." dialog message
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History statuses
      | Status                        | Status Description          |
      | Agent On-Site Signature Approved | was signed by Agent |
      | Form Acknowledged                | Form Easy Signing Form acknowledged.|
      | Form Selected                    | Form `Easy Signing Form` selected.       |
      | Page Displayed                   | Page 1 of form 'Easy Signing Form' displayed.       |
      | Begin Signing Ceremony           | Signer 'Agent', logged in as 'Dist05_FLADIST3_Auto', beginning signing ceremony.       |
      | Client On-Site Signature Approved | was signed by Shiba '<SignerType>' from within City 'Guam'.       |
      | Client Verification – Email Address                   | did not provide a valid email address. Agent accepted not to use the automated delivery feature of the system to deliver signed copies of the documents to the client.       |
    Then User Navigates to Home Page
    Then User verifies Application status as "Complete"
    Then User Logs Off from current Application

  @AdminTests  @RegAdminEsignReactCP2  @UpdateAdminSettings
  Scenario: TC_004_B Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignReactCP2_TC_004"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD05"
    Then User "select" checkbox "Agent Not Required to View All Pages"
    Then User "select" checkbox "Require Signature Capture"
    Then User "select" checkbox "Enable Auto Submit"
    Then User clicks "Save" button
    Then User Verifies Groups settings are saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"


  @AdminTests  @RegAdminEsignReactCP2
  Scenario: TC_005-A Verify React E-Sign Sign Now & Sign Later for Client & Agent when Passcode only validation is enabled.
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignReactCP2_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "select" checkbox "Passcode only Validation"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks Link "[Close]"
    Then User clicks "Continue" button
    Then User clicks "Use E-Signature" button on signature page
    Then User selects "Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Verifies page heading "Agent Identification Verification"
    Then User Verifies Text field "Last4DigitsofSSN/GovernmentID" Does not Appear
    Then User Verifies Text field "BirthDate" Does not Appear
    Then User Enters "ShibaRandom" in TextBox "Name"
    Then User Enters "5566" in TextBox "IDNumber"
    Then User Clicks on Button "Send Email Passcode"
    Then user Verifies the Error Message "The email address is required." for "EmailAddress"
    Then User Enters "testhexure@gmail.com" in TextBox "EmailAddress"
    Then User Clicks on Button "Send Email Passcode"
    Then User Verifies Popup Heading As "Client Verification"
    Then User Enters "123456" in TextBox "EnterPasscode"
    Then User Clicks on Button "Submit"
    Then User Verifies Popup message as "Incorrect passcode."
    Then User clicks on "Cancel" link
    Then User Clicks on Button "Resend Email Passcode"
    Then User select "Passcode Application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User Enters Passcode in Enter Passcode textbox of Client Verification
    Then User clicks "Submit" button on signature page
    Then User clicks "Verified" button on signature page
    Then User Clicks on "Agree" Button
    Then User enter all required details for "owner" on capture electronic signature window
    Then User clicks "I Consent" button on signature page
    Then User verifies dialog window "Signature Capture"
    Then User verify error message "A signature capture is required. Please sign using a mouse, your finger, or a stylus." on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Verifies "Owner" status as "COMPLETE"
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Text field "Last4DigitsofSSN/GovernmentID" Does not Appear
    Then User Verifies Text field "BirthDate" Does not Appear
    Then User Clicks on Button "Generate Link Without Email"
    Then user Verifies the Error Message "Signer Name is required." for "SignerName"
    Then user Verifies the Error Message "Signer Email is required." for "SignerEmail"
    Then User Enters "ShankarRandom" in TextBox "SignerName"
    Then User Enters "testhexure" in TextBox "SignerEmail"
    Then User Clicks on Button "Generate Link Without Email"
    Then user Verifies the Error Message "A valid email address is required." for "SignerEmail"
    Then User Enters "testhexure@gmail.com" in TextBox "SignerEmail"
    Then User Clicks on Button "Send Email Request"
    Then User verifies link is generated and store it
    Then User Clicks on Button "Back To Signers"
    Then User Verifies "Joint Owner" Button available for "Edit"
    Then User Clicks on Button "Edit"
    Then User verifies dialog window "Pending Requests"
    Then User verifies three Pending Request dialog links
      | Send Reminder to ShankarRandom |
      | Send Passcode to ShankarRandom |
      | Cancel Request            |
    Then User verifies "Request Type", "Recipient", "Email Sent", "Date", "Passcode" data displayed on Pending Requests popup For Owner
    Then User clicks Send Reminder to "Send Reminder to" link, message template should show.
    Then User Verifies Field "Message" is read only
    Then User Clicks on Button "Send"
    Then User Refresh the Page
    Then User Clicks on Button "Edit"
    Then User verifies dialog window "Pending Requests"
    Then User clicks on "Cancel Request" link
    Then User Verifies Popup Heading As "Cancel Request"
    Then User Clicks on Button "Cancel"
    Then User clicks "Back To Application" button
    Then User verifies dialog window "Pending Request" popup
    Then User verifies same Passcode as generated Before for "passcode"
    Then User clicks Send Reminder to "Send Reminder to" link, message template should show.
    Then User Verifies Field "Message" is read only
    Then User clicks Send button in pending Request
    Then User verifies toast message Alert "Message sent."
    Then User Log Off from current Application
    Then User clicks on Ok button
    Then User Loads the URL generated previously for "NewrecipientLink"
    Then User Logs in with "passcode"
    And User verify "Review Documents" button exists
    And User verify "Sign Activity" button exists
    And User verify "Contact Agent" button exists
    Then User Clicks on Button "Review Documents"
    Then User re-name "PrintPDF" PDF and get text from PDF
    And User verify generated PDF displays signature on signature page
    Then User Clicks on Button "Contact Agent"
    Then User verifies "FromName" TextBox has Prefilled Value
    Then User verifies "FromAddress" TextBox has Prefilled Value
    Then User verifies "ToName" TextBox has Prefilled Value
    Then User verifies "ToAddress" TextBox has Prefilled Value
    Then User verifies "Subject" TextBox has Prefilled Value
    Then User Enters "ShibaRandom" in TextBox "Message"
    Then User Clicks on Button "Send"
    Then User Clicks on Button "Sign Activity"
    Then User Clicks on "Agree" Button
    Then User clicks "I Consent" button on signature page
    Then User verify error message "A signature capture is required. Please sign using a mouse, your finger, or a stylus." on signature page
    Then User clicks "ok" on Confirmation Dialog
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then user Verifies the Error Message "This is required." for "SignerFullName"
    Then user Verifies the Error Message "City is required." for "City"
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User Clicks on Button "Clear Signature"
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks on "OK" link
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User verifies Application status as "Client Signatures Complete"
    Then User open application from recent activity
    Then User clicks "Continue" button
    Then User selects "Agent" signer on signature window
    Then User clicks "Send Email Request" button on signature page
    Then User Verifies Text field "Last4DigitsofSSN/GovernmentID" Does not Appear
    Then User Verifies Text field "BirthDate" Does not Appear
    Then User Clicks on Button "Send Email Request"
    Then user Verifies the Error Message "Signer Name is required." for "SignerName"
    Then user Verifies the Error Message "Signer Email is required." for "SignerEmail"
    Then User Enters "LitanRandom" in TextBox "SignerName"
    Then User Enters "testhexure@gmail.com" in TextBox "SignerEmail"
    Then User Clicks on Button "Generate Link Without Email"
    Then User save the "Email and Passcode" generated on signature page
    Then User verifies "Copy Passcode" Button
    Then User verifies "Copy Link" Button
    Then User Clicks on Button "Back To Signers"
    Then User Clicks on Button "Edit"
    Then User Clicks on Button "Close"
    Then User clicks "Back To Application" button
    Then User verifies dialog window "Pending Request" popup
    Then User verifies same Passcode as generated Before for "passCode"
    Then User Clicks on Close link at bottom of the popup
    Then User opens Menu "Other Actions  ->Requests"
    Then User verifies Request statuses and Cancel Agent and press cancel
      | Client On-Site Signature        |
      | Client Electronic Signature      |
      | Signature Request Sent to Agent |
    Then User Navigates to Home Page
    Then User clicks "ok" on Confirmation Dialog
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                            | Status Description                   |
      | Client E-Signature Approved       | was signed by                        |
      | External Signer Emailed Agent     | sent email to agent DeependraDist    |
      | Form Acknowledged                 | Form Easy Signing Form acknowledged. |
      | Client On-Site Signature Approved | was signed by                        |
      | E-Signature Link Generated        |                                      |
    Then User Clicks on Button "Requests" on AllActivities
    Then User verifies Request statuses and Cancel Agent and press cancel
      | Client On-Site Signature        |
      | Client Electronic Signature      |
      | Signature Request Sent to Agent |
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "emailLink"
    Then User Logs in with "passCode"
    Then User Clicks on Button "Review Documents"
    Then User re-name "PrintPDF" PDF and get text from PDF
    And User verify generated PDF displays signature on signature page
    Then User Clicks on Button "Sign Activity"
    Then User selects check box "Confirm all documents without reviewing individually."
    Then User Clicks on Button "OK"
    Then User enter all required details for "agent" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User Clicks on Button "OK"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADIST3" and password and clicks Login button
    Then User verifies Application status as "Signatures Complete"
    Then User Now Navigate to All Activities page
    Then User Searches for application
    Then User Clicks on Button "Requests" on AllActivities
    Then User verifies Request statuses in All activities
      | Client On-Site Signature    |
      | Client Electronic Signature |
      | Agent Electronic Signature  |
    Then User clicks on view History
    Then User verifies Audit History statuses
      | Status                     | Status Description  |
      | Agent E-Signature Approved | was signed by Agent |
    Then User Opens application by clicking on view button
    Then User clicks "Continue" button
    Then User clicks "ok" on Confirmation Dialog
    Then User Verifies Final popup after application submitted with message "Application is pending transmission."
    Then User Navigates to Home Page
    Then User verifies Application status as "Pending Review"
    Then User Logs Off from current Application

  @AdminTests  @RegAdminEsignReactCP2  @UpdateAdminSettings
  Scenario: TC_005-Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignReactCP2_TC_005"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "uncheck" checkbox "Passcode only Validation"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User clicks "Log Off" from Menu options
    Then User Verifies message "Thank you for using our application"

  @AdminTests  @RegAdminEsignReactHP2
  Scenario: ACRE_003_A Verify React ESign when Disable Decline E-Sign is true on Groups setting
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignReactHP2React_ACRE_003"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD05"
    Then User "select" checkbox "Disable Decline E-Sign"
    Then User clicks "Save" button
    Then User clicks "Log Off" from Menu options
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Easy Signing Distributor" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks "Continue" button
    Then User selects "Owner" signer on signature window
    Then User selects "Joint Owner" signer on signature window
    Then User clicks "Sign Now" button on signature page
    Then User Enters "5566" in TextBox "IDNumber"
    Then User Enters "Shiba" in TextBox "Name"
    Then User Enters "4452" in TextBox "Last4DigitsofSSN/GovernmentID"
    Then User Enters "01011950" in TextBox "BirthDate"
    Then User Enters "vk@abc.com" in TextBox "EmailAddress"
    Then User Clicks on Button "Verified"
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "Owner" on capture electronic signature window
    Then User clicks "I Decline" button on signature page
    Then User Enters "I don't want to sign so.." into the Text field of Decline E=Signature
    Then User clicks "Continue" button on signature page
    Then User clicks "OK" button on signature page
    Then User clicks on "enter more data" link of data entry met Toast popup_Updated
    Then User sets values for prefilled form
      | Field                        | Value | data-dataitemid    | Locator Type |
      | Decline E-Sgn textbox        | False | FLI_DECLINED_ESIGN | Input        |
    Then User clicks "Continue" button
    Then User Clicks on Unlock Application button on top, then click Unlock Activity button
    Then User verifies text on Electronic signature Declined
      | The Activity is currently unlocked. It must be completed and locked before signatures may be collected. |
    Then User clicks on Ok button
    Then User clicks on "enter more data" link of data entry met Toast popup_Updated
    Then User sets values for prefilled form
      | Field                        | Value | data-dataitemid    | Locator Type |
      | Decline E-Sgn textbox        | True | FLI_DECLINED_ESIGN | Input        |
    Then User clicks "Continue" button
    Then User clicks "Ok" on Confirmation Dialog
    Then User verifies "Application is pending transmission." dialog message
    Then User Logs Off from current Application

  @AdminTests @UpdateAdminSettings @RegAdminEsignReactHP2
  Scenario: ACRE_003_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignReactHP2React_ACRE_003"
    Then User on Login Page enters valid username as "Dist05_FLADIST3" and password and clicks Login button
    Then User clicks "Groups" Tab
    Then User on Groups page selects Role Code as "FLAD05"
    Then User "uncheck" checkbox "Disable Decline E-Sign"
    Then User clicks "Save" button
    Then User clicks "Log Off" from Menu options

  @RegAdminActivityMasterCP1React @AdminTests
  Scenario: TC_001 settings for product REACT Automation Product 2
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterCP1React_TC_001"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Wizard Designer" Tab
    Then User selects "_01Automation Wizard SL" value form the Wizard Designer dropdown
    Then User clicks on previous the fields and delete all fields
    Then User Drags "18" to the droppable field
    Then User selects "Custom Action" as current action and "Data Entry Review" as custom action from Custom Action Properties Dialog box
    Then User clicks on Ok button on popup
    Then User clicks on save wizard button
    Then User Clicks on Page Option "View in Library"
    Then User search for "_01Automation Wizard SL" and click on search icon
    Then User Clicks on Search icon
    Then User Verifies Wizard Number "_01Automation Wizard SL"
    Then User Clicks on Wizard Designer Link
    Then User verifies "_01Automation Wizard SL" value is selected in the Wizard Designer dropdown
    Then User verifies "18" the field is showing in wizard
    Then User verifies "Custom Action" as current action and "Data Entry Review" as custom action from Custom Action Properties Dialog box
    Then User clicks "Cancel" button on popup
    Then User clicks on previous the fields and delete all fields

  @RegAdminActivityMasterCP1React @AdminTests
  Scenario: TC_002 settings for product MVC Automation Product Approved React APP
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterCP1React_TC_002"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income" for application
    Then User selects Optional Forms "_01Automation Wizard"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks Expand form menu
    Then User clicks on "Review page" from expand menu options
    Then User fills soft Limit form data
      | Value         | data-dataitemid         | Locator Type |
      | Deepak        | FIRST NAME              | Input        |
      | Mathur        | LAST NAME               | Input        |
      | Deepak Mathur | AccountHolder_FirstName | Input        |
    Then User Selects "pune" option in "city" Dropdown
    Then User selects "Male" checkbox
    Then User clicks "DATA ENTRY REVIEW" button
    Then User verifies toast message "Activity is sent for data entry review."
    Then User Verifies data entry tab status "data entry review"
    Then User opens Menu "Other Actions  "
    Then User verifies that the menu item "Client Fill" is "not present"
    Then User verifies that the menu item "Client Fill and Sign" is "not present"
    Then User verifies that the menu item "Share" is "disabled"
    Then User verifies that the menu item "Transfer" is "not present"
    Then User verifies that the menu item "Requests" is "disabled"
    Then User Verifies Continue button is disabled
    Then User opens Menu "Home"
    Then User Verifies Application Status as "In Data Entry Review"
    Then User clicks "All Activities" Tab
    Then User verifies "Delete" button should be "not present"
    Then User opens Menu "Home"
    Then User clicks "Review Queue" Tab
    Then User click on the Review Queue button with title "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User Verifies app showing in pre submit list
    Then User verifies that the link "Application PDF" is "enabled"
    Then User verifies that the link "Application History" is "enabled"
    Then User verifies that the link "Queue History" is "enabled"
    Then User verifies that the link "Attach Documents" is "enabled"
    Then User verifies that the link "Audit Report" is "enabled"
    Then User verifies application status should be "In Data Entry Review" in pre-submit
    Then User verifies "Approve Application" button should be "disabled"
    Then User verifies "Reject Application" button should be "disabled"
    Then User verifies "More Info Application" button should be "disabled"
    Then User clicks on review queue application button "Review"
    Then User clicks Ok popup button
    Then User verifies "Approve" button should be "enabled"
    Then User verifies "Reject" button should be "enabled"
    Then User verifies "More Info" button should be "enabled"
    Then User clicks on review queue application button "Approve"
    Then User on Approve Activity dialog window enters own comment and clicks "Approve" button
    Then User Verifies app not showing in pre submit list
    Then User opens Menu "Home"
    Then User Verifies Application Status as "Data Entry"
    Then User open application from recent activity
    Then User opens Menu "Other Actions  "
    Then User verifies that the menu item "Request Client to Fill App" is "enabled"
    Then User set value "JOHN" for field "FIRST NAME"
    Then User set value "ABRAHAM" for field "LAST NAME"
    Then User clicks "DATA ENTRY REVIEW" button
    Then User verifies toast message "Activity is sent for data entry review."
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History
      | Status                     | Status Description                                                  |
      | Updates by Agent           | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'. Saved                |
      | In Data Entry Review       | Activity was locked to begin the data entry review process.         |
      | Updates by Agent           | Activity updated by 'AUTOUser1_FLADEMO2_AUTO'. Saved                |
      | Data Entry Review Approved | Data Entry Review has been approved for activity AT Lifetime Income |
      | Activity Approved          | id: txtActionRemarks]AT Lifetime Income                             |
      | Locked for Review          | Activity was locked to begin the review process.                    |

  @RegAdminActivityMasterCP1React @AdminTests
  Scenario: TC_003 settings for product MVC Automation Product Rejected for REACT APP
    Given User is on FireLight Admin login page for TestCase "RegAdminActivityMasterCP1React_TC_003"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO2" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Arizona"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Lifetime Income" for application
    Then User selects Optional Forms "_01Automation Wizard"
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User Clicks Expand form menu
    Then User clicks on "Review page" from expand menu options
    Then User fills soft Limit form data
      | Value         | data-dataitemid         | Locator Type |
      | Deepak        | FIRST NAME              | Input        |
      | Mathur        | LAST NAME               | Input        |
      | Deepak Mathur | AccountHolder_FirstName | Input        |
    Then User Selects "pune" option in "city" Dropdown
    Then User selects "Male" checkbox
    Then User clicks "DATA ENTRY REVIEW" button
    Then User verifies toast message "Activity is sent for data entry review."
    Then User Verifies data entry tab status "data entry review"
    Then User opens Menu "Other Actions  "
    Then User verifies that the menu item "Client Fill" is "not present"
    Then User verifies that the menu item "Client Fill and Sign" is "not present"
    Then User verifies that the menu item "Share" is "disabled"
    Then User verifies that the menu item "Transfer" is "not present"
    Then User verifies that the menu item "Requests" is "disabled"
    Then User Verifies Continue button is disabled
    Then User opens Menu "Home"
    Then User Verifies Application Status as "In Data Entry Review"
    Then User clicks "All Activities" Tab
    Then User verifies "Delete" button should be "not present"
    Then User opens Menu "Home"
    Then User clicks "Review Queue" Tab
    Then User click on the Review Queue button with title "PreSubmit"
    Then User enters App Name in search box then click search Icon
    Then User Verifies app showing in pre submit list
    Then User verifies that the link "Application PDF" is "enabled"
    Then User verifies that the link "Application History" is "enabled"
    Then User verifies that the link "Queue History" is "enabled"
    Then User verifies that the link "Attach Documents" is "enabled"
    Then User verifies that the link "Audit Report" is "enabled"
    Then User verifies application status should be "In Data Entry Review" in pre-submit
    Then User verifies "Approve Application" button should be "disabled"
    Then User verifies "Reject Application" button should be "disabled"
    Then User verifies "More Info Application" button should be "disabled"
    Then User clicks on review queue application button "Review"
    Then User clicks Ok popup button
    Then User verifies "Approve" button should be "enabled"
    Then User verifies "Reject" button should be "enabled"
    Then User verifies "More Info" button should be "enabled"
    Then User clicks on review queue application button "Reject"
    Then User Verifies popup "Reject Activity"
    Then User Verify the Default message "This application has been processed and rejected by the reviewer [AUTOUser1_FLADEMO2_AUTO]. The application will be cancelled disallowing data entry."
    Then User should be able to edit the default message by sending "Reason for Reject"
    Then User lets the default message and clicks on Reject button
    Then User Verifies app not showing in pre submit list
    Then User opens Menu "Home"
    Then User Verifies Application Status as "Data Entry Review: Rejected"
    Then User clicks "All Activities" Tab
    Then User Searches for application
    Then User clicks "View" button
    Then User verifies toast message "Activity is cancelled and no longer available for data entry due to errors in the data entry review."
    Then User opens Menu "Home"
    Then User Verifies Application Status as "Data Entry Review: Rejected"
    Then User clicks "All Activities" Tab
    Then User Searches for application
    Then User clicks "View" button
    Then User verifies toast message "Please create a new activity, since copy option for this activity is unavailable."
    Then User opens Menu "Other Actions  "
    Then User verifies that the menu item "Request Client to Fill App" is "not present"
    Then User verifies that the menu item "client fill & sign and document" is "not present"
    Then User verifies that the menu item "Share" is "disabled"
    Then User verifies that the menu item "Transfer" is "not present"
    Then User verifies that the menu item "Requests" is "disabled"
    Then User clicks on lock icon
    Then User Verifies Field "FIRSTNAME" is read only
    Then User Verifies Field "LASTNAME" is read only
    Then User verifies "Activity Summary" dialog box
    Then User clicks on close link and popup is closed
    Then User opens Menu "Other Actions  ->History"
    Then User verifies Audit History
      | Status                     | Status Description                                                  |
      | Data Entry Review Rejected | Data Entry Review has been rejected for activity AT Lifetime Income |
      | Declined                   | Reason for Reject                                                   |
      | Locked for Review          | Activity was locked to begin the review process.                    |

  @AdminTests @RegAdminEsignMVCCP1
  Scenario: TC_005_006_Request Verify - The 'Client Fill and Sign'signature workflow works properly with Org Setting/Validate Identity Verification checked and the signature field of 'Passcode Only Validation' checked
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "select" checkbox "Validate Identity"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Logs off from Admin page
    Then User Verifies message "Thank you for using our application"
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Product Type Dropdown "All"
    Then User selects Given Product "Signers Passcode validation" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User clicks on close Popup on DataEntry Page
    Then User opens Menu "Other Actions  ->Request Client to Fill & Sign"
    Then User verify "*Client Authentication via Passcode*" text "exists" for "Owner"
    Then User verify "*Client Authentication via Passcode*" text "exists" for "Insured"
    Then User verify "*Client Authentication via Passcode*" text "exists" for "Annuitant"
    Then User verify "*Client Authentication via Passcode*" text "exists" for "Payor"
    Then User verify "*Client Authentication via Passcode*" text "does not exist" for "Joint Annuitant"
    Then User verify "*Client Authentication via Passcode*" text "does not exist" for "Joint Owner"
    Then User verify field "SSN" "does not exist" for "Annuitant"
    Then User verify field "Birth Date" "does not exist" for "Annuitant"
    Then User verify field "SSN" "does not exist" for "Owner"
    Then User verify field "Birth Date" "does not exist" for "Owner"
    Then User verify field "SSN" "does not exist" for "Insured"
    Then User verify field "Birth Date" "does not exist" for "Insured"
    Then User verify field "SSN" "does not exist" for "Payor"
    Then User verify field "Birth Date" "does not exist" for "Payor"
    Then User verify field "SSN" "exists" for "Joint Annuitant"
    Then User verify field "Birth Date" "exists" for "Joint Annuitant"
    Then User verify field "SSN" "exists" for "Joint Owner"
    Then User verify field "Birth Date" "exists" for "Joint Owner"
    Then User Keep the Annuitant and Joint Annuitant selected and Remove link for all other Signer parties
    Then User Enters Name And Email For "annuitant"
    Then User Enters partial id as "ToName" for signer "Joint Annuitant" as value "JointName"
    Then User Enters partial id as "ToEmail" for signer "Joint Annuitant" as value "jointannuitantEmail"
    Then User Enters partial id as "SSN" for signer "Joint Annuitant" as value "jointannuitanSSN"
    Then User Enters partial id as "BirthDate" for signer "Joint Annuitant" as value "jointannuitantBirthDate"
    Then User Clicks Send Email request Button
    Then User Notes the URL generated in dialog box
    Then User clicks Ok popup button
    Then User stores "primary signer" passcode as "annuitant"
    Then User stores "secondary signer" passcode as "owner"
    Then User gets the URL from Message template by clicking Send Reminder to
    Then User clicks "Cancel" button
    Then User Logs Off from current Application
    Then User should Logoff from the External page and Thank you for using our application page should display
    Then User Loads the URL generated previously for "signerUrl"
    Then User verify "SSN" button does not exist on SSN login page
    Then User verify "BirthDate" button does not exist on SSN login page
    Then User verify "cmdResendPasscode" button exists on page
    Then User Logs in with "annuitantPasscode"
    Then User Clicks On Sign Application then Clicks Lock Activity
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    Then User Loads the URL generated previously for "ownerUrl"
    Then User verify "SSN" button exists on page
    Then User verify "BirthDate" button exists on page
    Then User verify "Passcode" button exists on page
    Then User Login with SSN and birth date
    Then User clicks "Sign Activity" button on page
    Then User clicks "Agree" button on signature page
    Then User enter all required details for "owner" on capture electronic signature window
    Then User perform Signature on Signature Pad
    Then User clicks "I Consent" button on signature page
    Then User clicks "OK" button on signature page
    Then User opens "Firelight" Application Login Page
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User verifies Application status as "In Signatures"
    Then User open application from recent activity
    Then User Clicks on Continue button
    Then User selects "insured" signer on signature window
    Then User selects "joint owner" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Sign Now" button on signature page
    Then User enter required details for signing on signatures window
    Then User Clicks on Button "Send Email Passcode"
    Then User select "Passcode Application" email with subject "Passcode Application" on gmail page and save "passcode"
    Then User Enters Passcode in Enter Passcode textbox of Client Verification
    Then User clicks "Submit" button on signature page
    Then User clicks "Verified" button on signature page
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User selects "owner" signer on signature window
    Then User selects "payor" signer on signature window
    Then User clicks "Proceed" button on signature page
    Then User clicks "Send Email Request" button on signature page
    Then User enter all required "agent" details for sending mail on signature window
    Then User Clicks Send Email request Button
    Then User Notes the URL generated in dialog box
    Then User clicks "Back To Signers" button on signature page
    Then User clicks "Back To Application" button
    Then User clicks on Close icon on Toast Popup
    And User verifies "Passcode" is displayed and store it
    Then User Clicks on Close link at bottom of the popup
    Then User Logs Off from current Application
    Then User Loads the URL generated previously for "signerUrl"
    Then User Logs in with "Newpasscode"
    Then User clicks "Sign Activity" button on page
    Then User clicks initials box and enter "MR" on document sets signature page
    Then User clicks "Agree" button on signature page
    Then User clicks "Agree" button on signature page
    Then User Verifies "Capture Electronic Signature" window will Appear Enter Signer Full name & City then perform Signature
    Then User Clicks on I Consent
    Then User clicks "OK" button on signature page

  @RegAdminEsignMVCCP1 @AdminTests @UpdateAdminSettings
  Scenario: TC_005_006_Revert Admin Settings
    Given User is on FireLight Admin login page for TestCase "RegAdminEsignMVCCP1_TC_005"
    Then User on Login Page enters valid username as "AUTOUser1_FLADEMO" and password and clicks Login button
    Then User clicks "Organization Settings" Tab
    Then User Clicks on Tab "Signature"
    Then User "uncheck" checkbox "Validate Identity"
    Then User clicks "Save Organization" button
    Then User Verifies Organization Setting Saved
    Then User Logs off from Admin page
    Then User Verifies message "Thank you for using our application"

