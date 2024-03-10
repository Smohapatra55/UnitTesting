  Feature: FireLight_Admin_Tests

  This feature will verify FireLight Admin Test Cases of Medium P1 P2

  @RegAdminReviewQMVCMP1P2  @RegressionAdmin
  Scenario: TC_003-Verify Automation Retry Interval field accepts the maximum allowed limit 720 minutes
    Given User is on FireLight Admin login page for TestCase "RegAdminReviewQMVCHP1P2_TC_003"
    Then User on Login Page enters valid username as "Deependra_FLADEMO" and password and clicks Login button
    Then User clicks "Review Queue" Tab
    Then User Verifies Heading "Review Queue - FL Access Carrier - Automation"
    Then User Verifies "First" Queue is Selected
    Then User Clicks on "Auto Queue" Queue
    Then User Verifies checkbox "Automated" is "selected"
    Then User verifies values
      | Field                     | data-dataitemid | id                                    | value |
      | Automation Retry Interval | Automation      | SelectedQueue_AutomatedReviewInterval | 5   |
    Then User sets values
      | Field                     | data-dataitemid | id                                    | value |
      | Automation Retry Interval |  Automation     | SelectedQueue_AutomatedReviewInterval | 4     |
    Then User clicks "Save" button
    Then User Verifies Error Message
      | Field                     | data-dataitemid | id                                    | errorMessage             |
      | Automation Retry Interval | Automation      | SelectedQueue_AutomatedReviewInterval | Must be between 5 & 720. |
    Then User sets values
      | Field                     | data-dataitemid | id                                    | value |
      | Automation Retry Interval | Automation      | SelectedQueue_AutomatedReviewInterval | 720   |
    Then User clicks "Save" button
    Then User verifies "Queue saved." message is displayed
    Then User Reload the page
    Then User sets values
      | Field                     | data-dataitemid | id                                    | value |
      | Automation Retry Interval | Automation      | SelectedQueue_AutomatedReviewInterval | 721   |
    Then User clicks "Save" button
    Then User Verifies Error Message
      | Field                     | data-dataitemid | id                                    | errorMessage             |
      | Automation Retry Interval | Automation      | SelectedQueue_AutomatedReviewInterval | Must be between 5 & 720. |
    Then User sets values
      | Field                     | data-dataitemid | id                                    | value |
      | Automation Retry Interval | Automation      | SelectedQueue_AutomatedReviewInterval | 5   |
    Then User clicks "Save" button
    Then User verifies "Queue saved." message is displayed


