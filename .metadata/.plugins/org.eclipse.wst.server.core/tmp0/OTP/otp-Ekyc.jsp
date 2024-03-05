<!DOCTYPE html>
<html lang="en-US" dir="ltr">
   <!-- Mirrored from prium.github.io/phoenix/v1.13.0/pages/authentication/card/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 04 Aug 2023 07:16:18 GMT -->
   <!-- Added by HTTrack -->
   <meta http-equiv="content-type" content="text/html;charset=utf-8" />
   <!-- /Added by HTTrack -->
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      
      <!-- ===============================================-->
      <!--    Document Title-->
      <!-- ===============================================-->
      <title>ECS</title>
      <!-- ===============================================-->
      <!--    Favicons-->
      <!-- ===============================================-->
  
      <meta name="theme-color" content="#ffffff">
      <script src="vendors/imagesloaded/imagesloaded.pkgd.min.js"></script>
      <script src="vendors/simplebar/simplebar.min.js"></script>
   <!-- <script src="assets/js/config.js"></script> -->
      <!-- ===============================================-->
      <!-- Stylesheets-->
      <!-- ===============================================-->
      <link rel="preconnect" href="https://fonts.googleapis.com/">
      <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">
      <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&amp;display=swap" rel="stylesheet">
      <link href="vendors/simplebar/simplebar.min.css" rel="stylesheet">
 <!-- <link rel="stylesheet" href="unicons.iconscout.com/release/v4.0.8/css/line.css"> -->
      <link href="assets/css/theme-rtl.min.css" type="text/css" rel="stylesheet" id="style-rtl">
      <link href="assets/css/theme.min.css" type="text/css" rel="stylesheet" id="style-default">
      <link href="assets/css/user-rtl.min.css" type="text/css" rel="stylesheet" id="user-style-rtl">
      <link href="assets/css/user.min.css" type="text/css" rel="stylesheet" id="user-style-default">
      <link href="assets/css/use.fontawesome_all.css" rel="stylesheet" type="text/css"/>
      <link href="assets/js/jquery.loadingModal.min.css" rel="stylesheet" type="text/css"/>
      <link href="assets/ecs/sweetalert.min.css" rel="stylesheet">
     
      <style>
         .auth-card .auth-form-box {
         max-width: fit-content !important;
         }
         .auth-form-box1{
         max-width: 18.75rem !important;
         }
         .verification-form {
         max-width: 17.6875rem;
         margin: 15px auto;
         }
         .justify-center{
    	  justify-content:center
}
.flex{
    display:flex
}
.inline-flex{
    display:inline-flex
}
.flex-col{
    flex-direction:column
}
.flex-col-reverse{
    flex-direction:column-reverse
}
    .md\:mt-4{
        margin-top:1rem
    }
	    .md\:w-10{
        width:2.5rem
    }
	.w-10{
    width:2.5rem
}
.m-2{
    margin:.5rem
}


.otp-input-fields{
  margin: auto;
  background-color: white;
    width: auto !important;
  display: flex;
  justify-content: center;
  gap: 10px;

  
  input{

    background-color: transparent;
    border-radius: 4px;
    border: 1px solid #0c0c0c;
    text-align: center;
    outline: none;
    font-size: 16px;


    &:focus{
    /*   border-width: 2px;
      border-color: darken(#2f8f1f, 5%); */
      font-size: 16px;
    }
  }
}@media only screen and (width:768px){

 .col-md-4{
    width: 58.33333333% !important;
    }
}
    
.otp__digit{
       width: 40px;
       height: 50px;
      text-align: center;
      padding: 0.5rem 0.5rem;
   }
   
       
.otp__digit_or{
       width: 25px;
       height: 25px;
      
   }
   
   
   .otp__digit:focus {
    /* transform: scale(1.3); */
    /* transition: 0.1s;
    box-shadow: 0px 0px 0px 2px #3874ff;
    text-shadow: 0 0 0 #040404bb;
    border-color: #dcdcdcfc;
    border-width: 1px;
    border-radius: 5px;
    border-style: solid;
    outline-color: #040404bb; */
}
   
input[type="number"] {
  -moz-appearance: textfield !important;
}
.spinner-border {
    display: block;
    position: fixed;
    top: calc(50% - (58px / 2));  
    right: calc(50% - (58px / 2));
    color: red;
}
  .swal-button--danger:not([disabled]):hover
  {
    background-color: #efefef;
    color: black;
  }
 .swal-button {
  background-color: #efefef;
  color: black;
  }
#overlay {
      position: fixed;
    top: 0;
    width: -webkit-fill-available;
    height: -webkit-fill-available;
    z-index: 999;
    background-color: #525b75;
}
@media only screen and (max-width: 768px){
  /* For mobile phones: */
  .pngImg {
    height: 12.18rem !important;
    transform: none;
	transform-origin: 50% 50% 0px !important;
  }
  .auth-form-box{
  padding: 15px !important;
  }
  .position-relative-Order{
   display: none  !important;
  
  }#verifyOtpBtn{
   width: auto !important;
  }
  .offcanvas{
      --phoenix-offcanvas-height: 36vh !important;
  }
  .mb-7 {
    margin-bottom: 1rem !important;
}
.mb-3 {
  margin-bottom: 10px !important;
}
.row>*{
 margin-top: 20px !important;
}
}
.scrollable-textbox {
  max-height: 40vh;
  overflow-y: auto;
  padding: 5px;
  padding-top: 5px;
  margin-bottom: 0px;
  text-align: justify;
  content: "";
  display: block;
  border-top: 2px dotted #b4b2b2;
  margin-top: 0px;
  padding-top: 0px;
  border-bottom: 2px dotted #b4b2b2;
}


/** page **/
.cssloader {
  padding-top: calc(45vh - 25px);
}

/** loader **/
.sh1 {
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 50px 50px 0 0;
  border-color: #0f111a transparent transparent transparent;
  margin: 0 auto;
  animation: shk1 1s ease-in-out infinite normal;
}

.sh2 {
  width: 0;
  height: 0;
  border-style: solid;
  border-width: 0 0 50px 50px;
  border-color: transparent  transparent #ffb900 transparent ;
  margin: -50px auto 0;
  animation: shk2 1s ease-in-out infinite alternate;
}

/** animation starts here **/
@keyframes shk1 {
  0% {
    transform: rotate(-360deg);
  }  
  
  100% {
  }
}

@keyframes shk2 {
  0% {
    transform: rotate(360deg);
  }
  100% {
  }
}
.lt {
    color: #ffb900;
    margin: 30px auto;
    text-align: center;
    font-weight: bold;
    letter-spacing: 2px;
    font-size: 15px;
    text-shadow: 1px 1px 1px #141824;
}

.text-700 {
    --phoenix-text-opacity: 1;
    color: rgba(var(--phoenix-700-rgb), var(--phoenix-text-opacity)) !important;
    font-size: 13px;
    padding: 5px;
}

.offcanvas-backdrop.show {
    opacity: .5;
    pointer-events: none;
}


/* Chrome, Safari, Edge, Opera */
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
p{
margin-bottom: 2px;
}
.container {
  display: flex;
  align-items: center;
      padding-left: 0px;
      padding: inherit;
      margin-bottom: 15px;
      margin-left: 5px !important;
}

.form-control:focus {
  color: var(--phoenix-gray-900);
  background-color: var(--phoenix-input-bg);
  border-color: #3874ff;
  outline: 0;
  -webkit-box-shadow: none !important;
  box-shadow: none !important;
  background: #FFFFFF;
  border: 0.5px solid #000;
  border-radius: 4px;
  border: 1px solid #000;
}

.text-container {
  margin-left: 20px; /* Adjust the spacing between image and paragraphs */
}

.fade:not(.show) {
    opacity: 1 !important;
}

