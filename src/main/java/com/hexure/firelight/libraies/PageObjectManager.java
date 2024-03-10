package com.hexure.firelight.libraies;

import com.hexure.firelight.libraies.pages_react.CommonMethods_ReactPage;
import com.hexure.firelight.libraies.pages_react.CreateApplication_ReactPage;
import com.hexure.firelight.libraies.pages_react.DataEntry_ReactPage;
import com.hexure.firelight.pages.*;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.openqa.selenium.WebDriver;

public class PageObjectManager extends BaseClass
{
    private WebDriver driver;
    private LoginPage onLoginPage;
    private HomePage onHomePage;
    private CreateApplicationPage onCreateApplicationPage;
    private DataEntryPage onDataEntryPage;
    private ReviewPage onReviewPage;
	private ClientAuthenticationPage onclientAuthenticationPage;
    private SignaturesPage onSignaturesPage;
    private ReviewQueuePage onReviewQueuePage;
    private DSBQueuePage onDSBQueuePage;
    private HistoryPage onHistoryPage;
	private FinishPage onFinishPage;
	private InvestmentProfilePage onInvestmentProfilePage;
    private LoginSSNPage onLoginSSNPage;
    private SSNHomePage onSSNHomePage;
    private HistoryPopupPage onHistoryPopupPage;
	private SelectDocumentsToPrintPage onSelectDocumentsToPrintPage;
	private PartyEntryPage onPartyEntryPage;
	private RCTCompleteFillingAndSigningPage onRCTCompleteFillingAndSigningPage;
	private RequestSentPage onRequestSentPage;
	private ExternalLoginPage onExternalLoginPage;
	private SignApplicationPage onSignApplicationPage;
	private FinalizePage onFinalizePage;
	private GmailPage onGmailPage;
	private ManageActivityPage onManageActivityPage;
	private RCTCompleteFillingAppPage onRCTCompleteFillingAppPage;
	private EasySigningFormPage onEasySigningFormPage;
	private ExternalURLPage onExternalURLPage;
	private BCQPage onBCQPage;
	private CommonMethodsPage onCommonMethodsPage;
	private CreateApplication_ReactPage onCreateApplication_reactPage;
	private CommonMethods_ReactPage onCommonMethods_reactPage;
	private DataEntry_ReactPage onDataEntryReactPage;
	private ReviewerDocumentsPage onReviewerDocumentsPage;
	private AllActivitiesPage onAllActivitiesPage;
	private MultiSignerPage onMultiSignerPage;
	private ClientAuthenticationPage onClientAuthenticationPage;
	private TransferPage onTransferPage;
	private NotificationsPage onNotificationsPage;
	private SharePage onSharePage;
	private GroupsPage onGroupsPage;
	private TabAppPage onTabAppPage;
	private MyPreferencesPage onMyPreferencesPage;
	private OrganizationPage onOrganizationPage;
	private AdminActivityPage onAdminActivityPage;
	private AdminProductPage onAdminProductPage;
	private FormDesignerPage onFormDesignerPage;
	private AdminReviewQPage onAdminReviewQPage;
	private EnrollmentPage onEnrollmentPage;

	private PackagesPage packagePage;
	private static final Logger Log = LogManager.getLogger(PageObjectManager.class);

	public PageObjectManager(WebDriver driver)
    {
        this.driver = driver;
    }

	public LoginPage getLoginPage()	{
		try{
			return (onLoginPage == null) ? onLoginPage = new LoginPage(driver) : onLoginPage;
		} catch (Exception e){
			Log.error("Instance creations of LoginPage Failed ", e);
			throw new FLException("Instance creations of LoginPage Failed " + e.getMessage());
		}
	}

	public HomePage getHomePage()	{
		try{
			return (onHomePage == null) ? onHomePage = new HomePage(driver) : onHomePage;
		} catch (Exception e){
			Log.error("Instance creations of HomePage Failed ", e);
			throw new FLException("Instance creations of HomePage Failed " + e.getMessage());
		}
	}

	public CreateApplicationPage getCreateApplicationPage()	{
		try{
			return (onCreateApplicationPage == null) ? onCreateApplicationPage = new CreateApplicationPage(driver) : onCreateApplicationPage;
		} catch (Exception e){
			Log.error("Instance creations of CreateApplicationPage Failed ", e);
			throw new FLException("Instance creations of CreateApplicationPage Failed " + e.getMessage());
		}
	}

