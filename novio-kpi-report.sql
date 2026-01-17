-- Create Lead Summary --
\copy (WITH DATES AS (SELECT 
        DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
        DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
        DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
        DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
        DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
        DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
        DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
        DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end)
      SELECT 
        COUNT(lead.id) FILTER (WHERE lead.created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
        COUNT(lead.id) FILTER (WHERE lead.created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
        COUNT(lead.id) FILTER (WHERE lead.created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
        COUNT(lead.id) FILTER (WHERE lead.created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount",
        lead.lender_id as "lenderId"
      FROM 
        tbl_customer_leads as lead 
      WHERE lead.source = 'NOVIO' and lead.status not in('LEAD_CLOSED', 'NOT_INITIATED') 
        AND lead.created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES) GROUP BY lead.lender_id) to '/home/ubuntu/csv-dump/kpi_report_credilio_create_lead.csv' DELIMITER ',' CSV header;

--  Card Issue --

\copy (WITH DATES AS (SELECT 
        DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
        DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
        DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
        DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
        DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
        DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
        DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
        DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end)
      SELECT 
        COUNT(lead.id) FILTER (WHERE application.card_issued_date BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
        COUNT(lead.id) FILTER (WHERE application.card_issued_date BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
        COUNT(lead.id) FILTER (WHERE application.card_issued_date BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
        COUNT(lead.id) FILTER (WHERE application.card_issued_date BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount",
        lead.lender_id as "lenderId"
      FROM 
        tbl_customer_leads as lead JOIN tbl_application_forms as application ON lead.application_form_id = application.id
      WHERE lead.source = 'NOVIO' and lead.status not in('LEAD_CLOSED', 'NOT_INITIATED') 
        AND application.card_issued_date BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES) GROUP BY lead.lender_id) to '/home/ubuntu/csv-dump/kpi_report_credilio_issued_lead.csv' DELIMITER ',' CSV header;


-- Visited Customer --

\copy (WITH DATES AS (SELECT 
      DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
      DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
      DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
      DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
      DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
      DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end)
    SELECT 
      COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
      COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
      COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
      COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount"
    FROM 
      tbl_customer_timelines 
    WHERE 
      status = 'VALUE_PACKS_FETCHED' 
      AND created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) to '/home/ubuntu/csv-dump/kpi_report_novio_visited_customer.csv' DELIMITER ',' CSV header;


-- Brand Pack complimentry Summary --

\copy (WITH DATES AS (SELECT 
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
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount"
      FROM 
        tbl_customer_value_packs 
      WHERE 
        meta->>'isComplementary' = 'true' AND 
        created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES) GROUP BY transaction_status) to '/home/ubuntu/csv-dump/kpi_report_novio_complimentry.csv' DELIMITER ',' CSV header;


-- Brand Pack Summary --

\copy (WITH DATES AS (SELECT 
      DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
      DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
      DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
      DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
      DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
      DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end)
      SELECT 
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthUniqueCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthUniqueCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateUniqueCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourUniqueCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount",
        SUM(amount) FILTER (WHERE transaction_status = 'SUCCESS' AND created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthTotal",
        SUM(amount) FILTER (WHERE transaction_status = 'SUCCESS' AND created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthTotal",
        SUM(amount) FILTER (WHERE transaction_status = 'SUCCESS' AND created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateTotal",
        SUM(amount) FILTER (WHERE transaction_status = 'SUCCESS' AND created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourTotal",
        transaction_status as "transactionStatus"
      FROM 
        tbl_airpay_transactions 
      WHERE 
        created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES) GROUP BY transaction_status) to '/home/ubuntu/csv-dump/kpi_report_novio_brand_pack_summary.csv' DELIMITER ',' CSV header;


--------------------------------

Total User Attempt to Purchase

\copy (WITH DATES AS (SELECT 
      DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
      DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
      DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
      DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
      DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
      DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end)
      SELECT 
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthUniqueCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthUniqueCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateUniqueCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourUniqueCount",
      FROM 
        tbl_airpay_transactions 
      WHERE 
        created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) to '/home/ubuntu/csv-dump/kpi_report_novio_brand_pack_attempt_to_purchase_user.csv' DELIMITER ',' CSV header;

--------------------------------

-- Brand Pack Count ---

\copy (WITH DATES AS (SELECT 
      DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
      DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
      DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
      DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
      DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
      DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end),
      META AS (
        SELECT DISTINCT ON (value_pack_id) value_pack_id, 
        meta
        FROM tbl_airpay_transactions
      )
      SELECT 
        COUNT( customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
        COUNT( customer_id) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
        COUNT( customer_id) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
        COUNT( customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount",t1.value_pack_id as "valuePackId", m.meta
      FROM 
        tbl_airpay_transactions t1 JOIN 
        META m ON t1.value_pack_id = m.value_pack_id
      WHERE 
        transaction_status = 'SUCCESS' and
        created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES) 
      GROUP BY t1.value_pack_id, m.meta) to '/home/ubuntu/csv-dump/kpi_report_novio_brand_pack_indiviul_count.csv' DELIMITER ',' CSV header;


--- Distinct total Customer

\copy (WITH DATES AS (SELECT 
      DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
      DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
      DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
      DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
      DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
      DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end),
      META AS (
        SELECT DISTINCT ON (value_pack_id) value_pack_id, 
        meta
        FROM tbl_airpay_transactions
      )
      SELECT 
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
        COUNT(DISTINCT customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount"
      FROM 
        tbl_airpay_transactions t1 JOIN 
        META m ON t1.value_pack_id = m.value_pack_id
      WHERE 
        transaction_status = 'SUCCESS' and
        created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) to '/home/ubuntu/csv-dump/kpi_report_novio_distinct_brand_pack_count.csv' DELIMITER ',' CSV header;


---- Total Purchase ---

\copy (WITH DATES AS (SELECT 
      DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
      DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
      DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
      DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
      DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
      DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end),
      META AS (
        SELECT DISTINCT ON (value_pack_id) value_pack_id, 
        meta
        FROM tbl_airpay_transactions
      )
      SELECT 
        SUM(((m.meta->>'valuePack')::jsonb->'buyForAmount')::int) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
        SUM(((m.meta->>'valuePack')::jsonb->'buyForAmount')::int) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
        SUM(((m.meta->>'valuePack')::jsonb->'buyForAmount')::int) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
        SUM(((m.meta->>'valuePack')::jsonb->'buyForAmount')::int) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount"
      FROM 
        tbl_airpay_transactions t1 JOIN 
        META m ON t1.value_pack_id = m.value_pack_id
      WHERE 
        transaction_status = 'SUCCESS' and
        created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) to '/home/ubuntu/csv-dump/kpi_report_novio_brand_pack_total_purchase.csv' DELIMITER ',' CSV header;


-- complimentry count

\copy (WITH DATES AS (SELECT 
      DATE_TRUNC('MONTH', NOW() - '1 MONTH'::INTERVAL) - '5:30 HOURS'::INTERVAL AS last_month_start,
      DATE_TRUNC('MONTH', NOW()) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_month_end,
      DATE_TRUNC('MONTH', NOW()) - '5:30 HOURS'::INTERVAL AS current_month_start,
      DATE_TRUNC('MONTH', NOW() + '1 MONTH'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS current_month_end,
      DATE_TRUNC('DAY', NOW()) - '5:30 HOURS'::INTERVAL AS today_start,
      DATE_TRUNC('DAY', NOW() + '1 DAY'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS today_end,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '6:30 HOURS'::INTERVAL AS last_hour_start,
      DATE_TRUNC('HOUR', NOW() + '5:30 HOURS'::INTERVAL) - '1 SEC'::INTERVAL - '5:30 HOURS'::INTERVAL AS last_hour_end),
      META AS (
        SELECT DISTINCT ON (value_pack_id) value_pack_id, 
        value_pack as meta
        FROM tbl_customer_value_packs
      )
      SELECT 
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT last_month_end FROM DATES)) AS "lastMonthCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT current_month_start FROM DATES) AND (SELECT current_month_end FROM DATES)) AS "currentMonthCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT today_start FROM DATES) AND (SELECT today_end FROM DATES)) AS "currentDateCount",
        COUNT(customer_id) FILTER (WHERE created_at BETWEEN (SELECT last_hour_start FROM DATES) AND (SELECT last_hour_end FROM DATES)) AS "lastHourCount",
        cvp.value_pack_id,
        m.meta
      FROM 
        tbl_customer_value_packs cvp JOIN 
        META m ON cvp.value_pack_id = m.value_pack_id
      WHERE 
        transaction_status = 'SUCCESS' AND cvp.meta->>'isComplementary' = 'true' AND
        created_at BETWEEN (SELECT last_month_start FROM DATES) AND (SELECT current_month_end FROM DATES) 
      GROUP BY cvp.value_pack_id, m.meta) to '/home/ubuntu/csv-dump/kpi_report_novio_brand_pack_complimentry.csv' DELIMITER ',' CSV header;