@media only screen and (max-width: 600px) {
      .mobileTxnTables { 
        display: block !important;
      }
      .WebTxnTables { 
        display: none; 
      }
       #logoCvl{
    height: 30px !important;
    }
     #logoClinet{
    height: 30px !important;
    }
    #loanAgreementTxt{
   font-size: 12px !important;
    }
    #loanAgreementTxtSpan{
   font-size: 8px !important;
    }
     #agreementimg{
    height: 30px !important;
    }
    #txtAadhaarVid{
    font-size: 10px !important;
    }
   .scrollable-textbox{
    font-size: 10px;
    max-height: 25vh;
    line-height: initial;
    }
    .content{
    padding-left: 0px !important;
    padding-right: 0px !important;
    
    }
     td{
    font-size: 6px !important;
    }
    .hrDivMob{
    display: block !important;
    }
    .hrDivWeb{
    display: none;
    }
    }

@media (min-width: 1025px) {
  .WebTxnTables{ display: block; }
    .mobileTxnTables{ display: none; }
         #loanAgreementTxt{
   font-size: 20px !important;
    }
    #loanAgreementTxtSpan{
   font-size: 10px !important;
    }
}
@media (min-width: 576px) {
  .content{
    padding-left: 0px !important;
    padding-right: 0px !important;
   padding-bottom: 0rem;
    }
   /*  td{
    font-size: 6px !important;
    }
    .hrDivMob{
    display: block;
    }
    .hrDivWeb{
    display: none;
    } */
}
.mb-3 {
  margin-bottom: 10px !important;
}
.field-icon {
  float: right;
  margin-left: -25px;
  margin-top: -30px;
  position: relative;
  z-index: 2;
  margin-right: 10px;
}

.field-icon-two{

width: 25px !important;
  height: 25px !important;
  float: right;
  margin-top: 15px;
}


      </style>
   </head>
   <body>
   
 <%