	public DataEntryPage getDataEntryPage()	{
		try{
			return (onDataEntryPage == null) ? onDataEntryPage = new DataEntryPage(driver) : onDataEntryPage;
		} catch (Exception e){
			Log.error("Instance creations of DataEntryPage Failed ", e);
			throw new FLException("Instance creations of DataEntryPage Failed " + e.getMessage());
		}
	}

	public ReviewPage getReviewPage()	{
		try{
			return (onReviewPage == null) ? onReviewPage = new ReviewPage(driver) : onReviewPage;
		} catch (Exception e){
			Log.error("Instance creations of ReviewPage Failed ", e);
			throw new FLException("Instance creations of ReviewPage Failed " + e.getMessage());
		}
	}

	public ClientAuthenticationPage getClientAuthenticationPage()	{
		try{
			return (onclientAuthenticationPage == null) ? onclientAuthenticationPage = new ClientAuthenticationPage(driver) : onclientAuthenticationPage;
		} catch (Exception e){
			Log.error("Instance creations of ClientAuthenticationPage Failed ", e);
			throw new FLException("Instance creations of ClientAuthenticationPage Failed " + e.getMessage());
		}
	}

	public SignaturesPage getOnSignaturesPage()	{
		try{
			return (onSignaturesPage == null) ? onSignaturesPage = new SignaturesPage(driver) : onSignaturesPage;
		} catch (Exception e){
			Log.error("Instance creations of SignaturesPage Failed ", e);
			throw new FLException("Instance creations of SignaturesPage Failed " + e.getMessage());
		}
	}

	public ReviewQueuePage getOnReviewQueuePage()	{
		try{
			return (onReviewQueuePage == null) ? onReviewQueuePage = new ReviewQueuePage(driver) : onReviewQueuePage;
		} catch (Exception e){
			Log.error("Instance creations of ReviewQueuePage Failed ", e);
			throw new FLException("Instance creations of ReviewQueuePage Failed " + e.getMessage());
		}
	}

	public DSBQueuePage getOnDSBQueuePage()	{
		try{
			return (onDSBQueuePage == null) ? onDSBQueuePage = new DSBQueuePage(driver) : onDSBQueuePage;
		} catch (Exception e){
			Log.error("Instance creations of DSBQueuePage Failed ", e);
			throw new FLException("Instance creations of DSBQueuePage Failed " + e.getMessage());
		}
	}

	public HistoryPage getOnHistoryPage()	{
		try{
			return (onHistoryPage == null) ? onHistoryPage = new HistoryPage(driver) : onHistoryPage;
		} catch (Exception e){
			Log.error("Instance creations of HistoryPage Failed ", e);
			throw new FLException("Instance creations of HistoryPage Failed " + e.getMessage());
		}
	}

	public InvestmentProfilePage getInvestmentProfilePage()	{
		try{
			return (onInvestmentProfilePage == null) ? onInvestmentProfilePage = new InvestmentProfilePage(driver) : onInvestmentProfilePage;
		} catch (Exception e){
			Log.error("Instance creations of InvestmentProfilePage Failed ", e);
			throw new FLException("Instance creations of InvestmentProfilePage Failed " + e.getMessage());
		}
	}

	public LoginSSNPage getLoginSSNPage()	{
		try{
			return (onLoginSSNPage == null) ? onLoginSSNPage = new LoginSSNPage(driver) : onLoginSSNPage;
		} catch (Exception e){
			Log.error("Instance creations of LoginSSNPage Failed ", e);
			throw new FLException("Instance creations of LoginSSNPage Failed " + e.getMessage());
		}
	}

	public SSNHomePage getSSNHomePage()	{
		try{
			return (onSSNHomePage == null) ? onSSNHomePage = new SSNHomePage(driver) : onSSNHomePage;
		} catch (Exception e){
			Log.error("Instance creations of SSNHomePage Failed ", e);
			throw new FLException("Instance creations of SSNHomePage Failed " + e.getMessage());
		}
	}

	public FinishPage getFinishPage()	{
		try{
			return (onFinishPage == null) ? onFinishPage = new FinishPage(driver) : onFinishPage;
		} catch (Exception e){
			Log.error("Instance creations of FinishPage Failed ", e);
			throw new FLException("Instance creations of FinishPage Failed " + e.getMessage());
		}
	}

	public HistoryPopupPage getHistoryPopupPage()	{
		try{
			return (onHistoryPopupPage == null) ? onHistoryPopupPage = new HistoryPopupPage(driver) : onHistoryPopupPage;
		} catch (Exception e){
			Log.error("Instance creations of HistoryPopupPage Failed ", e);
			throw new FLException("Instance creations of HistoryPopupPage Failed " + e.getMessage());
		}
	}

