RBL CUG ORG - ORG03511
Remove CUG ORG Code when you go live:
 - app/Services/CreditCardRuleEngineService.ts

Refer when you have to remove coming soon page
 - https://github.com/credilio/customer-api/pull/1200/

RBL NOVIO UAT ENV

RBL_NOVIO_CLIENT_ID=3MVG9gwxgOelbpo.opruEReGpDrvmbjV7z.Px7rRCcEkqDVbdXxqSS77JvUOWRalHhzB3AGCvObKFW6dFi4Bf
RBL_NOVIO_CLIENT_SECRET=52AA98DC0A54C030A0A638018813D8C346F79042F5370D4FA0524FBC49BE294C
RBL_NOVIO_USERNAME=esb@rblbank.com
RBL_NOVIO_PASSWORD=Rbl@2025
RBL_NOVIO_SKYGEE_USERNAME=UATTEST
RBL_NOVIO_SKYGEE_PASSWORD=RBL@UATTEST1234

PRD Link:
 - https://cftpl-my.sharepoint.com/:w:/g/personal/prajyot_chakrawarti_credilio_in/ETE60tsW3RVClQsLvMs8dRABxCl2K2zB8ywhMY-c5BW_iw?e=XYJWJC&clickparams=eyJBcHBOYW1lIjoiVGVhbXMtRGVza3RvcCIsIkFwcFZlcnNpb24iOiI1MC8yNDEyMDEwMDIxMyIsIkhhc0ZlZGVyYXRlZFVzZXIiOmZhbHNlfQ%3D%3D


CRON:

node ace rbl-novio-cc:technical-error - every 1 hour
node ace rbl-novio-cc:lead-kyc-status - every 3 hour
node ace rbl-novio-cc:application-status - every day


RBL Broadcast

https://github.com/credilio/seed-data/pull/4151
https://github.com/credilio/credilio-api/pull/8777




Note: PRD contain figma design API documents and work flow of RBL




https://d12-customer.credilio.in/v2/Novio/landing-page/fixed-deposit?token=MTEyMA.JoG029BnW5JRsh1DyCdTolglfkxhGxPWQWwVA5pii0aMINvVxZ_aaYcgq06E


https://customer.credilio.in/v2/credit-card/apply?filters=bank_hdfc,card-fees_lifetime-free&utm_org_code=ORG02178&utm_source=Website_Marketing&utm_campaign=LTF_Hdfc_Dynamic_03rd_Feb25&token=MTYzMTY2NTc.i_QemEiRPrtqoDChFjcOSRWSSGuapPXYL0pzsK1QpXNC4F0ijM2UuaioEtfQ


https://customer.credilio.in?token=MTYzMTY3MDA.MeaaBsQWGtzIttdSac7hZGRpd23_wK_UsStu-EJRUBHPIoxmTGtaGXiLuA5S

https://customer.credilio.in?token=MTYzMTY3NDY.Ou4jRy3_1zJTowWkVb0Yalw5ZNJyTyUq8X9Newae2XuRuxgHP7E59jzLHjYG





https://customer.credilio.in?token=MTYzMDA3NTc.fBIYEA_zRzEx-GWBye2ciefmPkXHhVUCK1uiik1LEDrlcmX3dVnE20pt37GE

https://customer.credilio.in/v2/credit-card/apply?filters=bank_hdfc,card-fees_lifetime-free&utm_org_code=ORG02178&utm_source=Website_Marketing&utm_campaign=LTF_Hdfc_Dynamic_03rd_Feb25&token=MTYzMDA4MDQ.pFLb6GDgMe1SS60_hDKHGqRGXMOPtAFChN6sb_XkYYQbPZpDO6qepRJzCyBJ