String	ENGLISH_TXT= "SSBoZXJlYnkgY29uc2VudCB0byBwcm92aWRpbmcgbXkgQWFkaGFhciBudW1iZXIgYW5kIGJpb21ldHJpYyBkYXRhIGZvciBBYWRoYWFyLWJhc2VkIGF1dGhlbnRpY2F0aW9uIGZvciB0aGUgcHVycG9zZSBvZiBlc3RhYmxpc2hpbmcgbXkgaWRlbnRpdHkgYW5kIHByb3ZpZGluZyBkZW1vZ3JhcGhpYyBkZXRhaWxzIGZvciB0aGUgZGVtbyBhcHBsaWNhdGlvbi4gSSBoYXZlIG5vIG9iamVjdGlvbiB0byBhdXRoZW50aWNhdGluZyBteXNlbGYgYW5kIGZ1bGx5IHVuZGVyc3RhbmQgdGhhdCB0aGUgaW5mb3JtYXRpb24gcHJvdmlkZWQgYnkgbWUgc2hhbGwgYmUgdXNlZCBmb3IgYXV0aGVudGljYXRpbmcgbXkgaWRlbnRpdHkgdGhyb3VnaCB0aGUgQWFkaGFhciBBdXRoZW50aWNhdGlvbiBTeXN0ZW0gZm9yIHRoZSBwdXJwb3NlIHN0YXRlZCBhYm92ZSBhbmQgbm8gb3RoZXIgcHVycG9zZS4=";
String  TAMIL_TXT= "4K6O4K6p4K6k4K+BIOCuheCun+CviOCur+CuvuCus+CupOCvjeCupOCviCDgrqjgrr/grrHgr4HgrrXgr4HgrrXgrqTgrrHgr43grpXgr4Hgrq7gr40g4K6f4K+G4K6u4K+LIOCuteCuv+Cuo+CvjeCuo+CuquCvjeCuquCupOCvjeCupOCuv+CuseCvjeCuleCuvuCuqSDgrq7grpXgr43grpXgrrPgr43grqTgr4rgrpXgr4gg4K614K6/4K614K6w4K6Z4K+N4K6V4K6z4K+IIOCuteCutOCumeCvjeCuleCvgeCuteCupOCuseCvjeCuleCvgeCuruCvjSDgrobgrqTgrr7grrDgr40g4K6F4K6f4K6/4K6q4K+N4K6q4K6f4K+I4K6v4K6/4K6y4K6+4K6pIOCuheCumeCvjeCuleCvgOCuleCuvuCusOCupOCvjeCupOCuv+CuseCvjeCuleCuvuCuqSDgro7grqngrqTgr4Eg4K6G4K6k4K6+4K6w4K+NIOCujuCuo+CvjSDgrq7grrHgr43grrHgr4Hgrq7gr40g4K6S4K6w4K+BIOCuruCvgeCuseCviCDgrqrgrr/grqngr40gKE9UUCkg4K6k4K6w4K614K+IIOCuteCutOCumeCvjeCulSDgrqjgrr7grqngr40g4K6H4K6k4K6p4K+N4K6u4K+C4K6y4K6u4K+NIOCukuCuquCvjeCuquCvgeCuleCvjeCuleCviuCus+CvjeCuleCuv+CuseCvh+CuqeCvjS4g4K6O4K6p4K+N4K6p4K+IIOCuheCumeCvjeCuleCvgOCuleCusOCuv+CuquCvjeCuquCupOCuv+CusuCvjSDgro7grqngrpXgr43grpXgr4Eg4K6O4K6o4K+N4K6kIOCuhuCun+CvjeCumuCvh+CuquCuqeCviOCur+CvgeCuruCvjSDgrofgrrLgr43grrLgr4gsIOCuruCvh+CusuCvgeCuruCvjSDgrqjgrr7grqngr40g4K614K604K6Z4K+N4K6V4K6/4K6vIOCupOCuleCuteCusuCvjeCuleCus+CvjSDgrobgrqTgrr7grrDgr40g4K6F4K6Z4K+N4K6V4K+A4K6V4K6+4K6wIOCuheCuruCviOCuquCvjeCuquCuv+CuqeCvjSDgrq7gr4LgrrLgrq7gr40g4K6O4K6p4K6k4K+BIOCuheCun+CviOCur+CuvuCus+CupOCvjeCupOCviCDgroXgrpngr43grpXgr4DgrpXgrrDgrr/grqrgr43grqrgrqTgrrHgr43grpXgrr7grpUg4K6u4K+H4K6y4K+HIOCuleCvgeCuseCuv+CuquCvjeCuquCuv+Cun+CvjeCunyDgrqjgr4vgrpXgr43grpXgrqTgr43grqTgrr/grrHgr43grpXgrr7grpUg4K6q4K6v4K6p4K+N4K6q4K6f4K+B4K6k4K+N4K6k4K6q4K+N4K6q4K6f4K+B4K6u4K+NIOCujuCuqeCvjeCuquCupOCviCDgrq7gr4HgrrTgr4Hgrq7gr4jgrq/grr7grpUg4K6q4K+B4K6w4K6/4K6o4K+N4K6k4K+B4K6V4K+K4K6z4K+N4K6V4K6/4K6x4K+H4K6p4K+NLg==";
String	TELUGU_TXT= "4LCo4LC+IOCwl+CxgeCwsOCxjeCwpOCwv+CwguCwquCxgeCwqOCxgSDgsLjgsY3gsKXgsL7gsKrgsL/gsILgsJrgsKHgsIIg4LCu4LCw4LC/4LCv4LGBIOCwoeCxhuCwruCxiyDgsIXgsKrgsY3gsLLgsL/gsJXgsYfgsLfgsKjgsY0g4LCV4LGL4LC44LCCIOCwnOCwqOCwvuCwreCwviDgsLXgsL/gsLXgsLDgsL7gsLLgsKjgsYEg4LCF4LCC4LCm4LC/4LCC4LCa4LCh4LCCIOCwleCxi+CwuOCwgiDgsIbgsKfgsL7gsLDgsY0g4LCG4LCn4LC+4LCw4LC/4LCkIOCwquCxjeCwsOCwruCwvuCwo+CxgOCwleCwsOCwoyDgsJXgsYvgsLjgsIIg4LCo4LC+IOCwhuCwp+CwvuCwsOCxjSDgsKjgsILgsKzgsLDgsY0g4LCu4LCw4LC/4LCv4LGBIOCwteCwqOCxjSDgsJ/gsYjgsK7gsY0g4LCq4LC/4LCo4LGNIChPVFApIOCwoeCxh+Cwn+CwvuCwqOCxgSDgsIXgsILgsKbgsL/gsILgsJrgsKHgsL7gsKjgsL/gsJXgsL8g4LCo4LGH4LCo4LGBIOCwh+CwguCwpuCxgeCwruCxguCwsuCwguCwl+CwviDgsLjgsK7gsY3gsK7gsKTgsL/gsLjgsY3gsKTgsYHgsKjgsY3gsKjgsL7gsKjgsYEuIOCwqOCwqOCxjeCwqOCxgSDgsKrgsY3gsLDgsK7gsL7gsKPgsYDgsJXgsLDgsL/gsILgsJrgsKHgsILgsLLgsYsg4LCo4LC+4LCV4LGBIOCwjuCwn+CxgeCwteCwguCwn+CwvyDgsIXgsK3gsY3gsK/gsILgsKTgsLDgsIIg4LCy4LGH4LCm4LGBIOCwruCwsOCwv+Cwr+CxgSDgsKjgsYfgsKjgsYEg4LCF4LCC4LCm4LC/4LCC4LCa4LC/4LCoIOCwuOCwruCwvuCwmuCwvuCwsOCwgiDgsKrgsYjgsKgg4LCq4LGH4LCw4LGN4LCV4LGK4LCo4LGN4LCoIOCwquCxjeCwsOCwr+Cxi+CwnOCwqOCwgiDgsJXgsYvgsLjgsIIg4LCG4LCn4LC+4LCw4LGNIOCwquCxjeCwsOCwvuCwruCwvuCwo+CxgOCwleCwsOCwoyDgsLXgsY3gsK/gsLXgsLjgsY3gsKUg4LCm4LGN4LC14LC+4LCw4LC+IOCwqOCwviDgsJfgsYHgsLDgsY3gsKTgsL/gsILgsKrgsYHgsKjgsYEg4LCq4LGN4LCw4LC+4LCu4LC+4LCj4LGA4LCV4LCw4LC/4LCC4LCa4LCh4LC+4LCo4LC/4LCV4LC/IOCwieCwquCwr+Cxi+Cwl+Cwv+CwguCwmuCwrOCwoeCxgeCwpOCxgeCwguCwpuCwqOCwvyDgsK7gsLDgsL/gsK/gsYEg4LCH4LCk4LCwIOCwquCxjeCwsOCwr+Cxi+CwnOCwqOCwvuCwsiDgsJXgsYvgsLjgsIIg4LCJ4LCq4LCv4LGL4LCX4LC/4LCC4LCa4LCs4LCh4LGB4LCk4LGB4LCC4LCm4LCo4LC/IOCwquCxguCwsOCxjeCwpOCwv+Cwl+CwviDgsIXgsLDgsY3gsKXgsIIg4LCa4LGH4LC44LGB4LCV4LGB4LCo4LGN4LCo4LC+4LCo4LGBLg==";
String	MALAYALAM_TXT= "4LSO4LSo4LWN4LSx4LWGIOC0kOC0oeC0qOC1jeC0seC0v+C0seC1jeC0seC0vyDgtLjgtY3gtKXgtL7gtKrgtL/gtJXgtY3gtJXgtYHgtKjgtY3gtKjgtKTgtL/gtKjgtYHgtIIg4LSh4LWG4LSu4LWLIOC0huC0quC1jeC0suC0v+C0leC1jeC0leC1h+C0t+C0qOC1jSDgtKHgtYbgtK7gtYvgtJfgtY3gtLDgtL7gtKvgtL/gtJXgtY0g4LS14LS/4LS24LSm4LS+4LSC4LS24LSZ4LWN4LSZ4LW+IOC0qOC1veC0leC1geC0qOC1jeC0qOC0pOC0v+C0qOC1geC0ruC0vuC0r+C0vyDgtIbgtKfgtL7gtbwg4LSF4LSf4LS/4LS44LWN4LSl4LS+4LSo4LSu4LS+4LSV4LWN4LSV4LS/4LSv4LWB4LSz4LWN4LSzIOC0quC1jeC0sOC0vuC0ruC0vuC0o+C1gOC0leC0sOC0o+C0pOC1jeC0pOC0v+C0qOC0vuC0r+C0vyDgtI7gtKjgtY3gtLHgtYYg4LSG4LSn4LS+4LW8IOC0qOC0ruC1jeC0quC0seC1geC0giDgtLXgtbog4LSf4LWI4LSCIOC0quC0v+C1uyAoT1RQKSDgtKHgtL7gtLHgtY3gtLHgtK/gtYHgtIIg4LSo4LW94LSV4LS+4LW7IOC0nuC0vuC1uyDgtIfgtKTgtL/gtKjgtL7gtb0g4LS44LSu4LWN4LSu4LSk4LS/4LSV4LWN4LSV4LWB4LSo4LWN4LSo4LWBLiDgtI7gtKjgtY3gtKjgtYbgtKTgtY3gtKTgtKjgtY3gtKjgtYYg4LSG4LSn4LS/4LSV4LS+4LSw4LS/4LSV4LSu4LS+4LSV4LWN4LSV4LWB4LSo4LWN4LSo4LSk4LS/4LW9IOC0juC0qOC0v+C0leC1jeC0leC1jSDgtI7gtKTgtL/gtbzgtKrgtY3gtKrgtL/gtLLgtY3gtLIsIOC0leC1guC0n+C0vuC0pOC1hiDgtIbgtKfgtL7gtbwg4LST4LSk4LSo4LWN4LSx4LS/4LSV4LWN4LSV4LWH4LS34LW7IOC0uOC0v+C0uOC1jeC0seC1jeC0seC0giDgtK7gtYHgtJbgtYfgtKgg4LSO4LSo4LWN4LSx4LWGIOC0kOC0oeC0qOC1jeC0seC0v+C0seC1jeC0seC0vyDgtIbgtKfgtL/gtJXgtL7gtLDgtL/gtJXgtK7gtL7gtJXgtY3gtJXgtYHgtKjgtY3gtKjgtKTgtL/gtKjgtY0g4LSe4LS+4LW7IOC0qOC1veC0leC0v+C0ryDgtLXgtL/gtLXgtLDgtJngtY3gtJngtb4g4LSu4LWB4LSV4LSz4LS/4LW9IOC0quC0seC0nuC1jeC0nuC0v+C0sOC0v+C0leC1jeC0leC1geC0qOC1jeC0qCDgtIngtKbgtY3gtKbgtYfgtLbgtY3gtK/gtJngtY3gtJngtb7gtJXgtY3gtJXgtL7gtK/gtL8g4LSJ4LSq4LSv4LWL4LSX4LS/4LSV4LWN4LSV4LWB4LSu4LWG4LSo4LWN4LSo4LWB4LSCIOC0quC1guC1vOC0o+C1jeC0o+C0ruC0vuC0r+C0vyDgtK7gtKjgtLjgtY3gtLjgtL/gtLLgtL7gtJXgtY3gtJXgtYHgtJXgtK/gtYHgtIIg4LSa4LWG4LSv4LWN4LSv4LWB4LSo4LWN4LSo4LWBLg==";
String	KANNADA_TXT= "4LKo4LKo4LON4LKoIOCyl+CzgeCysOCzgeCypOCyqOCzjeCyqOCzgSDgsrjgs43gsqXgsr7gsqrgsr/gsrjgs4HgsrUg4LKu4LKk4LON4LKk4LOBIOCyoeCzhuCyruCziiDgsoXgsqrgs43gsrLgsr/gspXgs4fgsrbgsqjgs43igIzgspfgs4Yg4LKc4LKo4LK44LKC4LKW4LON4LKv4LK+IOCyteCyv+CyteCysOCyl+Cys+CyqOCzjeCyqOCzgSDgspLgsqbgspfgsr/gsrjgs4HgsrUg4LKJ4LKm4LON4LKm4LOH4LK24LKV4LON4LKV4LK+4LKX4LK/IOCyhuCyp+CyvuCysOCzjSDgsobgsqfgsr7gsrDgsr/gsqQg4LKm4LOD4LKi4LOA4LKV4LKw4LKj4LKV4LON4LKV4LK+4LKX4LK/IOCyqOCyqOCzjeCyqCDgsobgsqfgsr7gsrDgs40g4LK44LKC4LKW4LON4LKv4LOGIOCyruCypOCzjeCypOCzgSDgspLgsqjgs40g4LKf4LOI4LKu4LONIOCyquCyv+CyqOCzjSAoT1RQKSDgsqHgs4fgsp/gsr7gsrXgsqjgs43gsqjgs4Eg4LKS4LKm4LKX4LK/4LK44LKy4LOBIOCyqOCyvuCyqOCzgSDgsogg4LKu4LOC4LKy4LKVIOCyuOCyruCzjeCyruCypOCyv+CyuOCzgeCypOCzjeCypOCzh+CyqOCzhi4g4LKo4LKo4LON4LKo4LKo4LON4LKo4LOBIOCypuCzg+CyouCzgOCyleCysOCyv+CyuOCysuCzgSDgsqjgsqjgspfgs4Yg4LKv4LK+4LK14LOB4LKm4LOHIOCyheCyreCzjeCyr+CyguCypOCysOCyteCyv+CysuCzjeCysiDgsq7gsqTgs43gsqTgs4Eg4LKo4LK+4LKo4LOBIOCykuCypuCyl+Cyv+CyuOCyv+CypiDgsq7gsr7gsrngsr/gsqTgsr/gsq/gsqjgs43gsqjgs4Eg4LKG4LKn4LK+4LKw4LONIOCypuCzg+CyouCzgOCyleCysOCyoyDgsrXgs43gsq/gsrXgsrjgs43gsqXgs4bgsq8g4LKu4LOC4LKy4LKVIOCyqOCyqOCzjeCyqCDgspfgs4HgsrDgs4HgsqTgsqjgs43gsqjgs4Eg4LKm4LOD4LKi4LOA4LKV4LKw4LK/4LK44LKy4LOBIOCyruCzh+CysuCzhiDgsqTgsr/gsrPgsr/gsrjgsrLgsr7gsqYg4LKJ4LKm4LON4LKm4LOH4LK24LKV4LON4LKV4LK+4LKX4LK/IOCyrOCys+CyuOCysuCyvuCyl+CzgeCyteCzgeCypuCzgSDgsq7gsqTgs43gsqTgs4Eg4LKs4LOH4LKw4LOGIOCyr+CyvuCyteCzgeCypuCzhyDgsongsqbgs43gsqbgs4fgsrbgspXgs43gspXgsr7gspfgsr8g4LKs4LKz4LK44LKy4LK+4LKX4LOB4LK14LOB4LKm4LK/4LKy4LON4LKyIOCyjuCyguCypuCzgSDgsrjgsoLgsqrgs4LgsrDgs43gsqPgsrXgsr7gspfgsr8g4LKF4LKw4LON4LKl4LKu4LK+4LKh4LK/4LKV4LOK4LKC4LKh4LK/4LKm4LON4LKm4LOH4LKo4LOGLg==";
String	HINDI_TXT= "4KSu4KWI4KSCIOCkheCkquCkqOClgCDgpKrgpLngpJrgpL7gpKgg4KS44KWN4KSl4KS+4KSq4KS/4KSkIOCkleCksOCkqOClhyDgpJTgpLAg4KSh4KWH4KSu4KWLIOCkj+CkquCljeCksuCkv+CkleClh+CktuCkqCDgpJXgpYcg4KSy4KS/4KSPIOCknOCkqOCkuOCkvuCkguCkluCljeCkr+Ckv+CkleClgOCkryDgpLXgpL/gpLXgpLDgpKMg4KSq4KWN4KSw4KSm4KS+4KSoIOCkleCksOCkqOClhyDgpJXgpYcg4KSJ4KSm4KWN4KSm4KWH4KS24KWN4KSvIOCkuOClhyDgpIbgpKfgpL7gpLAg4KSG4KSn4KS+4KSw4KS/4KSkIOCkquCljeCksOCkruCkvuCko+ClgOCkleCksOCkoyDgpJXgpYcg4KSy4KS/4KSPIOCkheCkquCkqOCkviDgpIbgpKfgpL7gpLAg4KSo4KSC4KSs4KSwIOCklOCksCDgpLXgpKgg4KSf4KS+4KSH4KSuIOCkquCkv+CkqCAo4KST4KSf4KWA4KSq4KWAKSDgpKHgpYfgpJ/gpL4g4KSq4KWN4KSw4KSm4KS+4KSoIOCkleCksOCkqOClhyDgpJXgpYcg4KSy4KS/4KSPIOCkuOCkueCkruCkpOCkvyDgpKbgpYfgpKTgpL4g4KS54KWC4KSC4KWkIOCkruClgeCkneClhyDgpJbgpYHgpKYg4KSV4KWLIOCkquCljeCksOCkruCkvuCko+Ckv+CkpCDgpJXgpLDgpKjgpYcg4KSu4KWH4KSCIOCkleCli+CkiCDgpIbgpKrgpKTgpY3gpKTgpL8g4KSo4KS54KWA4KSCIOCkueCliCDgpJTgpLAg4KSu4KWI4KSCIOCkquClguCksOClgCDgpKTgpLDgpLkg4KS44KWHIOCkuOCkruCkneCkpOCkviDgpLngpYLgpIIg4KSV4KS/IOCkruClh+CksOClhyDgpKbgpY3gpLXgpL7gpLDgpL4g4KSq4KWN4KSw4KSm4KS+4KSoIOCkleClgCDgpJfgpIgg4KSc4KS+4KSo4KSV4KS+4KSw4KWAIOCkleCkviDgpIngpKrgpK/gpYvgpJcg4KSG4KSn4KS+4KSwIOCkquCljeCksOCkruCkvuCko+ClgOCkleCksOCkoyDgpKrgpY3gpLDgpKPgpL7gpLLgpYAg4KSV4KWHIOCkruCkvuCkp+CljeCkr+CkriDgpLjgpYcg4KSu4KWH4KSw4KWAIOCkquCkueCkmuCkvuCkqCDgpJXgpYsg4KSq4KWN4KSw4KSu4KS+4KSj4KS/4KSkIOCkleCksOCkqOClhyDgpJXgpYcg4KSy4KS/4KSPIOCkiuCkquCksCDgpKzgpKTgpL7gpI8g4KSX4KSPIOCkieCkpuCljeCkpuClh+CktuCljeCkryDgpJXgpYcg4KSy4KS/4KSPIOCkleCkv+Ckr+CkviDgpJzgpL7gpI/gpJfgpL4g4KSU4KSwIOCkleCkv+CkuOClgCDgpIXgpKjgpY3gpK8g4KSJ4KSm4KWN4KSm4KWH4KS24KWN4KSvIOCkleClhyDgpLLgpL/gpI8g4KSo4KS54KWA4KSCIOCkleCkv+Ckr+CkviDgpJzgpL7gpI/gpJfgpL7gpaQ=";
%>
<main class="main" id="top">
   <!-- <div id="overlay"><div class="preloader-area" style="display: block;"><div class="loader"><div class="loader-inner"></div></div></div></div> -->
 <!--   <div id="overlay" style="display: none;">
     <div class="cssloader">
       <div class="sh1"></div>
       <div class="sh2"></div>
       <h4 class="lt" id="loaderMessage">loading .. </h4>
     </div>
   </div> -->

   <div class="content" style="background: #f5f5f5;">  
   <div class="container-fluid bg-300 dark__bg-1200" style="padding: 0px;">
     <div class="bg-holder bg-auth-card-overlay" style="background-color: #f5f5f5 !important;"></div>
     <!--/.bg-holder-->
