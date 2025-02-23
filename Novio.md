Dev Admin Login >  8779664643
Prod Admin Login > 8237292772

Dev Customer login > 8655675483






select "tbl_customers"."code" as "customerCode", "tbl_customers"."created_at" as "customerCreatedAt", "tbl_customers"."utm_org_code" as "utmOrgCode", "at"."value_pack_id" as "valuePackId", "at"."created_at" as "transactionCreatedAt", "at"."meta" as "transactionMeta", "at"."transaction_status" as "paymentStatus", "at"."is_refunded" as "isRefunded", "at"."order_id" as "orderId", "awl"."response" as "response", "tbl_customer_reviews"."rating" as "rating", "tbl_customer_reviews"."comment" as "feedback", (select count(atb.*) from tbl_airpay_transactions atb where atb.customer_id = at.customer_id and atb.transaction_status = 'SUCCESS') as "purchaseCount" from "tbl_airpay_transactions" as "at" inner join "tbl_customers" on "tbl_customers"."id" = "at"."customer_id" LEFT JOIN tbl_customer_reviews on tbl_customer_reviews.customer_id = tbl_customers.id and tbl_customer_reviews.entity_id = at.value_pack_id
        and at.transaction_status = 'SUCCESS' LEFT JOIN tbl_airpay_webhook_logs AS awl ON awl.response->>'TRANSACTIONID' = at.order_id where "at"."created_at" between '2024-10-01' and '2023-10-31' order by "at"."created_at" desc, "awl"."created_at" desc


https://api.novio.in/admin/v1/report/customer-value-pack?from=2024-04-01&to=2024-05-31&isComplimentaryValuePack=false

Customer Login

/customer/v1/register/store-hash-mobile
/customer/v1/register/bureau/trigger-otp
/customer/v1/register/bureau/verify-otp
/credilio-api/v1/cc/master
/customer/v1/cc/recommendation
/customer/v1/profile
/credilio-api/v1/cc/applications/fetch
/customer/v1/dashboard/needs-attention
/customer/v1/deals/fetch-latest-deals


Brand Packs

/customer/v1/value-pack/purchased
/customer/v1/value-pack/filters
/customer/v1/value-pack/groups
/customer/v1/banner

Brand pack select

/customer/v1/value-pack/share
/customer/v1/value-pack/groups/myntraamazon

Brand Pack Buy

/customer/v1/value-pack/purchase/8VjDFWWvvh

After Buy Pack
/airpay/vp/callback
/customer/v1/value-pack/groups/myntraamazon
/customer/v1/value-pack/transaction-status/xRFHfttIyqlUOZcj


Card List 

/credilio-api/v1/cc/application/list
/customer/v1/cc/application


https://d11-api.novio.co.in/admin/v1/report/value-pack?from=2024-09-25&to=2024-09-25