	public PartyEntryPage getPartyEntryPage()	{
		try{
			return (onPartyEntryPage == null) ? onPartyEntryPage = new PartyEntryPage(driver) : onPartyEntryPage;
		} catch (Exception e){
			Log.error("Instance creations of PartyEntryPage Failed ", e);
			throw new FLException("Instance creations of PartyEntryPage Failed " + e.getMessage());
		}
	}

	public RCTCompleteFillingAndSigningPage getonRCTCompleteFillingAndSigningPage()	{
	try{
		return (onRCTCompleteFillingAndSigningPage == null) ? onRCTCompleteFillingAndSigningPage = new RCTCompleteFillingAndSigningPage(driver) : onRCTCompleteFillingAndSigningPage;
	} catch (Exception e){
		Log.error("Instance creations of RCT_Complete_Filling_and_SigningPage Failed ", e);
		throw new FLException("Instance creations of RCT_Complete_Filling_and_SigningPage Failed " + e.getMessage());
	}
}
	public RequestSentPage getOnRequestSentPage()	{
		try{
			return (onRequestSentPage == null) ? onRequestSentPage = new RequestSentPage(driver) : onRequestSentPage;
		} catch (Exception e){
			Log.error("Instance creations of RequestSentPage Failed ", e);
			throw new FLException("Instance creations of RequestSentPage Failed " + e.getMessage());
		}
	}

	public ExternalLoginPage getOnExternalLoginPage() {
		try {
			return (onExternalLoginPage == null) ? onExternalLoginPage = new ExternalLoginPage(driver) : onExternalLoginPage;
		} catch (Exception e) {
			Log.error("Instance creations of ExternalLoginPage Failed ", e);
			throw new FLException("Instance creations of ExternalLoginPage Failed " + e.getMessage());
		}
	}

	public SignApplicationPage getOnSignApplicationPage()	{
		try{
			return (onSignApplicationPage == null) ? onSignApplicationPage = new SignApplicationPage(driver) : onSignApplicationPage;
		} catch (Exception e){
			Log.error("Instance creations of SignApplicationPage Failed ", e);
			throw new FLException("Instance creations of SignApplicationPage Failed " + e.getMessage());
		}
	}

	public FinalizePage getOnFinalizePage() {
		try {
			return (onFinalizePage == null) ? onFinalizePage = new FinalizePage(driver) : onFinalizePage;
		} catch (Exception e) {
			Log.error("Instance creations of FinalizePage Failed ", e);
			throw new FLException("Instance creations of FinalizePage Failed " + e.getMessage());
		}
	}

	public SelectDocumentsToPrintPage getSelectDocumentsToPrintPage()	{
		try{
			return (onSelectDocumentsToPrintPage == null) ? onSelectDocumentsToPrintPage = new SelectDocumentsToPrintPage(driver) : onSelectDocumentsToPrintPage;
		} catch (Exception e){
			Log.error("Instance creations of SelectDocumentsToPrintPage Failed ", e);
			throw new FLException("Instance creations of SelectDocumentsToPrintPage Failed " + e.getMessage());
		}
	}

	public GmailPage getGmailPage()	{
		try{
			return (onGmailPage == null) ? onGmailPage = new GmailPage(driver) : onGmailPage;
		} catch (Exception e){
			Log.error("Instance creations of GmailPage Failed ", e);
			throw new FLException("Instance creations of GmailPage Failed " + e.getMessage());
		}
	}

	public ManageActivityPage getManageActivityPage()	{
		try{
			return (onManageActivityPage == null) ? onManageActivityPage = new ManageActivityPage(driver) : onManageActivityPage;
		} catch (Exception e){
			Log.error("Instance creations of ManageActivityPage Failed ", e);
			throw new FLException("Instance creations of ManageActivityPage Failed " + e.getMessage());
		}
	}
	public CommonMethodsPage getCommonMethodPage()	{
		try{
			return (onCommonMethodsPage == null) ? onCommonMethodsPage = new CommonMethodsPage(driver) : onCommonMethodsPage;
		} catch (Exception e){
			Log.error("Instance creations of CommonMethodsPage Failed ", e);
			throw new FLException("Instance creations of CommonMethodsPage Failed " + e.getMessage());
		}
	}
	public BCQPage getBcqPage()	{
		try{
			return (onBCQPage == null) ? onBCQPage = new BCQPage(driver) : onBCQPage;
		} catch (Exception e){
			Log.error("Instance creations of BCQPage Failed ", e);
			throw new FLException("Instance creations of BCQPage Failed " + e.getMessage());
		}
	}

