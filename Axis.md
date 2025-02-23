APIs

0. INITIATE_CHALLENGE (Eligibility) - On Recommendation Page
1. QDE_SUBMIT (APPLICATION_SUBMISSION_API) - On Application submission
2. QDE_STATUS (GET_APPLICATION_STATUS_API) - Call after application submission on some intervals
3. KYC_STATUS (GET_KYC_STATUS_API) - If we get KYC Pending in QDE_STATUS then we call this API to know whether the KYC + INCOME OR KYC
4. INITIATE_KYC (INITIATE_KYC_API) - To initiated KYC we need AuthCode to redirect to Axis page hence we call this API



Files
 - app/Services/Lenders/CreditCard/AxisService/AxisQueue.ts
 - app/Services/Lenders/CreditCard/AxisService/index.ts

1. getKycLink
    
    Front end points
    - https://customer.credilio.in/credit-card/callback/axis/processing/1724474259877762

    Backend points
    - https://api.credilio.in/public/cc/application/axis/kyc-initiate-auth-code/{applicationId}

    Axis Redirection Endpoints
    - https://maximus.axisbank.co.in/gpns/external/partner/login?authCode=${authCode}

    Axis to Credilio Redirection Endpoints
    - https://customer.credilio.in/credit-card/callback/axis/${applicationForm.id}

2. Complete KYC Reminder 
app/Queues/AxisKycStatusReminderQueue.ts


AXIS V3 Status Sub Status

- commands/AxisKycReminder.ts // Include updated status & subStatus
- commands/AxisUpdateApplicationStatus.ts // Include updated status & subStatus
- app/Services/Lenders/CreditCard/AxisService/AxisQueue.ts // Include updated status & subStatus







Links 

 - https://web.axisbank.co.in/DigitalChannel/WebForm/WebFormInterim.html
