Feature: FireLight_Regression_ClientBugs_TestCases

  This feature will verify FireLight Client Bugs Tests.

  @RegressionTest @RegClientBugs
  Scenario: CB_001 JKL 2.27 Client Bug 273786 and 271270 Verify user can complete Data Entry for Data Grid product
    Given User is on FireLight login page for TestCase "RegClientBugs_CB_001"
    Then User on Login Page enters valid username as "Deep05_FLADEMO" and password and clicks Login button
    Then User clicks "Application" Tab
    Then User selects Jurisdiction "Alabama"
    Then User selects Given Product "Perspective II (B Share)" for application
    Then User clicks "Create" button
    Then User enters new Application name
    Then User clicks on Create button on Rename window
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User selects radio button "Individual" for "Owner_Type" data entry
    Then User selects radio button "Yes" for "Annuitant_SameAsOwner" data entry
    Then User selects radio button "No" for "JointAnnuitant_Add" data entry
    Then User selects radio button "Non-Qualified Account" for "PlanType_NonQualified" data entry
    Then User selects radio button "No" for "Owner_ExistingPolicies" data entry
    Then User selects radio button "No" for "Owner_ChangePolicies" data entry
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User clicks on Next button
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User fills values for prefilled form
      | Field            | Value        | data-dataitemid                  | Locator Type |
      | Owner First Name | Jayson       | Owner_FirstName                  | Input        |
      | Owner Last Name  | Holder       | Owner_LastName                   | Input        |
      | Owner SSN        | 848451975    | Owner_SSN                        | Input        |
      | Owner DoB        | 01-01-1975   | Owner_DOB                        | Input        |
      | Owner Address    | FL024 Street | Owner_ResidentialAddress1        | Input        |
      | Owner City       | FL City      | Owner_ResidentialAddress_City    | Input        |
      | Owner State      | AL           | Owner_ResidentialAddress_State   | Select       |
      | Owner ZipCode    | 87876        | Owner_ResidentialAddress_Zipcode | Input        |
    Then User selects radio button "Female" for "Owner_Gender" data entry
    Then User selects radio button "No" for "Owner_MailingAddress_NotSameAsResidential" data entry
    Then User selects radio button "Yes" for "Telephone_JCK_Authorization_Yes" data entry
    Then User selects radio button "Yes" for "OwnerAcknowledgments" data entry
    Then User fills values for prefilled form
      | Field       | Value             | data-dataitemid            | Locator Type |
      | Owner Email | ssingh@hexure.com | Owner_Primary_EmailAddress | Input        |
    Then User selects radio button "No" for "AuthorizedCaller_ClientAdd" data entry
    Then User selects radio button "No" for "IRS_Withholding" data entry
    Then User selects radio button "No" for "Owner_Active_Military_YN" data entry
    Then User selects radio button "U.S. Citizen" for "Owner_Citizen_US" data entry
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User clicks on Next button
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User selects radio button "Living Person" for "PrimaryBeneficiary1_JCK_LP" data entry
    Then User fills values for prefilled form
      | Field                          | Value      | data-dataitemid                  | Locator Type |
      | Primary Beneficiary First Name | Maria      | PrimaryBeneficiary1_FirstName    | Input        |
      | Primary Beneficiary Last Name  | Holder     | PrimaryBeneficiary1_LastName     | Input        |
      | Primary Beneficiary DoB        | 02-02-1981 | PrimaryBeneficiary1_DOB          | Input        |
      | Proceeds Percentage            | 100        | PrimaryBeneficiary1_Percentage   | Input        |
      | Relationship to Owner          | Aunt       | PrimaryBeneficiary1_Relationship | Select       |
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User clicks on Next button
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User fills values for prefilled form
      | Field                | Value       | data-dataitemid                      | Locator Type |
      | Agent First Name     | Sonu        | Agent_FirstName                      | Input        |
      | Agent Last Name      | Singh       | Agent_LastName                       | Input        |
      | Agent SSN            | 848-24-0824 | Agent_SSN                            | Input        |
      | Comission Percentage | 100         | Agent_Commission_JCK_CommissionSplit | Input        |
      | Commission Option    | A           | Agent_CommissionOption_JCK           | Select       |
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User clicks on Next button
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User selects radio button "Monthly" for "AssetRebal_Frequency" data entry
    Then User selects radio button "Initial Allocation(s)" for "JCK_AR_Target" data entry
    Then User fills values for prefilled form
      | Field             | Value      | data-dataitemid  | Locator Type |
      | Beginning on Date | 12-21-2024 | StartDate_AR_JCK | Input        |
    Then User selects radio button "None" for "Optional_JCK_Benefits" data entry
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User clicks on Next button
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User verifies total number of AIO row grids as 119
    Then User verifies total number of subcategory of "Allocation" as 26
    Then User verifies total number of subcategory of "U.S. Equity" as 34
    Then User verifies total number of subcategory of "International/Global Equity" as 20
    Then User verifies total number of subcategory of "Fixed Income" as 20
    Then User verifies total number of subcategory of "Sector Equity" as 13
    Then User verifies total number of subcategory of "Alternative" as 5
    Then User verifies total number of subcategory of "Fixed Account Options" as 1
    Then User fills values for prefilled form
      | Field           | Value                  | data-dataitemid    | Locator Type |
      | Net Expense Fee | 0.69                   | Expense_Ratio      | Input        |
      | Asset Category  | All Investment Options | Asset_Class_Filter | Select       |
    Then User clicks red bubble icon
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User clicks red bubble icon
    Then User verifies total number of AIO row grids as 25
    Then User verifies total number of subcategory of "Allocation" as 1
    Then User verifies total number of subcategory of "U.S. Equity" as 8
    Then User verifies total number of subcategory of "International/Global Equity" as 2
    Then User verifies total number of subcategory of "Fixed Income" as 2
    Then User verifies total number of subcategory of "Sector Equity" as 11
    Then User verifies total number of subcategory of "Alternative" as 0
    Then User verifies total number of subcategory of "Fixed Account Options" as 1
    Then User fills values for prefilled form
      | Field           | Value                  | data-dataitemid    | Locator Type |
      | Net Expense Fee | 0.00                   | Expense_Ratio      | Input        |
      | Asset Category  | All Investment Options | Asset_Class_Filter | Select       |
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User clicks red bubble icon
    Then User fills values for prefilled form
      | Field           | Value | data-dataitemid | Locator Type |
      | Net Expense Fee | 0.00  | Expense_Ratio   | Input        |
    Then User enters "50" allocation data in the data grid for sub-account "Guaranteed One Year Fixed"
    Then User enters "30" allocation data in the data grid for sub-account "JNL Aggressive Growth Allocation"
    Then User enters "20" allocation data in the data grid for sub-account "JNL Conservative Allocation"
    Then User clicks red bubble icon
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User clicks on Next button
    Then User verifies Red bubble icon at top right corner should be display "True"
    Then User fills values for prefilled form
      | Field                            | Value                               | data-dataitemid | Locator Type |
      | Guaranteed Min Withdrawl Benefit | AutoGuard 5                         | GMWB_List       | Select       |
      | Guaranteed Min Death Benefit     | Highest Quarterly Anniversary Value | DB_List         | Select       |
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User clicks on Next button
    Then User fills values for prefilled form
      | Field          | Value                    | data-dataitemid           | Locator Type |
      | Premium Type   | New Money/Contribution   | MoneySource_JCK1          | Select       |
      | Payment Method | Check Payable to Carrier | PaymentMethod_JCK1        | Select       |
      | Amount         | 100000                   | Payment_Check_Amount_JCK1 | Input        |
    Then User clicks red bubble icon
    Then User verifies Red bubble icon at top right corner should be display "False"
    Then User Clicks Continue Button
    Then User clicks Accept E-Signature on Electronic Signatures option window
    Then User selects "Owner" signer on signature window
    Then User selects "trustee 2" signer on signature window
    Then User Clicks on proceed button
    Then User clicks on Sign Now button
    Then User enter all required details for signing on signature window
    Then User clicks "Verified" button on signature page
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User enter signer Full Name as "JKL Tester" City as "Good City" perform Signature click I Consent
    Then User Select Agent
    Then User clicks on Sign Now button
    Then user clicks check box I have reviewed and agree with the terms expressed within this document. 1 times
    Then User Enters Agent City as "Great City" Perform Signature, I Consent
    Then User Clicks Continue Button
    Then User Clicks on yes Confirmation dialog




