	public ExternalURLPage getExternalURLPage()	{
		try{
			return (onExternalURLPage == null) ? onExternalURLPage = new ExternalURLPage(driver) : onExternalURLPage;
		} catch (Exception e){
			Log.error("Instance creations of ExternalURLPage Failed ", e);
			throw new FLException("Instance creations of ExternalURLPage Failed " + e.getMessage());
		}
	}
//************* React POJO

	public RCTCompleteFillingAppPage getRCTCompleteFillingAppPage()	{
		try{
			return (onRCTCompleteFillingAppPage == null) ? onRCTCompleteFillingAppPage = new RCTCompleteFillingAppPage(driver) : onRCTCompleteFillingAppPage;
		} catch (Exception e){
			Log.error("Instance creations of RCTCompleteFillingAppPage Failed ", e);
			throw new FLException("Instance creations of RCTCompleteFillingAppPage Failed " + e.getMessage());
		}
	}

	public EasySigningFormPage getEasySigningFormPage()	{
		try{
			return (onEasySigningFormPage == null) ? onEasySigningFormPage = new EasySigningFormPage(driver) : onEasySigningFormPage;
		} catch (Exception e){
			Log.error("Instance creations of EasySigningFormPage Failed ", e);
			throw new FLException("Instance creations of EasySigningFormPage Failed " + e.getMessage());
		}
	}

	public CreateApplication_ReactPage getCreateApplication_reactPage()	{
		try{
			return (onCreateApplication_reactPage == null) ? onCreateApplication_reactPage = new CreateApplication_ReactPage(driver) : onCreateApplication_reactPage;
		} catch (Exception e){
			Log.error("Instance creations of CreateApplication_ReactPage Failed ", e);
			throw new FLException("Instance creations of CreateApplication_ReactPage Failed " + e.getMessage());
		}
	}

	public CommonMethods_ReactPage getCommonMethods_reactPage()	{
		try{
			return (onCommonMethods_reactPage == null) ? onCommonMethods_reactPage = new CommonMethods_ReactPage(driver) : onCommonMethods_reactPage;
		} catch (Exception e){
			Log.error("Instance creations of CommonMethods_ReactPage Failed ", e);
			throw new FLException("Instance creations of CommonMethods_ReactPage Failed " + e.getMessage());
		}
	}

	public DataEntry_ReactPage getDataEntryReactPage()	{
		try{
			return (onDataEntryReactPage == null) ? onDataEntryReactPage = new DataEntry_ReactPage(driver) : onDataEntryReactPage;
		} catch (Exception e){
			Log.error("Instance creations of DataEntry_ReactPage Failed ", e);
			throw new FLException("Instance creations of DataEntry_ReactPage Failed " + e.getMessage());
		}
	}

	public ReviewerDocumentsPage getReviewerDocumentsPage()	{
		try{
			return (onReviewerDocumentsPage == null) ? onReviewerDocumentsPage = new ReviewerDocumentsPage(driver) : onReviewerDocumentsPage;
		} catch (Exception e){
			Log.error("Instance creations of ReviewerDocumentsPage Failed ", e);
			throw new FLException("Instance creations of ReviewerDocumentsPage Failed " + e.getMessage());
		}
	}

	public MultiSignerPage getMultiSignerPage(){
		try {
			return (onMultiSignerPage == null) ? onMultiSignerPage = new MultiSignerPage(driver) : onMultiSignerPage;
		} catch (Exception e){
			Log.error("Instance creations of MultiSignerPage Failed ", e);
			throw new FLException("Instance creations of MultiSignerPage Failed " + e.getMessage());
		}
	}

	public AllActivitiesPage getAllActivitiesPage()	{
		try{
			return (onAllActivitiesPage == null) ? onAllActivitiesPage = new AllActivitiesPage(driver) : onAllActivitiesPage;
		} catch (Exception e){
			Log.error("Instance creations of AllActivitiesPage Failed ", e);
			throw new FLException("Instance creations of AllActivitiesPage Failed " + e.getMessage());
		}
	}

	public TransferPage getTransferPage()	{
		try{
			return (onTransferPage == null) ? onTransferPage = new TransferPage(driver) : onTransferPage;
		} catch (Exception e){
			Log.error("Instance creations of TransferPage Failed ", e);
			throw new FLException("Instance creations of TransferPage Failed " + e.getMessage());
		}
	}

