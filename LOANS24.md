
Loans24

1. Multiple discrepancies, including incomplete data and mismatches between the data and status, example:
    1. 1723117992129630: Application Incomplete in MIS but blank in API Callback
    2. 1723107921070296: Cards Offered in MIS but blank in API Callback

    > Callbacks are triggered for above cases


We have to move below leads to Lead Initiated state again to they can proceed further

#1724807619650903
#1724807469084825
#1724769010343681
#1724738679383745
#1724717513579929
#1724554754324817
#1724421661571316
#1724234400964740
#1724234194202144
#1724138624141587
#1724076898294956
#1724070471765731
#1724051984251382
#1724005699859896
#1723836737458751
#1723834661817902
#1723825469440682
#1723810524842232
#1723710035768936
#1723625151663679
#1723614076728699
#1723558962619217


select concat('#', id) as lead_id, partner_id, created_at, status, mobile where status = 'LEAD_VERIFIED' and application_form_id is null order by created_at desc;

2. The filters on the Credilio UI are yet to be updated while the original ETA was in the first week of August
>   

3. While clicking on the link received from Credilio, unable to land at home page, it just keeps on loading (shared my BoB and one more video for reference)

>  Issue in lint sent on nudges

4. "1720425044676166 (HSBC) - Status is showing rejected and then Card Issued, nothing in between, why is it so ?
> One status 


1725111632892177 (IDFC) - Application not started and then card issued, also multiple cards on same lead_id
> 

1725095056319844 (SBM Credilio) - Application not started --> Credit Review --> Card Issued"