<!-- min-vh-100 -->
     <div class="row flex-center position-relative g-0" style="background: whitesmoke;">
       <div class="col-11 col-sm-10 col-xl-11">
         <div class="card auth-card" style="border: none !important;">
           <div class="card-body pe-md-0" style="
                        padding: 0px !important;
                        ">
             <div class="row align-items-center gx-0 gy-7">
               <div class="col mx-auto" style="background: whitesmoke;">
                    <p style="margin-bottom: 20px;">
                       <img src="assets/img/Group.png" id="logoClinet" style="width: auto;height: 45px;">
                       <img id="logoCvl"  src="https://wealthnation.in/wp-content/uploads/2021/01/download-1.png" style="float: right;width: auto;height: 50px;">
                     </p>
                     
                 <div class="auth-form-box" style="padding: 0px !important;background: #F5F5F5;">
                  <!--  <form> -->
                 
                     <div class="container">
                       <img src="assets/img/Agreement.png" id="agreementimg">
                       <div class="text-container">
                         <p id="loanAgreementTxt" style="font-size: 20px;">Loan Agreement.pdf</p>
                         <p id="loanAgreementTxtSpan" style="font-size: 10px; color: #7C7B7C; /*! margin-left: 8px; */ padding: 0px !important; font-weight: normal; margin-top: 6px;">You are signing this document with Aadhaar e-sign.</p>
                       </div>
                     </div>
                     <div style="  overflow: hidden;display: none;"  class="mobileTxnTables">
                       <table style="
    float: left; /* Floats the table to the left */