	public NotificationsPage getNotificationsPage()	{
		try{
			return (onNotificationsPage == null) ? onNotificationsPage = new NotificationsPage(driver) : onNotificationsPage;
		} catch (Exception e){
			Log.error("Instance creations of NotificationsPage Failed ", e);
			throw new FLException("Instance creations of NotificationsPage Failed " + e.getMessage());
		}
	}

	public SharePage getSharePage()	{
		try{
			return (onSharePage == null) ? onSharePage = new SharePage(driver) : onSharePage;
		} catch (Exception e){
			Log.error("Instance creations of SharePage Failed ", e);
			throw new FLException("Instance creations of SharePage Failed " + e.getMessage());
		}
	}


	public GroupsPage getOnGroupsPage()	{
		try{
			return (onGroupsPage == null) ? onGroupsPage = new GroupsPage(driver) : onGroupsPage;
		} catch (Exception e){
			Log.error("Instance creations of GroupsPage Failed ", e);
			throw new FLException("Instance creations of GroupsPage Failed " + e.getMessage());
		}
	}

	public TabAppPage getOnTabAppPage()	{
		try{
			return (onTabAppPage == null) ? onTabAppPage = new TabAppPage(driver) : onTabAppPage;
		} catch (Exception e){
			Log.error("Instance creations of TabAppPage Failed ", e);
			throw new FLException("Instance creations of TabAppPage Failed " + e.getMessage());
		}
	}

	public OrganizationPage getOnOrganizationPage()	{
		try{
			return (onOrganizationPage == null) ? onOrganizationPage = new OrganizationPage(driver) : onOrganizationPage;
		} catch (Exception e){
			Log.error("Instance creations of OrganizationPage Failed ", e);
			throw new FLException("Instance creations of OrganizationPage Failed " + e.getMessage());
		}
	}

	public MyPreferencesPage getOnMyPreferencesPage()	{
		try{
			return (onMyPreferencesPage == null) ? onMyPreferencesPage = new MyPreferencesPage(driver) : onMyPreferencesPage;
		} catch (Exception e){
			Log.error("Instance creations of MyPreferencesPage Failed ", e);
			throw new FLException("Instance creations of MyPreferencesPage Failed " + e.getMessage());
		}
	}

	public AdminActivityPage getOnAdminActivityPage(){
		try {
			return (onAdminActivityPage == null) ? onAdminActivityPage = new AdminActivityPage(driver) : onAdminActivityPage;
		}catch(Exception e){
			Log.error("Instance creations of AdminActivityPage Failed ", e);
			throw new FLException("Instance creations of AdminActivityPage Failed " + e.getMessage());
		}
	}

	public AdminProductPage getOnAdminProductPage(){
		try {
			return (onAdminProductPage == null) ? onAdminProductPage = new AdminProductPage(driver) : onAdminProductPage;
		}catch(Exception e){
			Log.error("Instance creations of AdminProductPage Failed ", e);
			throw new FLException("Instance creations of AdminProductPage Failed " + e.getMessage());
		}
	}


	public FormDesignerPage getOnFormDesignerPage(){
		try{
			return (onFormDesignerPage == null) ? onFormDesignerPage = new FormDesignerPage(driver) : onFormDesignerPage;
		} catch (Exception e){
			Log.error("Instance creations of FormDesignerPage Failed ", e);
			throw new FLException("Instance creations of Form Designer page Failed " + e.getMessage());
		}
	}


	public PackagesPage getPackagePage(){
		try{
			return (packagePage == null) ? packagePage = new PackagesPage(driver) : packagePage;
		} catch (Exception e){
			Log.error("Instance creations of packagePage Failed ", e);
			throw new FLException("Instance creations of Package page Failed " + e.getMessage());
		}
	}

	public AdminReviewQPage getAdminReviewQPage(){
		try{
			return (onAdminReviewQPage == null) ? onAdminReviewQPage = new AdminReviewQPage(driver) : onAdminReviewQPage;
		} catch (Exception e){
			Log.error("Instance creations of AdminReviewQPage Failed ", e);
			throw new FLException("Instance creations of AdminReviewQPage Failed " + e.getMessage());
		}
	}

	public EnrollmentPage getOnEnrollmentPage(){
		try{
			return (onEnrollmentPage == null) ? onEnrollmentPage = new EnrollmentPage(driver) : onEnrollmentPage;
		} catch (Exception e){
			Log.error("Instance creations of EnrollmentPage Failed ", e);
			throw new FLException("Instance creations of EnrollmentPage Failed " + e.getMessage());
		}
	}
}
