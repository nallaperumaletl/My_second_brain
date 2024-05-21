Split a line in notepad++ (single line to multiple line comma as a delimiter )  
  
FIND WHAT   ,\s*  
replace with  ,\r\n  

---------------------------  
  
To add a comma in every line  
  
FIND WHAT  $  
replace with  \,  
  
---------------------------  

to add a double quotation at start and end with (comma)  
  
FIND WHAT (.+)  
replace wit "\1",  
  
eg:  
BillingInvoiceGlobalId  
BillingInvoiceNo  
BillingInvoiceDate  
BillingInvoiceInternalNo  
  
actual o/p :  
"BillingInvoiceGlobalId",  
"BillingInvoiceNo",  
"BillingInvoiceDate",  
"BillingInvoiceInternalNo",  
"BillingInvoiceBillVersion",