">
                         <tbody>
                           <tr>
                             <td style="color: #49454F; font-size: 12px; font-size: 9px; font-weight: 400;">ASP ID</td>
                             <td style="font-size: 9px; font-weight: 400; color: #000000;">
                               <span style="word-wrap: break-word; word-break: break-all;">
                                 <strong style="word-wrap: break-word;">Digiotech Solutions Private Limited</strong>
                               </span>
                             </td>
                           </tr>
                           <tr>
                             <td style="color: #49454F; font-size: 9px; font-weight: 400;"> Transaction ID</td>
                             <td style="font-size: 9px; font-weight: 400; color: #000000; word-wrap: break-word;">
                               <span style="word-wrap: break-word; word-break: break-all;">
                                 <strong style="word-wrap: break-word;"> ESIGN:231017124839427BGZQO4XHQNE58XRIXHF4LV57JLG29
</strong>
                               </span>
                             </td>
                           </tr>
                         </tbody>
                       </table>
                       <table style="float: right;">
                         <tbody>
                           <tr>
                             <td style="color: #49454F; font-size: 9px; font-weight: 400;">Date </td>
                             <td style="font-size: 9px; font-weight: 400; color: #000000;">
                               <span style="word-wrap: break-word; word-break: break-all;">
                                 <strong style="word-wrap: break-word;"> 01 Dec 2023 </strong>
                               </span>
                             </td>
                           </tr>
                           <tr>
                             <td style="color: #49454F; font-size: 9px; font-weight: 400;">Time</td>
                             <td style="font-size: 9px; font-weight: 400; color: #000000;">
                               <span style="word-wrap: break-word; word-break: break-all;">
                                 <strong style="word-wrap: break-word;"> 18:20:31 IST</strong>
                               </span>
                             </td>
                           </tr>
                         </tbody>
                       </table>
                     </div>
                     
                         <hr style="border-color: #49454F; border-width: 1px; border-style: dashed;display: none;margin: 5px;" class="hrDivMob">
                         
                
                     
                      <div class="justify-content-between" id="OTPDiv" style="display: block;background: white;padding: 20px;">
                     
                      <div class="text-center">
                         <h4 class="text-1000">OTP Sent!</h4>
                         <p class="text-700 mb-0" id="spnResult_otp"></p>
                         <!--  <form class="verification-form" data-2FA-varification="data-2FA-varification"> -->
                         
                         <div class="otp-input-fields" style="margin-top: 20px;margin-bottom: 20px;">
                         
                          <input type="text" data-next="C01" id="C00" inputmode="numeric" class="otp__digit otp__field__1 form-control" maxlength="1" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" onpaste="handlePaste(event);" >
                           <input type="text" id="C01" data-next="C02" inputmode="numeric" data-previous="C00" class="otp__digit otp__field__2 form-control" maxlength="1" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" onpaste="handlePaste(event);" >
                           <input type="text" id="C02" data-next="C03" inputmode="numeric" data-previous="C01" class="otp__digit otp__field__3 form-control" maxlength="1" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" onpaste="handlePaste(event);" >
                           <input type="text" id="C03" data-next="C04"  inputmode="numeric" data-previous="C02" class="otp__digit otp__field__4 form-control" maxlength="1" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" onpaste="handlePaste(event);" >
                           <input type="text" id="C04" data-next="C05"  inputmode="numeric" data-previous="C03" class="otp__digit otp__field__5 form-control" maxlength="1" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" onpaste="handlePaste(event);" >
                           <input type="text" id="C05" data-previous="C04"  inputmode="numeric" class="otp__digit otp__field__6 form-control" maxlength="1" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" onpaste="handlePaste(event);" >
                           
                           
                          <span onclick="showMaskOtp()"  id="eyeOtp" class=" otp__digit_or fas fa-eye-slash  fa-eye field-icon-two toggle-password"></span>
                         </div>
                         <!-- 
                              <span onclick="showMaskOtp()"  id="eyeOtp" class="fas fa-eye-slash field-icon toggle-password"></span>
                          -->
                         
                          <div class="m-2" style="font-size: 14px;margin: 14px;text-align: start !important;margin-left: 8px;">
                           <span> Didn't receive the OTP ? <a href="#" style="margin-left: 6px;" onclick="onGenerateOTP()" id="resendOtpBtn"> Resend</a>
                           </span>
                           <br>
                           <span id="lblOtpTimer" style="font-size: 10px;"></span>
                         </div>
                         
                         
                         <Button class="btn btn-primary w-100 mb-1" type="button" onclick="onValidateOtp()" 
                          style="width: auto;" id="verifyOtpBtn">Verify & Sign</Button>
                   
                         <p class="text-700 mb-0" id="spnValidateResult" style="color: red !important;"></p>
                         <a    onclick="javascript:cancelOTPRequest();" target="_blank" style="font-size: 14px;text-decoration: underline;width: 64px;color: #7C7B7C;margin-left: 8px;">Cancel</a>
                         <input type="hidden" id="txtOtpToValidate" name="txtOtpToValidate">
                       </div>
                       </div>
                     <hr style="border-color: #49454F; border-width: 1px; border-style: dashed;" class="hrDivWeb">
                     <div style="  overflow: hidden;" class="WebTxnTables">
                       <table style="float: left; /* Floats the table to the left */">
                         <tbody>
                           <tr>
                             <td style="color: #49454F; font-size: 12px; font-size: 12px; font-weight: 400;">ASP ID</td>
                             <td style="font-size: 12px; font-weight: 400; color: #000000;">
                               <span style="word-wrap: break-word; word-break: break-all;">
                                 <strong style="word-wrap: break-word;">ECS</strong>
                               </span>
                             </td>
                           </tr>
                           <tr>
                             <td style="color: #49454F; font-size: 12px; font-weight: 400;"> Transaction ID</td>
                             <td style="font-size: 12px; font-weight: 400; color: #000000; word-wrap: break-word;">
                               <span style="word-wrap: break-word; word-break: break-all;">
                                 <strong style="word-wrap: break-word;"> 8a177baa-026d-4b57-8223-790ee999ba3e </strong>
                               </span>
                             </td>
                           </tr>
                         </tbody>
                       </table>
                       <table style="float: right;">
                         <tbody>
                           <tr>
                             <td style="color: #49454F; font-size: 12px; font-weight: 400;">Date </td>
                             <td style="font-size: 12px; font-weight: 400; color: #000000;">
                               <span style="word-wrap: break-word; word-break: break-all;">
                                 <strong style="word-wrap: break-word;"> 01 Dec 2023 </strong>
                               </span>
                             </td>
                           </tr>
                           <tr>
                             <td style="color: #49454F; font-size: 12px; font-weight: 400;">Time</td>
                             <td style="font-size: 12px; font-weight: 400; color: #000000;">
                               <span style="word-wrap: break-word; word-break: break-all;">
                                 <strong style="word-wrap: break-word;"> 18:20:31 IST</strong>
                               </span>
                             </td>
                           </tr>
                         </tbody>
                       </table>
                     </div>
                 </div>
               </div>
             </div>
           </div>
         </div>
       <!--   <div class="copy" style="color: #31374a;opacity: 1;font-size: 12px;text-align: center;">&copy; Copyright 2007. All rights reserved with CDSL Ventures Limited, India. <a href="#" data-toggle="modal" data-target="#Privacymodel" style="margin-left: 30px" class="text-primary">Privacy policy</a>
