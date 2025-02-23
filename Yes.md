
End Point: customer/v1/clevertap/button-click
Payload {
  title: 
  screen: [PERSONAL_LOAN_SCREEN, FIXED_DEPOSIT_SCREEN]
}










Change 

1. userVerificationToken > x-user-verification-token
2. 






Mobile: 6029347689
ARN: 2501151741046
ProductCode: 'NP'

Service > 20 Mins
Consent > 5 Mins




Credilio private
ybl-credilio-public.cer

API Blocker
1. ARN :2501151741046


SDK Blocker
2. Service Name for SendOutWardActivity - Not aware about the source
3. cardImage - which path & why it's required


API Dependency on other API

1. CC Regisration API

Dependency on CC Regisration API
1. Fetch Short CC Information
2. Fetch Credit Card Account Details
3. Fetch Credit Card Transactions Details


Dependency on Fetch Short CC Information
1. Activate Credit Card
2. Fetch Card Control
3. Set Credit Card Controls
4. Fetch Credit Card Details
5. Fetch Set PIN Reference number
6. Generate Credit Card PIN

Product team dependency

1. Category Code Master for Icon in statement



SDK Key

PartnerReferenceNumber - Backend

TransactionDetails {
  {"decRefNumber":"DEC0000A0000000000009580","yppMetadata":"Co+of/n1FDBIoVSQ
qHtHX56nd7wer0KIHjfylVMFcbV+M8eBhNjo4SU9VQnuwszSh4c756aD","cclast4Digits":"
4862"}
}

Fetch Card Control


showProgressDialog - Should it be configuration
textColor -
cardImage - 






Requirement is pending












#### Yes Bank PR

1. add-yes-bank-library
2. 







#### Dependency from Yes Bank

1. Public Key For UAT
2. Partner Key
3. Testing ARN - CC Consent Registration API
4. Testing Product Code - CC Consent Registration API

### Dependency from Credilio

1. Share IP for whitelisting

#### Queries

1. Fetch Masked CC Number > TPT_BANKING_SERVICES_CC ? 

### Steps

1. Generate Public and Private Keys

openssl genrsa -out yes-bank-credilio-private.pem 2048
openssl rsa -in yes-bank-credilio-private.pem -pubout -out yes-bank-credilio-public.cer
openssl pkcs8 -topk8 -inform PEM -outform PEM -nocrypt -in yes-bank-credilio-private.pem -out pkcs8-yes-bank-credilio-private.key

2. Write Encryption and Decryption method 

3. Need to keep logs of all APIs calls

#### APIs

1. Register CC Customer Consent

# 1FA APIs

2. Fetch Masked CC Number
3. Fetch Short CC Information
4. Activate Credit Card
5. Fetch Credit Card Account Details
6. Fetch Credit Card Transactions Details
7. Fetch Card Control

# 2FA APIs

8. Fetch Credit Card Details
9. Set Credit Card Controls

# Generate Credit Card PIN

10. Fetch Set PIN Reference number
11. Generate Credit Card PIN



##### SDK Methods

1. Get Customer Consent
2. Decipher Info Lite


============

1. create a master basis which different icons will be shown to the customer for different transaction. 
What will be structure Master Record

2. Please add default category code records in PRD
3. Where are we going to store Yes Bank Dynamic Banner 

How Offer Banner will display and how it's work


1. DUMMY ARN & Product Code
2. Should I have to pass auth_tag (hash) in header
3. IV - What's the meaning of un-encoded (Plain text)
4. Can't you setup any testing USER_VERIFICATION_TOKEN for CC_Registation_ID and Other 1FA



Request Body

{
  body: "H3Rjh1wjpyGLEqBTBaVlm6fmcY0oMFlEUQ1F5RV+BhTJfMTMERiwER9pG0NyIp74Tt/tGPdNGzRS1ZbyAYGtZZt4G0pnCXgkMQkou9WT6eIgYKafoZUnlAmmDm0lTupXflCEPc3Ck1ct2gNv0QmSj9QRSGgQIK2iXo2r0cX9Uh4vR3Y0jXQV4vbwbdbwHs0zPKffQY1is5CrJM3mjuUYCe0zWtGniifQwSkqzOg0J5ufsb49S5JEu27myrDJtf53AMXfyLpfnspVNiqg7p0fjVgEvJ1G7rYMlweBazPWoOqOVFZfCC+VSIT0AeB/jrNTnZMfOcwkgCApr7gb65iA/9KJQeRHx661QHJm0b/Bk8Sr",
}

Request Header

{
  "Content-Type": "application/json",
  token: "IT+QOdckCfURcXSm/CZ1yC0stm1eqG31JCG6vQAcLDOWk+To77JWQd8uIAjIgWjMK/9crNLIA3AsTEas1ExRsrxgfdI1bp8l01vx2gxInx7xonw7m6AdyJn+EglWgoiT0YsSYGUocIxT1NsA5lFRe3gdBlxKXtHKn7q+3nOXBEmKXcBN47VjMtNfHjyleER+qL++8t5kVNZk2Q8560Mxss88h6LAcpJecu1J9M0L8gjMLxG9AAA4YRm1GgPiItwoajZqAzkYX9HkWPPSBuZqNDwk3Pq5YAZyy7uRQlEyp2rkVtZC/sTzc5GycP+Z5l84gAaB4HMcluLyjo7s86snGg==",
  key: "l8+S8xKLECQhdVykVU8BlFtFtNQXTM//8VBVvuOZfLbt5fQrzd5bNeC3aC7pMl8a6iObONFXxbmJYg/5xJpKB8Jn2IvgSBbMenFOfXIaQp89NVLWb/cMueEIDP/v8Gq4vp9VZC1B4tNlDrbtkpTwYW90TDriXNQD5beEnKItHsfPNumzgLl84rxvHdoLZsJBsSqFXh7UFLvBYoCbp84pdqQldka14xKbBGiKe+XqU0yNcdEtuc2URAroybEkxrmAx4NYl9KTxWJs07WEihkrKL8GEBV5D0WDRbe2Qy10dpNAhFASUtsPG8Lzki8AXdvdPy9rujXMJ6wExDsq0xuw9g==",
  partner: "n/4RPsIyTWzyHtHQ/RfoSEVxTxY0A4zdPUNIOI6XV2Mb7rKFRQsXLl02aavimHkjQMtlQQ2DSsgMwNrXMe0CjO9RJBNmQgGNaYf7vfRUxhmCHG6DSQUp/jAYLRzJymWnsuG4C57W3MY7vfFp+BJrxav5HLjsZPqIdXD7ir0WgiXFthb4aW5ASWqEadASLa90AB5nEM776atywq4ajmdRfc9vIRkghh9a7s1nli5863Dmgc/QtmvaiuSJAvSTktPbChbJwOODMN6SU+umzMN+V15Grsqem/3TBn82fcCPNWzfnkOcWkxCnantdaowCrxEMkLtSD+PdI7uN+Jn5Ucg3Q==",
  iv: "qv8HXUI8ku3GRsjw1wPG/w==",
  hash: "D5rXk6DfioGRzIDsn+rIEg==",
}

Getting 500 Internal Server Error

encrypt-decrypt-yes-bank-logic

import Route from '@ioc:Adonis/Core/Route';
import CreditCardConsentRegistration from 'App/Libraries/Lenders/YBL/CreditCard/CreditCardConsentRegistration';

Route.get('/', async () => {
  const request = {
    partnerReferenceNumber: '121233434341',
    actionName: 'REGISTER_CC_CUSTOMER_CONSENT',
    partnerKey: 'OWZKdlB2U1',
    mobileNumber: '9930854855',
    userVerificationMode: 'DEVICE_TOKEN',
    userVerificationToken: 'Jl6hWeG2IPWRAMgHkZfsJrECq6LCCl9L',
    consentType: 'TPT_APP_ACCESS',
    consentPurpose: 'BANKING_SERVICES',
    onboardingChannel: 'APS',
    applicationReferenceNumber: 2501151741046,
    productCode: 'NP',
  };

  const creditCardConsentRegistration = new CreditCardConsentRegistration()
  await creditCardConsentRegistration.call(request);
});




