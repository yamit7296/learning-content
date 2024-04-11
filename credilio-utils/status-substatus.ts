// const current_values = ['Application Incomplete','Application Rejected','Application Rejected','Application Rejected','Application Rejected','Approved In Principle','Application Incomplete','Application Incomplete','AIP Rejected','Application Incomplete','Application Incomplete','Approved In Principle','KYC Stage','Approved In Principle','Application Not Started'];
// const sub_statuses = ['Customer Not Interested','Curable Decline','Verification Failed','Not Eligible - Details Mismatch','Not Doable','Complete Aadhaar Verfication','Dropped @DIP Screen','Dropped @Consent Screen','Bank Policy Decline','Dropped @Emplyoment Details','Dropped@Aadhaar Verfication Page','Document Pending','Complete Aadhaar Verfication','Accept the T&Cs','App link Sent'];

// let result: {
//   current_value: string;
//   sub_status: string;
//   lenders: string
// }[] = [];
// for(let i = 0; i < current_values.length; i++) {
//   let data = {
//     current_value: current_values[i],
//     sub_status: sub_statuses[i],
//   }
//   const {
//     rows: [{ exists }],
//   } = await Database.rawQuery(`SELECT EXISTS (SELECT '${current_values[i]}' as current_value, '${sub_statuses[i]}' as sub_status, string_agg(DISTINCT lender_id, ',') as lenders from tbl_status_sub_statuses where current_value = '${current_values[i]}' and sub_status->'status' @> '["${sub_statuses[i]}"]' and product_id = 'CREDIT_CARD' group by current_value)`);
//   if(exists) {
//     const {
//       rows: [{ lenders }],
//     } = await Database.rawQuery(`SELECT '${current_values[i]}' as current_value, '${sub_statuses[i]}' as sub_status, string_agg(DISTINCT lender_id, ',') as lenders from tbl_status_sub_statuses where current_value = '${current_values[i]}' and sub_status->'status' @> '["${sub_statuses[i]}"]' and product_id = 'CREDIT_CARD' group by current_value`) ?? '';
//     result.push({
//       ...data,
//       lenders
//     })
//   }
// }
// console.log(result);
// const file = `status_sub_status_${Date.now()}.csv`;
// const fields = ['current_value', 'sub_status', 'lenders'];
// const json2csv = new Parser({ fields });
// const csvData = json2csv.parse(result);

// const zipfile = await Zip.file({
//   inFile: file,
//   buffer: Buffer.from(csvData),
// });

// return zipfile;