Name: Amitkumar Ramnath Yadav 
Number: 9930854855
Email: yamit7296@gmail.com
Location: Mumbai(Malad)
Total Experience: 6 Years
Node Experience: 5 Years
AWS Basic Service Experience: 2 Years
Current CTC: 9.5 LPA (In hand : 73K)
Offer in Pipeline: 14.5 LPA (in pipeline, offer letter pending, Cylsys software solution pvt ltd 
Expected CTC: 15 LPA (in hand : 1.25 LPM)
Contract: 6 Months + Extendable


http://customer.credilio.in/v2/novio/landing-page/personal-loan?token=NzAzNTY.r-LTojL8nVPEMbq0zVTigWzmd-I19aw5MZBs9HDN3tPfo7C7cRLXjhjcCVic


https://customer.credilio.in/v2/credit-card/apply/?token=MTYyOTgzOTQ.6WkCREAuvJbwXQPRGPoXWP7FL0hbgSEpeF-DkgjW4gN8_W_eNnH8AT-TDQJA&target=WEBVIEW

2025-02-17



1. Refactor KPI Report
- https://github.com/credilio/credilio-api/pull/8826
- https://github.com/credilio/customer-api/pull/1162

2. Release check points
  - Add Queue > RblNovioCleverTapEventQueue > rbl-novio-clever-tap-event-topic
  - https://github.com/credilio/credilio-api/pull/8875
  - https://github.com/credilio/customer-api/pull/1180






2025-02-14




1. Brand Pack Purchase
https://github.com/credilio/customer-api/pull/1173/files


1. create index at customerTimeLine > status
2. create index at tbl_airpay_transaction > transaction_status
3. add index at tbl_customer_value_packs >  meta->>'isComplementary' = 'true'




Annual Income: 1300000
Tax: 25000
After Tax Monthly: 106250
After Compnay Deduction: 100250


Annual Income: 1500000
Tax: 93750
After Tax Monthly: 117187.5
After Compnay Deduction: 113387.5 (No Sodexo)

Final Monthly Diff: 13137.5
Final Yearly Diff: 157650 

==================================================


2025-02-12

FIXERA Callback URL

UAT: 'https://fixera-uat.novio.co.in/customer/v1/fixed-deposit/callback'
Production: 'https://api.novio.in/customer/v1/fixed-deposit/callback'


2025-02-10

node ace rbl-novio-cc:lead-kyc-status --applicationid 1739341012129874

node ace rbl-novio-cc:application-sttus --applicationid 1739341012129874

update tbl_customer_leads set status = 'AIP_APPROVED', sub_status = 'Dropped @Redirection' where application_form_id = 1739341012129874;

update tbl_application_forms set status = 'AIP_APPROVED', sub_status = 'Dropped @Redirection' where id = 1739341012129874;

update tbl_lender_application_responses set response = '{"url": "https://eqvd.short.gy/e0Tdk7h", "reason": "success", "success": "true", "applicationReferenceNumber": "CC07001627866"}' where step = 'NEW_LEAD_SKYGGE' and application_id = 1739341012129874; 


CT Event

- Reco Reeach logic
- 


lead - 1739277234934680
app - 1739277284161234



1. Dyanic Banner Handling
 - Prefilled URL through CT





1. Join the waitlist


1.


https://github.com/credilio/customer-api/pull/1172
https://github.com/credilio/credilio-api/pull/8856


https://customer.credilio.in/v2/credit-card/apply?filters=bank_hdfc,card-fees_lifetime-free&utm_org_code=ORG02178&utm_source=Website_Marketing&utm_campaign=LTF_Hdfc_Dynamic_02nd_jan25



pg_restore -U postgres -d dvdrental D:\sampledb\postgres\dvdrental.tar


2025-02-07

1. RBL Novio events
2. Pincode Auto Populate

-1738669600578808
-1738669600578808

3. Test YesBank




2025-02-06

public get defaultRequestData(): ApiRequestDataDefault<FetchCreditCardControlsRequestDataTypes> {
    return {
      partnerReferenceNumber: this.partnerReferenceNumber,
      actionName: YesBankCardEventEnum.FETCH_CC_CONTROL,
      userVerificationMode: this.userVerificationMode,
      partnerKey: this.partnerKey,
    };
  }


RBL_NOVIO
Status should in progress



1. CT

Credilio 
 - add novio clevertap Env
 - update ct base file and trigger the event base on source
 - 

 Novio
 -  

s1
cedilio -> create a lead / join waitlist
- call novio api
- fetch customer basis mobile
- if found, get code
- else, create entry in shadow table (mobile, code)
- note - for above point, when customer with above mobile no registers for first time, instead of creating new code, we will fetch from shadow table
- trigger ct & sng event.


s2
credilio -> create a lead / join waitlist
- create novio clevertap file which extends base file along with novio env credentials
- call novio api to fetch code basis mobile no
- if found, get code and pass it as identity
- else, create entry in shadow table (mobile, code) and return code.
- also store this code in credilio -> customer profile table
- when condition meets, call clevertap event.


DeepLink

- 

Static Deeplink + get Resume link









1. FIXERA key

FIXERA_PARTNER_KEY=6d111ec53f9e803f54779a40e8a09be5f8412a7a7bb485752b63e01361902b05
FIXERA_PARTNER_CODE=credilio
FIXERA_PRIVATE_KEY_PASSWORD=''

Add certificate 

create new folder fixera and add shared key 


2025-02-05

996499777586919


1. RBL NOVIO Application Status - check why it not updating properly
2. 



start/routes/customer/credilio-api/v1.ts > createOrUpdateUser

1. Call credilio api and pass the url in getNavUrls
2. Update the get details end points


start/routes/customer/credit-card.ts > 

2025-02-04

1. https://github.com/credilio/credilio-api/pull/8838/files
2. 


2025-01-31

1. Wait List
 - Enabled RBL_NOVIO_002 in CreditCardMaster
 - 

 D2C_RBL_NOVIO_THANK_YOU_PAGE


Rishika Jain
7581905547
BGCPJ7011B
01/01/1978
Aadhaar - 732785849222
Address - MIG 52 J sector Ayodhya nagar, 462041, Bhopal


After request type 2 card status change to AIP_APPROVED - 
Deeplink of novio where it will open inside the app - depency on app




- https://github.com/credilio/customer-api/pull/1152
- https://github.com/credilio/customer-seed-data/pull/192
- https://github.com/credilio/customer-web-new/pull/669
 


Release 

1. PL and FD CT Event
2. Disable deals
3. 




1. Redis
2. Micro-Service - Done
3. Kakfa-Zookeeper - Done
4. Docker
5. JS - Basic
6. Node - Basic
7. Solid & Design Pattern
8. HLD








2025-01-29

Release PR 
Novio
 - https://github.com/credilio/customer-api/pull/1152
 - https://github.com/credilio/customer-seed-data/pull/192

Customer
 - 



WITH more_offer AS(select c.id, c.created_at from tbl_customer_leads as c JOIN tbl_partner_callback_queue_logs as p ON c.id = p.lead_id where c.meta->>'journeyType' = 'CREATED_FROM_MORE_OFFERS' and c.created_at > NOW() - INTERVAL '12 hour' group by c.id order by c.created_at desc limit 2)
select * from tbl_partner_callback_queue_logs as log JOIN more_offer as m ON log.lead_id =  m.id order by log.lead_id, log.created_at;

WITH more_offer AS(select c.id, c.created_at from tbl_customer_leads as c JOIN tbl_partner_callback_queue_logs as p ON c.id = p.lead_id where c.created_by = 'CUSTOMER' and c.created_at > NOW() - INTERVAL '12 hour' group by c.id order by c.created_at desc limit 2)
select * from tbl_partner_callback_queue_logs as log JOIN more_offer as m ON log.lead_id =  m.id order by log.lead_id, log.created_at;

WITH more_offer AS(select c.id, c.created_at from tbl_customer_leads as c JOIN tbl_partner_callback_queue_logs as p ON c.id = p.lead_id where c.created_by = 'ADVISOR' and c.created_at > NOW() - INTERVAL '12 hour' group by c.id order by c.created_at desc limit 2)
select * from tbl_partner_callback_queue_logs as log JOIN more_offer as m ON log.lead_id =  m.id order by log.lead_id, log.created_at;




2025-01-28

1. Deploy the Deal Disabled PR
2. Complete KPI report optimizations


update tbl_partner_callback_queue_logs set status = 'DONE', success = true where id = 1738069766743903;



2025-01-27

1. Deals disable - Shailesh
2. RBL_NOVIO Tech issue from RBL Team - take update
3. Enable FD for testing
4. KPI Report Optimization


1. Keep SBM Banner
  - 



2. NavBar Handling
  - Create new point
  - add 2 keys 
  {
    rbl_target_url:
    sbm_targer_url:
  }






1. Total Novio Application
2. CardNotSelectedTotalApplication
3. totalOtherCreditCardSelectedApplicationCount
4. totalOtherCreditCardIssuedApplicationCount
5. totalSBMApplicationsCount
6. totalSBMIssuedApplicationsCount


WITH DATES AS (SELECT 
      DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
      DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
      DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
      DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
      DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
      DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end)
SELECT 
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount",
      FROM 
        tbl_airpay_transactions 
      WHERE 
        created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)`;


2. 





1. Library Index > YesBankService
2. DefaultValue For each API
3. We need to store request, requestRaw, encrypted_request 


















2025-01-22

Hi Manoj,

Please approve the below leaves and WFH

Leaves
1. 21st Dec, 2024 & 20th Jan, 2025

WFH
1. 09th Jan, 2025 

Regards,
Amit Yadav


2025-01-14

RBL BroadCast Link

1. https://d10-api.credilio.info/customer/cc/utm-link/validate/lead-data
2. https://d10-api.credilio.info/customer/cc/utm-link/card/store
3. https://d10-api.credilio.info/customer/cc/utm-link/consent/1736835832294655


Changes
1. Enable RBL_NOVIO card in CreditCardMaster
2. Include RBL_NOVIO in app/Services/CustomerLeadService.ts > createUtmLinkCustomerLeadAndApplicationForm 
3. Add LenderAPIVersion V4 Status Sub Status Mapping

2025-01-13

Personal
1. SBM 
2. Tax Room Rent and L.T.A


YesBank PR Review








2025-01-06

Personal
1. SBM card closure status ⏱️
2. Room Agreement and Tax 

Work
1. Discuss category icon master in statement
{
  categoryCode: YESBANKCODE,
  icon:
  textColor:
  backgroundColor:
  isActive
}
2. Dynamic Banner - Archit is checking
3. Ask for App Build // Expecting today by 5 PM
4. Product Code and ARN // Dependency VKYC is pending
5. Callback PR review



2025-01-03

Personal


3. Hbits Offer Reply

Work


5. Share Curl Request 👍
6. Brand Pack Enhancement 👍






2024-12-30

1. https://github.com/credilio/customer-api/pull/1116/


1. get Yes bank in profile api
2. Store yes_bank_customer_log



2024-12-27

1. 



2024-12-24

1. app/Services/CreditCardService.ts
Line 575






2024-12-20

1. Yes Bank Phase2 PRD Review
2. List down the routes and prepare the estimation

RBL - 

  rbl-novio-queue-and-retry-cmd
  rbl-novio-sync-api-call
  rbl-novio-token-generation-logic-handling



2024-12-19

1. Call Kapil for door
2. 


#####Maithili

7715989945
DCFPB2071G
400604

E001
ashar 16, wagale estate, thane west

Near Ashar IT Park
Wagale Estate
Thane West


##### Firoz

7877799786
GDFPK3035M
400059

602, Royal green, Marol Road, Marol Metro, Marol Metro station



2024-12-17

1. RBL NOVIO
 - Build Queue and Cron
 - Ask to share technical error clarity to Prajyot

2. Get Create Lead API QA done and get Documentation Done from Arbaz

3. Go through with Yes Bank PRD



2024-12-13

1. RBL - NOVIO
    - Handle 0 status code which fall in technical error

  a. conUniqRefCode - minimum number handling







    - Technical Error Retry Cron
    - RBL - NOVIO Queue

2. FD - PR to Review
3. Create lead API
 - Please confirm whether create lead is explicitly allowed for D2c
 - API doc
 - API Versioning for create lead API






/customer/v1/fixed-deposit/1733481966018516


https://credilio.dev.fixerra.in/login?




2024-11-26

#### Webhook Status Optimizations

Query

1. Why should we call refund API on below scenario
   1st callback > Failed
   2nd callback > Success


#### Home page Revamp

1. Where we will show 






2024-10-16

1. RBL Employement type changes

Leet code 






2024-10-15

1. select * from tbl_customer_leads where id = 1728992121455541;


Report ReadOnly 
true   false




HDFC OLD Leads

1727088005267715,1727425119570922


1726398663450285,1726393467836215


HDFC NEW LEADS

1728038178533850,1728014256345486

select 


2024-10-14

1. Automation


https://github.com/credilio/credilio-api/pull/8448/files
https://github.com/credilio/customer-seed-data/pull/137
https://github.com/credilio/customer-api/pull/1037

2024-10-11

1. 




2024-10-10

1. Add index on status column of timeline table
2. Add report generation on queue

1. Buy Watch 
2. Shoes
3. Basket

1. Leet code


pgRead: {
      client: 'pg',
      connection: {
        host: Env.get('DB_READ_PROXY_HOST'),
        port: Env.get('DB_READ_PROXY_PORT'),
        user: Env.get('DB_READ_PROXY_USER'),
        password: Env.get('DB_READ_PROXY_PASSWORD', ''),
        database: Env.get('DB_NAME'),
      },
      migrations: {
        naturalSort: true,
      },
      healthCheck: false,
      debug: false,
    },


2024-10-04

1. Bureau Exists in Credilio

Next Screen 
Status

2. If Customer is NTC and Wrong Number



SIM_BINDING_COMPLETE > Mobile Number Enter
PAN_ENTERED_VERIFY_PRIMARY_CONTACT > 
PAN_ENTERED_PRIMARY_CONTACT_VERIFICATION_FAILED
PAN_ENTERED_FETCH_BUREAU
PAN_ENTERED_UPDATE_BUREAU
BUREAU_FLOW_CONFIRM_MASKED_MOBILE
BUREAU_FLOW_VERIFY_MASKED_MOBILE
BUREAU_FAILED_CREDILIO_VERIFICATION
BUREAU_EXIST_CREDILIO_VERIFICATION
CUSTOMER_REGISTERED
CUSTOMER_SUSPENDED



2024-10-01

1. https://d12-api.credilio.info/customer/cc/rbl-novio/personal-info/1727784637255533

2024-09-30

1. Spense Webhook -  Webhook not able to test
2. Spense Prod end point is missing



2024-09-25


9930854841 - Bureau Flow

8655675480


8655675483

HDVPP5687Y

delete from tbl_short_urls where original in ('https:/d2-customercredilio.in/privacy-policy', 'https://d2-customer.credilio.in/terms');

delete from tbl_short_urls where short = 'https://crdl.in/dGpP';

- Credilio 
1. Bureau Expearian Issue - Deployed on D7
2. Choice & Bharat NXT

- Novio

1. https://app.clickup.com/t/86cwfw8az


Reports 
> Commands
> Create API to fetch Novio All Application



No. of Users visited brand pack sections 
> VALUE_PACKS_FETCHED
No. of users attempted to purchase
> 
No. of Users purchased
> tbl_airpay_transactions
Total Brand Pack Purchased
> tbl_airpay_transactions
Average Brand pack purchase per customer
> tbl_airpay_transactions
Failed purchases :
Failed
Cancelled
Pending
Refunded

Failed Transaction/Successful Transaction

Total Value of packs purchased

Average Brand Pack Value

Total Complementary Brand pack Count
> CustomerValuePack > meta > Is complimentary


1.Total Application on novio
1.1 Card Not selected
1.2 Other Credit Cards Selected
1.2.1 Other Card Issued
1.3 SBM Card selected
1.3.1 SBM Card Issued





2024-09-23

1. Loans 24 callback retrigger - Sent leads to retry
2. MC changes - Awaiting for Roosevelt to raise changes
3. Review Migration and rebase channel mapping





2024-09-20

1. Yes Bank Application Rejected

Sub Status - Credit Score Rejected




Technical Error - Approve in progress




https://app.clickup.com/t/86cwj2zzk







2024-09-16

1. Callback Report till 24 sept
2. AIP Status Sub-Status PR Review
3. Clevertap Sprint task
4. Inform IDEdge about callback retrigger
5. Check Last 2 days callback Summary Report


Retrigger Callback Report

#1720521111279123
#1720698147648610
#1726298403114923
#1725008045422984
#1720181987321543
#1722844264548631
#1722711972182131
#1722424765246622
#1720080188737162
#1720079965600504
#1720003480823489
#1722851683098385
#1718919017084587


delete log

1720698330628424





2024-09-13

1. ONLY REDITECTION JOURNIES

- HSBC
- YES
- IDFC
- INDUSIND
- AUBANK
 - AIP_APPROVED	Approved In Principle	Confirm Card Features

- RBL - Please excel sheet for updated migration

Seed & Migration
    - AMEX - KYC - Document verification Pending > credit review - Underwriting

HDFC 
 - AIP_APPROVED	Approved In Principle	Customer Not Contactable
 - AIP_APPROVED	Approved In Principle	Provide Consent To Submit Application



AXIS - API

Customer Not Eligible	Validation failed - Should we add this sub status as default sub status
KYC_STAGE	KYC Stage	Physical KYC Pending - NA in master - But it was in migration given earlier please update the sheet


HDFC - API

SUBMITTED_BY_CUSTOMER	Application Incomplete	NULL - What will be substatus here
Application Incomplete  Customer Not Contactable - Where should we add
Application Incomplete  Customer Not Intreseted - Where should we add

TECHNICAL_ERROR	Application Submitted	Income verification pending at bank  - NA in Master
TECHNICAL_ERROR	Application Submitted	Income Verified application details being sent to bank - NA in Master

AIP_REJECTED	AIP Rejected	Bank Policy Reject  - NA in Master

ONLINE_PROCESS_COMPLETED	KYC Stage	Sent for Biometric KYC - It should be "Initiated Biometric KYC"

Credit Review     Pending for Physical Verification - Not Present PR changes

CREDIT_REVIEW	Credit Review	Netbanking Success - Under Final Review - NA in Master
CREDIT_REVIEW	Credit Review	VKYC Success - Final Status awaited - NA in Master

Mail - substatus ” AIP - in progress” ?
For Technical Error, we currently use the status "AIP - in Progress". But for HDFC, the requirement is to change it to "Application Submitted". The problem with this approach is that we use Tech Status in the background to filter the leads. So the leads in "AIP - in progress" will appear too while searching for the leads in "Application Submitted" & vice-versa.- This is fine. Status “Application Submitted” and substatus ” AIP - in progress”



SBI - API


Application Incomplete - Dropped @Additional Info Screen - Missing in PR
Application Incomplete - Customer to Complete OTP Verification - Missing in PR

SUBMITTED_BY_CUSTOMER	Application Not Submitted	Customer To Be Contacted - NA in Master

https://admin.credilio.in/lead-details/1726639549161467

KYC_STAGE	KYC Stage	EKYC Pending - NA in Master
KYC_STAGE	KYC Stage	Income Docs + KYC Required - NA in Master
            KYC Stage   Documents Pending - Missing in PR

            Card Issued	Multi-card - Why we are adding sub status as multi card


In SBI, are we removing "Approved In Principle" status? –  Yes, All applications move to  status “KYC Stage”
If yes, what about the applications currently in "Approved In Principle"? Will automatically move to status “KYC Stage” “Income Docs + KYC Pending”
For SBI, there is an additional sub-status "Customer to Complete KYC" under "Approved In Principle". What's to be done about that? Currently, there are 68 leads in this status/sub-status? Will move to substatus  “EKYC Pending” under “KYC Stage”










2024-09-12

EZCL Sunset

1. Redirection EZCL to Credilio
2. Rediration to eazycardloan.in to credilio
2. Link generation from credilo domain
3. SMS should go through CRDL
4. Need to whitelist all PNP SMS Template to Credilio
5. Clevertap - Domain name handling



2. Credit Mantri - Status clarity

3. IDEdges - Callback

4. PNP Lites - Issues





2024-09-10

1. 1720610664195799 - Expired callback should not be created
2. 1725783154254115 - Lead Verified but bureau not fetch
3. 1720674416236425 - Lead Expired, but callback should not be created
4. 1720511972879513 - Expired callback should have triggred callback


#1725923182660865
#1725893317819343
#1725890235976480
#1720696905847403



2024-09-09

1. Callback related points




1720610664195799
1725783154254115
1720674416236425
1720511972879513

2. Money Control UAT Testing

https://dev-customer.credilio.in/v2/credit-card/apply?utm_org_code=ORG01082&utm_Source={UTM_SOURCE_CARD_ID}&utm_Customer_ID=aEJmM0c3RTV2Zg==&encryptedData=u9GpEbZu8bB2B/7AcPbe55MfbsqvAvGA2gFu72Dm/3lXLW6q8lePHdDkajYO0PxBCtnKsmlSLts6XfbcuHcfsY+Swrcuq0iJbLK5jsdYMjzEawAg8rOOfRwL4ioUOXZP&pageState=CREATE_LEAD

1. utm_source - Instead of value you are passing place holder
2. Is it card specific journey or simple redirections


3. Status sub status







2024-09-06

1. AXIS V3 - Deploye for TESTTING
2. HDFC Non API / Offlien 









Money Control
0. More offer API
1. Theme configuration for Money Control
2.






2024-08-04

1. AU BANK PAN name check PR
2. 










2024-09-03

1. Loans 24 Report



1724421661571316 - 2024-08-23
#1724554754324817 - 2024-08-25
#1724769010343681 - 2024-08-27
#1724738679383745
#1724717513579929








2024-09-02

1. Axis bank credit cards Application error - 1724474258668651

UPDATE tbl_application_forms SET meta = jsonb_set(meta, '{kycCompletedByCustomerDate}', 'null'::jsonb, false) where id = 1612033338101768;

UPDATE tbl_application_forms SET meta = jsonb_set(meta, '{kyc_completed_by_customer_date}', 'null'::jsonb, false) where id = 1612033338101768;


- 2024-08-29T12:11:22.777+05:30


2. Callback Report

01-09-2024
 - ID Callback count 65
 - Airtel Callback not created 8

31-08-2024
  - ID Callback count 66
  - Airtel Callback not created 6

3. IDEdge Callback Issue - Raised point with Sanam


4. AXIS
5. HDFC
6. SBI
7. SCB

8. Handling for Expired Leads
9. Bureau Not Fetched - 1725205563446714 how to send callback for such cases


1. HDFC Status Sub Status Review

 - Netbanking Success - Under Final Review // Need to add in waterfall report
 - Application not submitted > Application not started  // Change not found in V4



2024-08-30

1. Airtel and IDEdge Callback failure


SBI 

Offline - LenderAPIVersion IS NULL
API - V2
UTM - V4


SCB

Offline/API - LenderAPIVersion IS NULL
UTM - V4

HDFC
Offline - LenderAPIVersion IS NULL
API - V2
UTM - V4

AXIS
Offline - LenderAPIVersion IS NULL
API - V3
UTM - V4


SYNC 
1. SBI, AXIS
    - Offlline status SYNC to UTM Status
    - API to offline migration
    - Offline Timeline
    

2. HDFC
    - UTM Status migration
    - Offline Status SYNC with UTM
    - Pending Action If any 
    - WaterFall Report
    - Migration

3. SCB - 
    - Add lender API version as V2 to API 
    - Also need to add lender API version while creating new Lead
    - Migration mapping for API Status against Offline Status
    - Pending Action changes

4. AXIS - In Progress 
    

















1720425044676166
#1719810114244458
#1719809365951692
#1715772061701273
#1719734178703822
#1719727980242410
#1719750408863854
#1719741500747703
#1719804734987122
#1724939636553567
#1724929254204129
#1724931513703829
#1724931610080455
#1724929130102689
#1724750949845183
#1724860476691279
#1724331431025924
#1724935447835431
#1722757718975189
#1722274561270637
#1722769419018639
#1722279176265268
#1720417458415384
#1720079164241395





2024-08-28

1. Lead Verified 
1724738679383745
1724717513579929
1724769010343681

2. Pending callbacks 

1720521111279123
1722274561270637
1722329844679339
1722540400375677
1722677738741287
1722683897557180
1722787714515401
1722790040993268
1722800950351924


2024-08-27

1. SCB - Add V4 Status Sub Status for SCB Offline

https://api.credilio.in/admin/lead/application-sub-status/1724245198262240?current=APPROVED_IN_PRINCIPLE

app/Services/OrganizationLenderUtmMappingService.ts > createOffSystemLead

Steps:
- Store LenderAPIVersion as V4 in meta of customer Lead and Application
- Migration - Add V4 lenderAPIVersion in all SCB Offline leads


2. AXIS V3


2024-08-23

1. Approval in Progress Instead of Approval in Principle Pending from Bank
2. Need to understand the Axis Status Sub Status Changes




2024-08-22

Bureau

1. Birth Date not present in Bureau
2. Birth Date in not valid
3. Future date
4. 1900 Date





1. Reply to Loans24

There was an issue in the system which impacted the callbacks for severl leads. The issue has been identified and a fix was applied on 8th August, however, we missed doing correction for the impacted leads. We have been monitoring the callbacks and a small fix is being applied today as well to improve the stability.

In the future, to ensure that the issue never occur, and, even if occurs, the system auto-recovers from it, we will be doing the following:
1. A daily summary report will be generated for tech team to review the performance and anomalies.
2. The anomalies will be RCA'd and fixed on identification.
3. We will explore mechanism to automatically identify and process the leads which weren't processed for callbacks due to a certain anomaly as a way to increase the system resiliency.

We will keep you posted of the progress about the same every few days.




We identified a system issue causing callback failures. On August 8th, we implemented a fix, and today we are applying a second fix that should fully resolve all the issues raised by Loans24.

Additionally, we are working on a summary report for internal use that will provide insights into callback success and failure counts. This will help us proactively fix addressed issues highlighted in the report.



2. https://github.com/credilio/credilio-api/pull/8286 - Mask_BUREAU_FLOW fix 

3. Status SubStatus clarity is pending

4. Prepare a report to identify callback failures


2024-08-21

1. Credit Cards Leads mismatch - Reply
2. Gautam PR review - Done
3. Send Mail Regarding leave to Munjal
4. Attendance Regualrization - Done
5. Status SubStatus
 - https://app.clickup.com/t/86cw7hvj9 - AXIS - V3
 - https://app.clickup.com/t/86cw5wug8 - RBL

6. Discrepancy in Loans24 Leads Status
 - 1723117992129630 - Application Incomplete
 - 1723107921070296 - Cards Offered



2024-08-20

1. Share KYC Permission related document with Archit
2. 


2024-08-16

1. Prepare estimation for Status sub status task - 


STAtus 

1. 












2. More - Offer - Camel Cases discussion with Munjal






2024-08-13

1. 


If we are updating/Removing then those changes should get updated in timeline


2024-08-12

1. Analysis the callback changes working or not
2. More-Offer documentations - Assigned to Munjal
3. 




2024-08-08


1. 432579754060184 > 3282448456





2024-08-07


1. customer/cc/lead/card/more-cards/1717592111481535
2. customer/cc/lead/card/store/1723020642811708
3. customer/cc/lead/card/recommendations/1723020642811708



2024-08-05

First Half
1. IDEdge Agent Login Issue - Done
2. Callback Issues address & Single Instance of AXIOS by Manoj - 1
3. Callback Retrigger - 2
4. Get an update From Sawan
5. partner/cc/lead/status - need to check


Second Half
LLD - SOLID, Singleton, Buidlers
DSA - Recursions


7170117706







1. Block Lead Creation through lead Form - Jul 3
2. Added a check lender based Pincode check in create Lead API - Jul 4
3. Restrict AutoFill - Jul 25
4. New Address dropdown & Preferece Text removal on Additional Info - Jul 12
5. Return same lead If same card Id & mobile number exists in-progress state - 31 July



1. Create Callback

app/Services/CustomerCreditCardService.ts > handleEnhanceMatchCall 






2024-08-02

1. Deploy callback changes
2. AIRTEL - Update on tech issues 
3. AIRTEL - Check Timeout issue - 8448623118, 7050168974
4. IDEDge - Reply to them


Hi Ankit, 

Point 1: We have retriggered the callbacks. Please check and confirm. This issue should not occur again, as we have addressed the root cause on our end.

Point 2: We will update you once we determine the cause.



2024-08-01

1. Vodafone - Callback Issue
2. AIRTEL - 1722255087699662 - 29th Card Offer Leads
3. 8448623118 - Timeout reason
4. Vodafone - IOS Permission document
5. IDEdge - Callback Error
6. Finjoy - Callback Error - Shared logs


1720546237814640 - BUREAU_ENHANCED_FLOW



cc/more-cards/1722493363268572
cc/card-recommendation/1722493575709620
cc/selected-card/1722493575709620



 =====================
1. Retry 1 second dalay
2. Order by created
3. Freque

Vodafone 

Delays in Delivery of Callbacks

Issue:
In the UTM journey, we're combining three steps into one: lead creation, eligibility rule engine processing, and card selection. This results in multiple callbacks being triggered within milliseconds of each other. Since these processes run in a queue, it's important to maintain the correct order: lead creation, eligibility rule engine, and then card selection.

Occasionally, two callbacks try to execute on the same entry. If the first callback hasn't been sent yet, we abort the subsequent callbacks and retry them after 30 minutes to ensure the correct sequence is preserved.

Solutions:

1. Reduce Retry Time: We're considering reducing the retry interval to 5-10 minutes. This would result in callbacks being triggered with a 5-10 minute delay, allowing for a more timely response while still maintaining order.



As we discussed today, we are working on 3-4 solutions to reduce the delay. Please allow us some time till tomorrow evening to get back to you


Hi Dinesh,

We have internally discussed an optimisation approach that we are working on. Allow us time till tomorrow evening to share the further updates.




2024-07-27

1. customer/cc/lead/card/get-leads/1722319948097196
2. FinJoy



Total of 80C/80CCC/80CCD(1):  			146590.00




2024-07-26

1. PNB Agent Id Updation - Assigned to Sanam - DOne
2. Add Timedout and stay alive in callback - Done
3. Check the timedout cases shared by Sawan - Assign to Manoj - Changes made
    1. 8333933684
       HDFC_023
    2. 8146522203
       HDFC_008
       Jul 25, 2024 @ 22:24:11.648
4. RedMil Meeting at 11:30 - Done
5. Leads without application statuses - Done
6. FinJoy Encryption Issue - Secret key shared with FinJoy
7. Retrigger create callback - IDEdge



https://customer.credilio.in/v2/credit-card/specific-card/HSBC_002?utm_org_code=ORG03117&utm_agent_id=12345678&utm_apply_for=HSBC_002&UTM_Customer_ID=00005057&encryptedData=7+cROtJlUostqJ+aS8ekmYCFprdR4AFl1kLByHlWv3DLMqFkojVzOrUKukwMG5NnIJPNPgfKbOANYP75y0hqrJTsZ7bMcbRzBpVmazfLiXCnZVDSuisGIDRbkckMm7Iv4RIW4Y5NcAppzKV/4sOcY8u9nHSvCfe+4Iu2HQzuzUfI8WcgcC5klucprYmm5peLgNtVHP04nXR35WbWIZKazOv4eFdtXin4tJB6Ng/j9cGLxVUa19BwmfA3kzWoXgaP6w9DZGf+XFNREWmanaEr0sgaTzxyCLkA2pvWNwiwPec=




2024-07-23


1. Vodafone - SMS Issue - Done
Dear Purva, Your VODAFONE PRINCIPLE representative has created an Application Form for HDFC Bank Credit Card. Click here https://ezcl.in/oWZ4 to verify and complete further online process. Team Easycardsloans


2. In the Vodafone journey, since the HSBC cards are not enabled, I should not be getting the option to complete the application for HSBC cards on the complete application page.

Done


3. FinJoy issue

Finjoy - Only one thing, if we are sending encrypted data, sometimes on your page it throws error invalid data. I hope that doesn't appear in production.

4. Credilio <> Finvedge II Partnership

it is working on Postman but there's 403 Request blocked error when using same request from finvedge.com, please confirm if website domain needs be whitelisted or something else is required.

5. Share the log With Cars24 1719839881896614; 1719846892203688 - Done

6. Check Leads ID Request timed out



2024-07-17

1. Auto fill changes - Pending
2. Channel Filter - PR deployed
3. 


2024-07-13


customer/cc/application/details/1721035729587788

1. Channel Type

 - Make Organization
    API 
        - admin/organization
        - updateOrganizationDetails/:organizationId

    {
        "type": "INDIVIDUAL",
        "advisorId": "1702387914652894"
    }

 - Make Influencer
 API - admin/advisor/upgrade-to-influencer/1669972198400223

- /organization/invite/check
- /advisor/profiles/store-about-yourself

2024-07-12

1. Rebase dev server with new d2c and deploy block autofill - Done
2. Address drop down deployed on dev - Shubham - Done
3. Preference text changes - Zubair
4. Discuss Checkpoints related on OnBoarding - Roosevelt - Done
5. When clicking on top back button, an exit nudge appears but when clicking on yes i want to exit it does not take me back to home page but it keeps me in an endless loop - Need to discuss with Roosevelt
6. https://app.clickup.com/t/86cvuzyua - Channel Type - PR review
7. BOB Broadcast link issue debug - Done



https://uat-admin.credilio.in/advisor-details/1702387914652894


https://uat-api.credilio.in/admin/reports/customer?productType=CREDIT_CARD&type=LEAD_CREATION&from=2024-07-11&to=2024-07-11&channelName=MARKETING_CHANNEL


https://uat-api.credilio.in/admin/lead/download?from=2024-07-01&to=2024-07-10


Point to check

1. Advisor Creation
2. Upgrade as org / Influncer
3. Reports
4. Lead List download
5. Clevertap


Pending Points

1. Required org code for novio and marketing channel
2. What will be the type of org for Affiliate channel
3. Lead Report Channel Filter design - Front-end
4. Migration related data required


deeplink tester - android


D2C Airtel 

https://dev-customer.easycardsloans.com/credit-card/personal-info/1720519180383548?utm_org_code=ORG03148&fromV2=true

https://dev-customer.easycardsloans.com/credit-card/personal-info/1720519180383548?utm_org_code=ORG03148&fromV2=true

https://dev-customer.easycardsloans.com/credit-card/address/present/new/1720519180383548

https://dev-customer.easycardsloans.com/credit-card/address/office/new/1720519180383548

https://dev-customer.easycardsloans.com/credit-card/status/pending/sbi/1720519180383548


https://dev-customer.easycardsloans.com/credit-card/personal-info/1720699005505870

https://dev-customer.easycardsloans.com/credit-card/address/present/new/1720699005505870

https://dev-customer.easycardsloans.com/credit-card/additional-info/1720699005505870



2024-07-11

1. https://github.com/credilio/credilio-api/pull/8127 - block autofill


2024-07-10

1. Update all partner credilio logo to new logo
2. Footer Changes False - Credilio, True - trusted


https://d10-customer.credilio.in/credit-card/personal-info/1720606540723458?utm_org_code=ORG01066&fromV2=true
https://d10-customer.credilio.in/credit-card/address/office/new/1720606540723458

https://d10-customer.credilio.in/credit-card/additional-info/1720606540723458


https://customer.credilio.in/credit-card/address/present/new/1720765936963743


HDFC
PAN Screen
https://d10-customer.easycardsloans.com/v2/credit-card/HDFC/verify-application/1720607299178289



API

HDFC


https://d10-api.credilio.info/customer/cc/application/details/1720606855423616
https://d10-api.credilio.info/customer/cc/hdfc/customer-details/1720606855423616



https://d10-customer.credilio.in/credit-card/personal-info/1720607299178289?utm_org_code=ORG01066&fromV2=true


https://d10-customer.credilio.in/credit-card/additional-info/1720607299178289

2024-07-09

1. Airtel SBI Status updation - Task is pending from Purva ends
2. https://app.clickup.com/t/86cvvxdc2 - CR- Autopopulate should not be done for Airtel - Help Dipali to test
3. MOM - Cars24 <> Credilio (14-06-2024) - Prepare Partner onboarding checklist
4. Redundant "Preference for credit card" on additional details page - Zubair checking
5. Removal of “Select address field” from address page - Shubham is checking
6. https://app.clickup.com/t/86cvuzyua - Channel Type - PR review
7. Axis Drop off link opening in novio page - Purva is checking (Marketing issue)
8. Redirected to credilio page - Purva is checking (Marketing issue)
9. IDEdge feedback on new design - Purva Handling



1. How we will manage Employement & company name fields as both are readonly on Personal Info and Addition Info screen.


2024-07-08

1. Airtel - SBI cases not getting updated
2. Request to blocked the data in automation. - Maithali
3. MOM - Cars24 <> Credilio (14-06-2024) - Need to discuss 
4. Check PayNearBy callback
5. Auto Population issue in AIRTEL
6. IDEdge Queries - Done

https://admin.credilio.in/lead-details/1719849006433399
https://admin.credilio.in/lead-details/1719849105145941


1. Secondary card logs - Done
2. Rahul PR Review
3. Partner d2c lead api logs
4. Callback Issue
5. Check netMonthlySalary as Salaried and annualIncome as self employed - Done
6. RedMil Encryption Issue - Done



https://dev-customer.credilio.in/credit-card/apply/?utm_org_code=ORG01067&utm_apply_for=AXIS_003&utm_source=App&utm_campaign=HDFCSwiggyHeroBanner


select concat('#', l.id) as leadId, concat('#', l.application_form_id) as applicationId, l.* from tbl_customer_leads as l JOIN tbl_credit_card_master_partner_mappings as m ON l.utm_apply_for = m.credit_card_master_id and m.type = 'SECONDARY' and l.partner_id = m.partner_id;

2024-0703

1. Pls share the consolidated list of the partners using the EZCL domain link/ sender id, as discussed during the meeting. - Done

2. D10 Customer Link for below partner - Done

Cashify -top priority
Turtlemint
IDedge
Car Dekho
Bike Dekho
Paysprint
Anaxee

3. PaySprint II UAT & Test Credentials (Callback Issue) - Done

1713504595198231, 1713598931982927
1713512610813241

4. https://app.clickup.com/t/86cvvbwwy - Will raise a PR

 - for Vodafone the sender ID has to be kept credllio and not EZCL

5. Callback Issue Discusstion with Sawan

6. Review Waterfall changes Timeline 


 
 

=======================================================================

1. Name Mismatch - Digit Money


{ "name": "MD Bellal", "pan": "AURPB6839k", "mobile": 9861670786, "employmentType": "SALARIED", "income": 50000, "pincode": 110025, "email": "na@gmail.com", "birthDate": "1993-03-27", "gender": "M", "address": "Credilio, Marol, Mumbai" }{ "name": "MD Bellal", "pan": "AURPB6839k", "mobile": 9861670786, "employmentType": "SALARIED", "income": 50000, "pincode": 110025, "email": "na@gmail.com", "birthDate": "1993-03-27", "gender": "M", "address": "Credilio, Marol, Mumbai" }

2. Airtel Issue

a. Lead 1719889302839332 - Why they have received card offer
b. 


dev-customer.easycardsloans.com/credit-card/resume-journey/1719923449560220/?utm_org_code=ORG03148



2024-06-28

Prevent auto filling

Screen

SBI

1. https://dev-customer.easycardsloans.com/credit-card/personal-info/1719567654204740

2. https://dev-customer.easycardsloans.com/credit-card/address/present/new/1719567654204740
3. https://dev-customer.easycardsloans.com/credit-card/address/permanent/new/1719567654204740
4. https://dev-customer.easycardsloans.com/credit-card/address/office/new/1719567654204740
5. https://dev-customer.easycardsloans.com/credit-card/address/communication/1719567654204740
6. https://dev-customer.easycardsloans.com/credit-card/additional-info/1719567654204740

https://dev-customer.easycardsloans.com/credit-card/personal-info/1719823199171148 
https://dev-customer.easycardsloans.com/credit-card/address/present/new/1719823199171148

HDFC

1. https://dev-customer.easycardsloans.com/credit-card/hdfc/verify-application/1719577030046389
2. https://dev-customer.easycardsloans.com/credit-card/personal-info/1719577030046389
3. https://dev-customer.easycardsloans.com/credit-card/additional-info/1719577030046389

Auto Filling

https://dev-api.credilio.in/customer/cc/lead/card/personal-info/1719567654204740
https://dev-api.credilio.in/customer/cc/lead/card/show-address/1719567654204740
https://dev-api.credilio.in/customer/cc/lead/card/show-communication-address/1719567654204740
https://dev-api.credilio.in/customer/cc/hdfc/customer-details/1719577030046389


Extra API calls
1. https://dev-api.credilio.in/public/masters/credilio/all - Extra
2. https://dev-api.credilio.in/public/masters/lenders/all
3. https://dev-api.credilio.in/customer/cc/lead/card/customer-lead-details/1719567654204740 - Model Object, data should be serialize here

Once Lead Expired you should show Apply Now instead of Resume button against same card, so you can apply new application


node ace partner:retry-callback --leads 1719465685631193

Once lead expired you can apply for same card, but here the resume link which you calling is associated to old lead id and this is the common screen which we show to all status after the application submission.

Here you have to create new lead, through you lead form





https://dev-customer.easycardsloans.com/credit-card/resume-journey/1719567632594713

Problem

1. Able to go back by pasting URL to back screen, and data is showing as prefill and can update
2. https://dev-customer.easycardsloans.com/credit-card/address/communication/1719567654204740 - If we not showing prefill then what will we show here
3. 



2024-06-27

1. Secured URL

Estimation

Create hash functionality to encryption & decryption 8 hour
Update sms and clevertap link with hash id 24 hour
create middleware to decrypt the lead id and application id 12 hours

Testing 16 hours
PR Review 16 hours




Problem Statement
 - If someone get access of customer resume link then he can see customer PI
 - Attacker can brute force over lead id and may can see the other customer detail as well

Solution

 - Add one more parameter in resume link such as application Form id, So it will very hard for attacker to know the combination of lead id and application id
 - Generate UUID and store against each lead id and share this generated UUID in all links
 - Encrypte the ids in before add in url and decrypt at server level
 - Add OTP auth if it's link open by customer

URls List
 - https://dev-customer.credilio.in/credit-card/resume-journey/1719479719711174 - Resume link
 - https://dev-customer.credilio.in/verify-customer-lead/credit-card/1719479719711174 - (PAN, NAME, MOBILE, PINCODE, SALARY)
 - https://dev-customer.easycardsloans.com/verify-customer-application/credit-card/1719481566934348 - Preview, Show all customer detail
 - https://dev-customer.credilio.in/customer/cc-recommendations/1704201666451809 - If link expired the we ask to GENERATE OTP
 - https://dev-customer.credilio.in/customer/cc-details/1704201666451809 - Only shows card detail
 - https://dev-customer.easycardsloans.com/skip-bureau/credit-card/verify/1719481335663614 - (PAN, NAME, MOBILE, PINCODE, SALARY)
 - https://dev-customer.easycardsloans.com/confirm-your-details/credit-card/1719481335663614 - Experian OTP, generated by Advisor (PAN, NAME, MOBILE, PINCODE, SALARY)
 - https://dev-customer.easycardsloans.com/confirm-masked-mobil/credit-card/1719481335663614 - Masked Experian OTP, generated by Advisor
 - https://dev-customer.easycardsloans.com/personal-loan/recommendations/{lead_id}
 - https://dev-customer.easycardsloans.com/personal-loan/acceptance/${application_id}

 - There more PL, VL link which we sent in sms

Clever Tap Links

 - https://dev-customer.easycardsloans.com/credit-card/application-initiated/lender/1719481566934348/?isAdvisor=true
 - https://dev-customer.easycardsloans.com/hdfc/verify-application/1719505122844548
 - https://dev-customer.easycardsloans.com/credit-card/resume-journey/1719505122919517/
 - https://dev-customer.easycardsloans.com/credit-card/lender-recommendation/1719505122844548/?


 Funtions 

 utils.getCustomerResumeUrl
 this.getUniqueUtmLink


QUERIES
 - On recommendation page once link expired then we ask to generate otp, So Why can't we give same thing in resume link
 - 


2024-06-26

Airtel

1. Address - https://dev-customer.easycardsloans.com/credit-card/address/present/new/1719386836789271
2. comma - https://github.com/credilio/credilio-api/pull/8053
3. DOB - https://dev-customer.easycardsloans.com/credit-card/hdfc/verify-application/1719387368998262


2. Deploy Lead Report changes - Arbaz
3. 


Vodafone

AIP_APPROVED,
AIP_REJECTED,
CARD_ISSUED,
CREDIT_REVIEW,
CUSTOMER_CONFIRMED_OFFER_ON_APP,
CUSTOMER_INITIATED_ONLINE_APPLICATION,
CUSTOMER_INITIATE_JOURNEY_ON_APP,
EXPIRED,
IN_PROGRESS_CREDILIO_OPS,
JOUNEY_NOT_STARTED,
JOURNEY_STARTED,
KYC_STAGE,
LEAD_EXPIRED,
REJECTED_BY_BANK,
SUBMITTED_BY_CUSTOMER,
SUBMITTED_TO_BANK,
TECHNICAL_ERROR





2024-06-24

1. Inaccurate Mapping of AIP Reject Status for Axis Bank - Need to discuss with Kartik
2. Due Factory Callback Retrigger
3. Rebase front-end changes on dev server
4. 


2024-06-19

1. Due Factory Callback URLs
2. Map airtel team emails in callback error report
3. Ask for SMS api key, endpoint and configure urls
4. 

Broadcast Callback

BroadCast Link - 
1. https://dev-customer.credilio.in/credit-card/utm-broadcast/sbm-credilio/
2. https://d7-customer.credilio.in/credit-card/utm-broadcast/HSBC/?utm_advisor_code=CRD0001443


https://dev-customer.easycardsloans.com/credit-card/utm-broadcast/sbm-credilio/?utm_advisor_code=CRD0001486&utm_customer_id=124&utm_org_code=ORG01044
Broadcast APIs

1. Store API - https://dev-api.credilio.in/customer/cc/utm-link/card/store

                https://dev-api.credilio.in/advisor/cc/utm-link/card/store
2. Consent - https://dev-api.credilio.in/customer/cc/utm-link/consent/1718803727799183

utmAgentId?: string;
utmSource?: string;
utmCampaign?: string;
utmOrgCode?: string;
utmCustomerId?: string;
utmAdvisorId

utm_agent_id
utm_source
utm_campaign
utm_org_code
utm_customer_id
utm_advisor_id

UTM Param

utm_source  - Lead, Customer, Admin Report          
utm_campaign - Lead, Customer, Admin Report        
utm_customer_id - Store and return in report     
utm_advisor_code -
utm_org_code - We just store


utm_organization_code - Used at our end

utm_agent_id         
utm_card             
utm_partner_name     
utm_apply_for    