</div> -->
       </div>
     </div>
   </div>
   </div>
   
   <div class="modal fade" id="Privacymodel" role="dialog" style="margin-top: 50px;">
		<div class="modal-dialog modal-lg"
			style="max-width: 1200px !important;">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">

					<h5 class="modal-title">Privacy statements</h5>
					<button type="button" class="close" data-dismiss="modal">×</button>
				</div>
				<div class="modal-body" style="font-size: 12px !important;">
					<p>When you visit this Site, when you move from page to page,
						read pages, conduct searches, submit information or
						communications, or download content onto your computer, the Site
						may record and collect the following information:</p>
					<ul>
						<li>The IP address you are connecting from.</li>
						<li>The IP address of Web sites that you visited immediately
							before coming to the site.</li>
						<li>The IP address and account ID for users that logged on,
							the number of successful and unsuccessful attempts, and</li>
						<li>The activities completed.</li>
					</ul>

					<p>Non-persistent cookies may be used only to facilitate
						functionality during a single Site visit. Cookies do not contain
						personal information and are not permanently stored for future use</p>

					<p>CDSL Ventures Limited (CVL) may collect personal information
						from you if you are transacting through our website. We value your
						privacy and won’t ask you for personal information unless we truly
						need it.</p>
					<p style="font-weight: bold">This information could include the
						following:</p>
					<ul>
						<li>Name and gender</li>
						<li>Telephone Number</li>
						<li>Address</li>
						<li>Email address</li>
					</ul>

					<p>We do not sell, trade, or otherwise transfer your Personal
						Information to outside parties. This does not include trusted
						third parties who assist us in conducting our business, or
						servicing you, so long as those parties agree to keep this
						information confidential. We may also release, use or disclose
						your Personal Information when we believe such release of
						information is necessary to comply with any applicable law,
						regulation, legal process or enforceable statutory requirement, to
						enforce our site policies, to protect ours or others rights,
						property or safety as required or permitted by law, or when we
						have reason to believe that disclosing the information is
						necessary to identify, contact or bring legal action against
						someone who may be causing interference with our rights or
						properties, whether intentionally or otherwise, or when anyone
						else could be harmed by such activities.</p>
					<p>You recognize and understand that all Personal Information
						provided by you to us is with your full consent, own volition and
						desire to provide such Personal Information.</p>
					<p>We take appropriate steps to protect the information you
						share with us. We have implemented technology and security
						features and strict policy guidelines to safeguard the privacy of
						your Personal Information from unauthorized access and improper
						use or disclosure.</p>
					<p>We will continue to enhance its security procedures as new
						technology becomes available, and ensures that its security
						procedures are compliant with current applicable regulations.</p>
					<p>Wherever applicable, CDSL Ventures Limited complies with the
						Rules, Regulations and Guidelines issued by UIDAI and all other
						regulators as applicable to the company’s various businesses from
						time to time and also adheres to the Information Technology
						(Reasonable security practices and procedures and sensitive
						personal data or information) Rules, 2011.</p>
					<p>Further, this Website may contain links to other sites such
						as business affiliates and software providers. We are not
						responsible for the content or the privacy practices employed by
						other sites. We are not responsible for the protection and privacy
						of any information which you provide whilst visiting other sites
						and such other sites are not governed by this Policy. We advise
						you to read their privacy policies before providing your Personal
						Information to such sites.</p>
					<p style="font-weight: bold">Automatic Collection of Data</p>
					<p>The information we automatically collect includes, Device,
						Usage Information, and Transactional Data. We collect information
						about how you use our Services and the computers or other devices,
						such as mobile phones or tablets, you use to access our Services</p>
					<p>Some examples include, IP address, geolocation information
						that you allow our apps to access (usually from your mobile
						device), Unique device identifiers and device attributes, like
						operating system and browser type, other data such as web log
						data, referring and exit pages and URLs, platform type, number of
						clicks, domain names, landing pages, pages and content viewed and
						the order of those pages, the amount of time spent on particular
						pages, the date and time you used our Services, the frequency of
						your use of our Services, error logs, and other similar
						information, Transactional data (non-content data about electronic
						transactions you start, review, or sign), such as: names and email
						addresses of parties to a document or transaction, document or
						transaction subject, history of actions that individuals take on a
						document or transaction (e.g. review, sign) and information about
						those individuals or their devices, such as name, email address,
						IP address, and authentication methods and certificate profiles.</p>
					<p style="font-weight: bold">How do we use information
						gathered?</p>
					<p>We use the gathered information to provide our services, to
						fix and improve upon them, to develop new services and to market
						CVL’s products and/or services.</p>
					<p style="font-weight: bold">The usage of gathered information
						may be for the following purposes:</p>

					<ul>
						<li>To manage CVL’s online service platforms including
							support systems and security, develop new features, enhancements
							and introduce changes in our products and/or services</li>
						<li>To prevent or mitigate fraud, unauthorized access and
							other wrongful behavior on our platforms</li>
						<li>To meet the legal and compliance requirements relating to
							our products/service offerings</li>
						<li>To fix problems encountered by customers relating to our
							products and/or services</li>
						<li>To market features, products, services through different
							modes of communication</li>
						<li>To send you information about our relationship, including
							purchases, renewals and other events, provide you with products
							and/or services you request and collect payments</li>
						<li>To store and review information about how any transaction
							moved through our platform and the users and devices that was
							used to access those transactions/information</li>
					</ul>

					<p>We may combine and aggregate the information we collect and
						do analysis and research on that information. This may be used for
						product and/or service enhancements or marketing. This privacy
						policy does not apply to such aggregated information.</p>
					<p>In particular, CDSL Ventures Limited (CVL) uses your
						demographic information in CVL eSign using offline KYC, eKYC
						methods for signing the document. This information is not shared
						with any third-party entity.</p>
					<p>By using this site, a user is deemed to have provided the
						user's permission to the collection and use of information for the
						purposes set out herein.</p>
					<p>If you have any questions relating to this, you may contact
						on esignhelpdesk@cdslindia.com</p>
					<p>CDSL reserves the right to change this privacy statement at
						any time(s) without prior notice by posting a modified privacy
						statement on the site.</p>

				</div>
			</div>
		</div>
	</div>
	
	
 </main>
      <!-- ===============================================-->
      <!--    End of Main Content-->
      <!-- ===============================================-->
      <!-- ===============================================-->
      <!--    JavaScripts-->
      <!-- ===============================================-->
      <script src="vendors/popper/popper.min.js"></script>
      <script src="vendors/bootstrap/bootstrap.min.js"></script>
      <script src="vendors/anchorjs/anchor.min.js"></script>
      <script src="vendors/is/is.min.js"></script>
      <script src="vendors/fontawesome/all.min.js"></script>
      <script src="vendors/lodash/lodash.min.js"></script>
      <script src="vendors/list.js/list.min.js"></script>
      <script src="vendors/feather-icons/feather.min.js"></script>
      <script src="vendors/dayjs/dayjs.min.js"></script>
     
      
      
      <script src="assets_Bk/js/jquery.min.js"></script>
      <script src="assets_Bk/js/jquery.base64.js"></script>
<script src="assets_Bk/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/jquery.loadingModal.min.js"></script>
<script type="text/javascript" src="assets/js/ecsutils.min.js"></script>
<script src="assets/ecs/sweetalert.min.js"></script>
 
 
<script>








/* $('#txtAadhaarVid').inputmask({
    mask: '9999 9999 9999 9999',
    placeholder: ' ',
    showMaskOnFocus: false,
    showMaskOnHover: false
  }); */

	//ecsutils.showBusy('Generating OTP. Please wait...');
  // ecsutils.hideBusy();
        var otpTxnId = null;
        
 
       // OTPInput();


      // var offcanvasBottom = document.getElementById('offcanvasBottom');
      // offcanvasBottom.classList.toggle('show');

      $('#Privacymodel').on('shown.bs.modal', function() {
		})
		

		 

      $(document).ready(function() {
          $('body').bind('cut copy paste', function(e) {
              e.preventDefault();
            });


      /*     $('#C00, #C01, #C02, #C03, #C04, #C05').on("cut copy", function(e) {
              e.preventDefault();
          });

          $('#C00, #C01, #C02, #C03, #C04, #C05').on("paste", function(e) {
              e.preventDefault();
              // You can also add additional logic here if you want to handle the pasted text in some way
          });
 */
          
        });

      
     /*    function showMaskAadhaar() {
            var x = document.getElementById("txtAadhaarVid");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        } */

      //  var offcanvasBottom = document.getElementById('offcanvasBottom');
      // offcanvasBottom.classList.toggle('show');
        

       function OnAadhaarChange(){
  }
       
        function onConsentLanguageChange() {

            var language = $('#floatingSelect').val();

            if(language == "0"){

                var english = DeryptData("<%=ENGLISH_TXT%>");
            	$('#lblResidentConsent').html(english);
                }
            if(language == "1"){
            	var english = DeryptData("<%=HINDI_TXT%>");
            	$('#lblResidentConsent').html(english);
            }
            if(language == "2"){
            	var english = DeryptData("<%=TAMIL_TXT%>");
            	$('#lblResidentConsent').html(english);
            }
            if(language == "3"){
            	var english = DeryptData("<%=TELUGU_TXT%>");
            	$('#lblResidentConsent').html(english);
            }
            if(language == "4"){
            	var english = DeryptData("<%=MALAYALAM_TXT%>");
            	$('#lblResidentConsent').html(english);
            }
            if(language == "5"){
            	var english = DeryptData("<%=KANNADA_TXT%>");
            	$('#lblResidentConsent').html(english);
            }
        }

        function showMessage(message) {
            $('#spnResult').html(message);
            $('#spnResult').css("color", "red");
            $('#divMessage').show();
        }


        function showMessageLoader(message) {
            $('#loaderMessage').html(message);
            $('#loaderMessage').css("color", "white");
        }
        
        function hideMessage() {
            $('#spnResult').html('');
            $('#divMessage').show();
        }

        function showValidateMessage(message) {
            $('#spnValidateResult').html(message);
            //$('#spnValidateResult').css("color", "red");
            $('#spnValidateResult').css("color", "red");
            $('#divValidateMessage').show();
        }

        function hideValidateMessage() {
            $('#spnValidateResult').html('');
            $('#divValidateMessage').show();
        }

        function onGenerateOTP() {


        	 $('#C00,#C01,#C02,#C03,#C04,#C05').val("");

        	 
            hideMessage();

            var aadhaarNumber = $('#txtAadhaarVid').val();
            var consent = $('#lblResidentConsent').html();

            var sendSMS = $('#chkSMS').is(':checked');
            var sendEmail = $('#chkEmail').is(':checked');

            var consentAccepted = $('#chkConsent').is(':checked');
            
            if (!consentAccepted) {
            	$('#chkConsentDiv').css("border", "2px solid red");
                showMessage("Please accept consent");
                return;
            }
            
            if (aadhaarNumber.trim().length !== 12) {
            	$('#txtAadhaarVid').val("");
             	$('#chkConsentDiv').css("border","0px solid red");
            	$('#txtAadhaarVid').css('border','1px solid red');
                showMessage("Please enter valid aadhaar number");
                return;
            }
            
            $('#loaderMessage').html("");
            ecsutils.showBusy('Generating OTP. Please wait...');
            //showOverlay();

            $.ajax({
                type: 'POST',
                url: 'generateOtp',
                data: JSON.stringify({
                    aadhaarNumber: aadhaarNumber,
                    consent: consent,
                    sendSMS: sendSMS,
                    sendEmail: sendEmail,
                }),
                success: function (resp) {
                	ecsutils.hideBusy();
                	
                    if (resp.error){
                        showMessage(resp.errorMessage);
                        ecsutils.hideBusy();
                        return false;
                    }
                    otpTxnId = resp.otpTxnId;
                    $('#spnResult_otp').html(resp.message);
                    $('#spnResult_otp').css("color", "green");
                    $('#divMessage').show();

                    $('#btnGenerateOTP').attr("disabled", true);
                    $('#btnValidateOTP').removeAttr("disabled");
                    $('#btnCancel').removeAttr("disabled");
                    //var offcanvasBottom = document.getElementById('offcanvasBottom');
                    //offcanvasBottom.classList.toggle('show');
                    $('#OTPDiv').css("display", "block");
                    $('#aadhaarDiv').css("display", "none");
                    $('.WebTxnTables').css("display", "none");
                    $('.mobileTxnTables').css("display", "none");
                    $('.container,.scrollable-textbox,.hrDivWeb,.hrDivMob').css("display", "none");

                    $('#resendOtpBtn').css("pointer-events", "none");
                    countdownTimer = 60;
					var t = setInterval(function() 
					{
						--countdownTimer;

						if(countdownTimer === 0) 
						{
							$('#resendOtpBtn').css("pointer-events", "auto");
					        clearInterval(t);
					    }
						else
						{
							$('#lblOtpTimer').html('Wait for <strong style="color:red;font-size:30;">' + countdownTimer + '</strong> seconds to resend OTP');
						}
						          
					}, 1000);
					$('#txtOtp').focus();
					return;

					
                },
                error: function (xhr, textStatus, error) {
                    $('#loaderMessage').html("");
                    ecsutils.hideBusy();
                    showMessage(error.message);
                    return false;
                }
            });
        }




        document.getElementById('C00').addEventListener('input', function(event) {
            // Restrict input to numeric characters
            //var sanitizedValue = this.value.replace(/[^0-9]/g, '');
           // this.value = sanitizedValue;
          var pastedValue = '';
    if (event.clipboardData && typeof event.clipboardData.getData === 'function') {
        pastedValue = event.clipboardData.getData('text');
    }
    pastedValue = pastedValue.replace(/[^0-9]/g, '');

    
		    // Distribute the pasted value across all OTP input fields
		    var otpInputFields = $("input[id^=C]");
		    for (var i = 0; i < otpInputFields.length; i++) {
		        var inputField = otpInputFields[i];
		        if (pastedValue.length > i) {
		            inputField.value = pastedValue[i];
		        } else {
		            inputField.value = ''; // Clear any remaining fields if pastedValue is shorter than expected
		        }
		    }
		    
        });

        
        
        function handleCheckboxChange(checkbox) {
            if (checkbox.checked) {
                $('#chkConsentDiv').css("border", "0px solid red");
                showMessage("");
            } else {

                $('#chkConsentDiv').css("border", "2px solid red");
                showMessage("Please accept consent");
            }
        }

        
        function onValidateOtp() {
          //  hideValidateMessage();

            var aadhaarNumber = $('#txtAadhaarVid').val();
            var consent = $('#lblResidentConsent').html();


        
            var otpValue = $('#txtOtpToValidate').val();

           // alert(otpValue);
            if (otpValue.trim().length !== 6) {
                showValidateMessage("Please enter valid OTP value")
                return;
            }

            $('#loaderMessage').html("");
            ecsutils.showBusy("Validating OTP. Please wait!!!");
            showOverlay();

            $.ajax({
                type: 'POST',
                url: 'validateOtp',
                data: JSON.stringify({
                    aadhaarNumber: aadhaarNumber,
                    consent: consent,
                    otpValue: otpValue,
                    otpTxnId: otpTxnId,
                }),
                success: function (resp) {
                	$('#loaderMessage').html("");
                	ecsutils.hideBusy();
                    if (resp.error) {
                        showValidateMessage(resp.errorMessage);
                        return false;
                    }
                    //Show the result
                  //  window.location = 'kycResult.jsp';
                },
                error: function (xhr, textStatus, error) {
                	$('#loaderMessage').html("");
                	ecsutils.hideBusy();
                    showValidateMessage(error.message);
                    return false;
                }
            });
        }
	    	
	/*    	  $("input[id^=C]").keyup(function(e) {
			  var str = "";
			  $("input[id^=C]").each(function(index) {
			    str = str + $(this).val();
			  });
			   $("#txtOtpToValidate").val(str);
			});  */





			function updateOtpValue() {
			    var str = "";
			    $("input[id^=C]").each(function(index) {
			        str += $(this).val(); // Concatenate the value of each OTP input field
			    });
			    $("#txtOtpToValidate").val(str); // Set the concatenated value as the value of the target field
			}


	



			function updateOtpValue() {
			    var str = "";
			    $("input[id^=C]").each(function(index) {
			        str += $(this).val(); // Concatenate the value of each OTP input field
			    });
			    $("#txtOtpToValidate").val(str); // Set the concatenated value as the value of the target field
			}



			function handlePaste(event) {
			    // Get clipboard data
			    var clipboardData = event.clipboardData || window.clipboardData;
			    var pastedText = clipboardData.getData('text');
alert(pastedText);
			    // Call the handleInput function with the pasted text
			    handleInput(pastedText);
			}

			function handleInput(eventOrValue) {
			    // Get the current input field
			    var currentInput = eventOrValue.target || eventOrValue;

			    // Get the input value
			    var inputValue = currentInput.value;

			    // Remove any non-numeric characters
			    var numericValue = inputValue.replace(/[^0-9]/g, '');

			    // Assign numeric value to the input field
			    currentInput.value = numericValue;

			    // Move focus to the next input field if available
			    var nextInputId = currentInput.getAttribute('data-next');
			    if (nextInputId) {
			        var nextInput = document.getElementById(nextInputId);
			        if (nextInput) {
			            nextInput.focus();
			        }
			    }
			}

			


	    





		   	const inputs = document.querySelectorAll(".otp-input-fields input");

		 	inputs.forEach((input, index) => {
		   	    input.dataset.index = index;
		   	    input.addEventListener("keyup", handleOtp);
		   	    input.addEventListener("paste", handleOnPasteOtp);
		   	});



			function handleOtp(e) {
		   	    const input = e.target;
		   	    let value = input.value;
		   	    let isValidInput = value.match(/[0-9a-z]/gi);
		   	    input.value = "";
		   	    input.value = isValidInput ? value[0] : "";

		   	    let fieldIndex = input.dataset.index;
		   	    if (fieldIndex < inputs.length - 1 && isValidInput) {
		   	        input.nextElementSibling.focus();
		   	    }

		   	    if (e.key === "Backspace" && fieldIndex > 0) {
		   	        input.previousElementSibling.focus();
		   	    }

		   	    if (fieldIndex == inputs.length - 1 && isValidInput) {
		   	        //submit();
		   	    }
		   	}

		   	function handleOnPasteOtp(e) {
		   	    const data = e.clipboardData.getData("text");
		   	    const value = data.split("");
		   	    if (value.length === inputs.length) {
		   	        inputs.forEach((input, index) => (input.value = value[index]));
		   	        
		   	    }
		   	}

		   	
			
	  	function isNumber(evt) {
		    evt = (evt) ? evt : window.event;
		    var charCode = (evt.which) ? evt.which : evt.keyCode;
		    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
		        return false;
		    }
		    return true;
		}


	  //Show Overlay
	  	function showOverlay() {
	  		$('#overlay').css('display','block');
	  		
	  	    //document.getElementById("overlay").style.display = "block";
	  	}

	  	//Hid Overlay
	  	function hideOverlay() {
	  		$('#overlay').css('display','none');
	  	   // document.getElementById("overlay").style.display = "none";
	  	}

		function DeryptData( str ) {
			  return decodeURIComponent(escape(window.atob( str )));
			}


		function showMaskAadhaar(){

		            if($("#eye").hasClass('fa-eye-slash')){
		        	 $("#eye").removeClass('fa-eye-slash');
		        	 $("#eye").addClass('fa-eye');
		             $('#txtAadhaarVid').attr('inputmode', 'numeric');
		             $('#txtAadhaarVid').attr('type', 'text');
		             $('#txtAadhaarVid').attr('pattern', '[0-9]*');
		            
		        }else{
		          $("#eye").removeClass('fa-eye');
		          $("#eye").addClass('fa-eye-slash');  
		          $('#txtAadhaarVid').attr('type','password');
		          $('#txtAadhaarVid').attr('inputmode', 'numeric');
		          $('#txtAadhaarVid').attr('pattern', '[0-9]*');
		        }
		    }



		

		function showMaskOtp(){

	         if($("#eyeOtp").hasClass('fa-eye-slash')){
	        	 $("#eyeOtp").removeClass('fa-eye-slash');
	        	 $("#eyeOtp").addClass('fa-eye');
	        	 $('#C00,#C01,#C02,#C03,#C04,#C05').attr('type','number');
	        	 $('#C00,#C01,#C02,#C03,#C04,#C05').attr('inputmode', 'numeric');
	            
	        }else{
	        	$("#eyeOtp").removeClass('fa-eye');
	        	$("#eyeOtp").addClass('fa-eye-slash');  
	          $('#C00,#C01,#C02,#C03,#C04,#C05').attr('type','number');
	          $('#C00,#C01,#C02,#C03,#C04,#C05').attr('inputmode', 'numeric');
	        }
	    }

	    



		
			
		 function cancelOTPRequest()
		    {

		    	  swal({
		    	        text: "Are you sure you want to cancel?",
		    	       //  icon: "warning",
		    	        buttons: ["Yes", "No"],
		    	        dangerMode: true,
		    	    })
		    	    .then((willDelete) => {
		    	      if (willDelete) {
		    	    	 alert("User cancelled the transaction");
  	 					 //document.getElementById('frmMain').submit();
		    	      } 
		    	      else{

		    	    	  alert("No");
		    	      }
		    	    });

		    	    
		     <%-- $('#ESIGN_RES_ERR').val("<%=Utils.generateAspResponseError(sessionId, aspTxn, "ESP998","User cancelled the transaction")%>"); --%>
			  
		
			}

			

		    
	  	  
    </script>

   </body>
   <!-- Mirrored from prium.github.io/phoenix/v1.13.0/pages/authentication/card/forgot-password.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 04 Aug 2023 07:16:18 GMT -->
</html>