import 'package:get/get.dart';

import '../utils/lang_string_util.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      createAccountSUtil: "Create Account",
      emailSUtil: "Email",
      contactNoSUtil: "Contact Number",
      fullNameSUtil: "Full Name",
      addressSUtil: "Address",
      selectCountrySUtil: "Select Country",
      selectStateSUtil: "Select State",
      selectCitySUtil: "Select city",
      passSUtil: "Password",
      confirmPassSUtil: 'Confirm Password',
      vehicleTypeSUtil: 'Vehicle Type',
      registerSUtil: 'Register',
      loginSUtil: 'Login',
      alreadyAccountSUtil: 'Already have an account ',
      uploadSUtil: 'Upload',
      //
      getStartedSUtil: "Let's get started",
      signInSUtil: "Sign In",
      continueFbSUtil: "Continue with facebook",
      continueGoogleSUtil: "Continue with google",
      orSUtil: "or",
      noAccountSUtil: "Don't have an account? ",

      //
      loginAccountSUtil: "Login Account",
      rememberMeSUtil: "Remember me",
      forgotPassSUtil: "Forget Password",

      //
      assignedLoadSUtil: "Assigned Load",
      recentOrdersSUtil: "Recent Orders",
      activeSUtil: "Active",
      nonActiveSUtil: "Non-Active",
      verificationStatusSUtil: "Verification\nStatus",
      accountStatusSUtil: "Account\nStatus",
      completedOrderSUtil: "Completed\nOrders",
      pendingOrderSUtil: "Pending\nOrders",
      viewAllSUtil: "View All ",
      rejectSUtil: "Reject",

      //

      orderIdSUtil: "Order ID",
      pickupDateSUtil: "Pickup Date",
      deliveryDateSUtil: "Delivery Date",
      pickupLocationSUtil: "Pickup Location",
      deliveryLocationSUtil: "Delivery Location",
      amountSUtil: "Amount",
      sendOfferSUtil: "Send Offer",
      bookNowSUtil: "Book Now",
      noDataSUtil: "No data",
      nameSUtil: "Name",
      orderCodeSUtil: "Order Code",

      //
      searchLoadSUtil: "Search load",
      advanceFilterSUtil: "Advance Filter",
      originCitySUtil: "Origin City",
      deliveryCitySUtil: "Delivery City",
      driverTypeSUtil: "Driver Type",
      equipmentTypeSUtil: "Equipment Type",
      applyFilterSUtil: "Apply Filter",

      //
      noteSUtil: "Notes",
      rejectThisLoadSUtil: "Reject this load?",
      cancelSUtil: "Cancel",
      successSUtil: "Success!",
      failedSUtil: "Failed!",
      wentWrongSUtil: "Something Went Wrong",
      loadBookedSUtil: "Your load has been Booked",
      loadRejectedSUtil: "Load Rejected Successfully",

      //

      alertSUtil: "Alert!",
      sureRejectLoadSUtil: "Are you sure you want to reject this load?\n",
      loadExpiredSUtil: "This load has been expired!",
      orderDetailSUtil: "Order Details",
      deliveryStatusSUtil: "Delivery Status",
      sellerNameSUtil: "Seller Name",
      assignedDateSUtil: "Assigned Date",
      loadTypeSUtil: "Load Type",
      loadWeightSUtil: "Load Weight",
      weightTypeSUtil: "Weight Type",
      freightTypeSUtil: "Freight Payment",
      pickupLongitudeSUtil: "Pickup Longitude",
      pickupLatitudeSUtil: "Pickup Latitude",
      deliveryLongitudeSUtil: "Delivery Longitude",
      deliveryLatitudeSUtil: "Delivery Latitude",

      //

      withdrawHistorySUtil: "Withdraw History",
      earningHistorySUtil: "Earning History",
      walletAmountSUtil: "Wallet Amount",
      withdrawSUtil: "Withdraw",
      myEarningsSUtil: "My Earnings",
      askAmountSUtil: "Ask Amount",
      dateSUtil: "Date",
      idSUtil: "Id",
      requestedAmountSUtil: "Requested Amount",
      recieivedAmountSUtil: "Received Amount",
      paymentStatusSUtil: "Payment Status",
      paymentTypeSUtil: "Payment Type",
      bankNameSUtil: "Bank Name",
      beneficiarySUtil: "Beneficiary",
      typeSUtil: "Type",
      descriptionSUtil: "Description",
      sendRequestSUtil: "Send Request",
      selectPaymentOptSUtil: "Please Select A Payment Option",

      //

      withdrawRequestSUtil: "Withdraw Request",
      accountNumberSUtil: "Account Number",
      bankPaymentSUtil: "Bank Payment",
      mobilePaymentSUtil: "Mobile Payment",

      //

      updateSUtil: "Update",
      deleteAccountSUtil: "Delete Account",
      updateFailedSUtil: "update Failed!",
      uploadDocumentsSUtil: "Please upload all documents",
      deleteAccountPerSUtil: "Delete account permanently?",
      deleteSUtil: "Delete",
      accountDeleteSuccSUtil: "Account Deleted Successfully",
      sureDeleteAccPerSUtil:
      "Are you sure you want to delete your account permanently?\n'",
      wontRecoverAccountSUtil:
      "You will not be able to recover your data if Account deleted.",
      imgIdFrontSUtil: "ID Card Front",
      imgIdBackSUtil: "ID Card Back",
      imgVehicleRegSUtil: "Vehicle Registration",
      imgVehiclePlateSUtil: "Vehicle No Plate",
      imgVehicleInsuranceSUtil: "Vehicle Insurance",
      imgCargoInsuranceSUtil: "Cargo Insurance",
      imgProfilePicSUtil: "profile Picture",

      //
      myDeliveriesSUtil: "My Deliveries",
      confirmedSUtil: "Confirmed",
      pickedUpSUtil: "Picked Up",
      deliveredSUtil: "Delivered",
      startSUtil: "Start",
      allowLocationSUtil:
      "In the next screen you will be asked permissions about \"Location\" services, which are required for the delivery functionality.\n\nNote: We use location data of your device while the app is in foreground or even in \"Background\" to make the delivery feature work smoothly.",
      confirmedStatusSUtil: "confirmed",
      myDeliveriesPickUpSUtil: "PickUp",
      pickedUpStatusSUtil: "picked_up",
      myDeliveriesDeliverySUtil: "Delivery",
      deliveredStatusSUtil: "delivered",
      //Todo 3-march-23
      markAsArrivedSUtil: "Mark as Arrived",
      startDriveSUtil: "Start Drive",
      startPickUpSUtil: "Start Pickup",
      startDeliverySUtil: "Start Delivery",



      startPickUpInfoSUtil : "Drive to your pickup location",
      startDeliveryInfoSUtil : "Drive to your delivery location",
      completePickUpInfoSUtil : "To complete your pickup :",
      completeDeliveryInfoSUtil : "To complete your Delivery :",




      directionDisclaimerSUtil:
      "Drive carefully and follow road signs and traffic rules. Google Maps(Navigation) is only to assist you, it may not provide best information some times. MoyenXpress cannot be held responsible for any misdirection, wrong turns or misleading information.",

      attachProofImageSUtil: "Attach Proof Images",
      attachProofImageAlertSUtil: "Please upload proof images",
      proofImageSUtil: "Proof Image",

      //
      uploadImageFromSUtil: "Upload Image From",
      cameraSUtil: "Camera",
      gallerySUtil: "Gallery",

      //

      notificationSUtil: "Notifications",
      todaySUtil: "Today",
      yesterdaySUtil: "yesterday",
      offeredLoadsSUtil: "Offered Orders",
      noDataFoundSUtil: "No Data Found",
      backSUtil: "Back",
      openLoadsSUtil: "Open Loads",
      dashboardSUtil: "Dashboard",
      walletEarningSUtil: "Wallet & Earning",
      myProfileSUtil: "My Profile",
      yesSUtil: "Yes",
      noSUtil: "No",
      exitAppSUtil: "Exit App!",
      sureExitAppSUtil: "Are you sure you want to exit?",

      //

      logoutSUtil: "Logout",
      settingsSUtil: "Settings",
      availableSUtil: "Available",
      notAvailableSUtil: "Not Available",
      selectLanguageSUtil: "Select Language",

      //
      ratingReviewsSUtil: "Rating & reviews",
      payOutDetailSUtil: "Pay Out Detail",
      selectCurrencySUtil: "Select Currency",
      ratingAndReviewsSUtil: "Ratings & Review",
      totalReviewsSUtil: "Total Review",
      ratingSUtil: "Rating",
      bankDetailsSUtil: "Bank Details",
      bankRoutingNumberSUtil: "Bank Routing Number",

      //

      bankSwiftCodeSUtil: "Bank Swift Code",
      bankAddressSUtil: "Bank Address",
      mobilePaymentDetailsSUtil: "Mobile payment Details",
      paymentAccountCountrySUtil: "Payment Account Country",
      paymentCountryNameSUtil: "Payment Company Name",

      //

      loginFailedSUtil: "Login Failed!",
      verifyEmailSUtil: "Verify Your Email",
      verifySUtil: "Verify",
      updatePassSUtil: "Update Pass",
      verificationCodeSUtil: "Verification Code",
      newPassSUtil: "New Password",
      okSUtil: "Ok",
      grantLocationPerSUtil:
      "you can not proceed further without granting location permissions.",
      androidLocationPerSettingSUtil:
      "Note: You can always change permission settings from app settings > permissions > location.",
      iosLocationPerSettingSUtil:
      "Note: You can always change permission settings from:\n 1. setting > privacy > enable location services. \n 2. Driver app > \"while using app\" or \"always\".",

//
      validEmailSUtil: "Provide a valid email",
      requiredSUtil: "Required",
      isRequiredSUtil: "Is Required",
      passwordLengthSUtil: "Password should be at least 6 characters",

//
      passNotMatchSUtil: "Password does not match!",
      supportSUtil: "Support",
      writeMessageSUtil: "Write your message",
    },
    'ur_Pk': {
      createAccountSUtil: "اکاؤنٹ بنائیں",
      emailSUtil: "ای میل",
      contactNoSUtil: "رابطہ نمبر",
      fullNameSUtil: "پورا نام",
      addressSUtil: "پتہ",
      selectCountrySUtil: "ملک منتخب کیجئے",
      selectStateSUtil: "ریاست منتخب کریں",
      selectCitySUtil: "شہر منتخب کریں",
      passSUtil: "پاس ورڈ",
      confirmPassSUtil: ' پاس ورڈ تصدیق کریں',
      vehicleTypeSUtil: 'گاڑی کی قسم',
      registerSUtil: 'رجسٹر کریں۔',
      loginSUtil: 'لاگ ان',
      alreadyAccountSUtil: 'پہلے سے ہی ایک اکاؤنٹ ہے۔ ',
      uploadSUtil: 'اپ لوڈ',
      //
      getStartedSUtil: "چلو شروع کرتے ہیں",
      signInSUtil: "سائن ان کریں",
      continueFbSUtil: "فیس بک کے ساتھ جاری رکھیں",
      continueGoogleSUtil: "گوگل کے ساتھ جاری رکھیں",
      orSUtil: "یا",
      noAccountSUtil: "کیا آپ کے پاس اکاؤنٹ نہیں ہے؟ ",
      //
      loginAccountSUtil: "لاگ ان اکاؤنٹ",
      rememberMeSUtil: "مجھے یاد رکھیں",
      forgotPassSUtil: "پاس ورڈ بھول جاؤ",

      //

      assignedLoadSUtil: "تفویض کردہ لوڈ",
      recentOrdersSUtil: "حالیہ احکامات",
      activeSUtil: "سرگرم",
      nonActiveSUtil: "غیر فعال",
      verificationStatusSUtil: "اثبات\nپایہ",
      accountStatusSUtil: "حساب\nپایہ",
      completedOrderSUtil: "مکمل\nاحکامات",
      pendingOrderSUtil: "ملتوی\nاحکامات",
      viewAllSUtil: "سب دیکھیں ",
      rejectSUtil: "نظر انداز کرنا",
      //
      orderIdSUtil: "آرڈر ID",
      pickupDateSUtil: "پک اپ کی تاریخ",
      deliveryDateSUtil: "ترسیل کی تاریخ",
      pickupLocationSUtil: "پک اپ محل وقوع",
      deliveryLocationSUtil: "ترسیل کا مقام",
      amountSUtil: "مقدار",
      sendOfferSUtil: "پیشکش بھیجیں",
      bookNowSUtil: "کتاب اب",
      noDataSUtil: "کوئی ڈیٹا نہیں",
      //

      nameSUtil: "نام",
      orderCodeSUtil: "آرڈر کوڈ",

      //
      searchLoadSUtil: "تلاش کا بوجھ",
      advanceFilterSUtil: "Advance فلٹر",
      originCitySUtil: "اصل شہر",
      deliveryCitySUtil: "ڈیلیوری سٹی",
      driverTypeSUtil: "ڈرائیور کی قسم",
      equipmentTypeSUtil: "سامان کی قسم",
      applyFilterSUtil: "فلٹر کریں",

      //

      noteSUtil: "نوٹ",
      rejectThisLoadSUtil: "اس بوجھ کو مسترد کریں؟",
      cancelSUtil: "منسوخ",
      successSUtil: "کامیابی!",
      failedSUtil: "ناکام!",
      wentWrongSUtil: "کچھ غلط ہو گیا",
      loadBookedSUtil: "آپ کا لوڈ بک کر لیا گیا ہے",
      loadRejectedSUtil: "لوڈ کامیابی سے مسترد کر دیا گیا",

      //

      alertSUtil: "انتباہ!",
      sureRejectLoadSUtil:
      "کیا آپ یقینی طور پر اس بوجھ کو مسترد کرنا چاہتے ہیں؟\n",
      loadExpiredSUtil: "یہ لوڈ ختم ہو چکا ہے!",
      orderDetailSUtil: "آرڈر کی تفصیلات",
      deliveryStatusSUtil: "ڈیلیوری کی حیثیت",
      sellerNameSUtil: "فروخت کنندہ کا نام",
      assignedDateSUtil: "تفویض کردہ تاریخ",
      loadTypeSUtil: "لوڈ کی قسم",
      loadWeightSUtil: "وزن لوڈ کریں",
      weightTypeSUtil: "وزن کی قسم",
      freightTypeSUtil: "مال برداری کی ادائیگی",
      pickupLongitudeSUtil: "Pickup Longitude",
      pickupLatitudeSUtil: "پک اپ Latitude",
      deliveryLongitudeSUtil: "Delivery Longitude",
      deliveryLatitudeSUtil: "Delivery Latitude",

//

      withdrawHistorySUtil: "تاریخ واپس لیں",
      earningHistorySUtil: "کمائی کی تاریخ",
      walletAmountSUtil: "بٹوے کی رقم",
      withdrawSUtil: "دستبردار ہو جاؤ",
      myEarningsSUtil: "میری کمائی",
      askAmountSUtil: "رقم پوچھیں",
      dateSUtil: "تاریخ",
      idSUtil: "شناخت",
      requestedAmountSUtil: "درخواست کی گئی رقم",
      recieivedAmountSUtil: "وصول شدہ رقم",
      paymentStatusSUtil: "ادائیگی کی حیثیت",
      paymentTypeSUtil: "ادائیگی کی قسم",
      bankNameSUtil: "بینک کا نام",
      beneficiarySUtil: "فائدہ اٹھانے والے",
      typeSUtil: "قسم",
      descriptionSUtil: "تفصیل",
      sendRequestSUtil: "درخواست بھیجیں",
      selectPaymentOptSUtil: "براہ کرم ادائیگی کا آپشن منتخب کریں",

      //

      withdrawRequestSUtil: "درخواست واپس لیں",
      accountNumberSUtil: "اکاؤنٹ نمبر",
      bankPaymentSUtil: "بینک کی ادائیگی",
      mobilePaymentSUtil: "موبائل ادائیگی",

      //

      updateSUtil: "تازہ کاری",
      deleteAccountSUtil: "اکاؤنٹ حذف کریں",
      updateFailedSUtil: "تازہ کاری ناکام!",
      uploadDocumentsSUtil: "براہ کرم تمام دستاویزات اپ لوڈ کریں",
      deleteAccountPerSUtil: "اکاؤنٹ مستقل طور پر حذف کریں؟",
      deleteSUtil: "مٹانا",
      accountDeleteSuccSUtil: "اکاؤنٹ کامیابی سے حذف کر دیا گیا",
      sureDeleteAccPerSUtil:
      "کیا آپ واقعی اپنا اکاؤنٹ مستقل طور پر حذف کرنا چاہتے ہیں؟\n'",
      wontRecoverAccountSUtil:
      "اگر اکاؤنٹ حذف کر دیا گیا تو آپ اپنا ڈیٹا بازیافت نہیں کر سکیں گے۔",
      imgIdFrontSUtil: "شناختی کارڈ فرنٹ",
      imgIdBackSUtil: "شناختی کارڈ واپس",
      imgVehicleRegSUtil: "گاڑیوں کی رجسٹریشن",
      imgVehiclePlateSUtil: "گاڑی کی کوئی پلیٹ نہیں",
      imgVehicleInsuranceSUtil: "وہیکل انشورنس",
      imgCargoInsuranceSUtil: "کارگو انشورنس",
      imgProfilePicSUtil: "پروفائل تصویر",

      //
      myDeliveriesSUtil: "میری ترسیل",
      confirmedSUtil: "تصدیق شدہ",
      pickedUpSUtil: "اٹھایا گیا",
      deliveredSUtil: "فراہم کیا گیا",
      startSUtil: "شروع کرنا",
      allowLocationSUtil:
      "اگلی اسکرین میں آپ سے \"مقام\" خدمات کے بارے میں اجازت یں پوچھی جائیں گی ، جو ترسیل کی فعالیت کے لئے ضروری ہیں۔\n\nنوٹ: ہم آپ کے آلے کے لوکیشن ڈیٹا کا استعمال کرتے ہیں جب ایپ پیش منظر میں ہو یا یہاں تک کہ \"پس منظر\" میں ہو تاکہ ترسیل کی خصوصیت آسانی سے کام کرے۔",
      confirmedStatusSUtil: "تصدیق شدہ",
      myDeliveriesPickUpSUtil: "پک اپ",
      pickedUpStatusSUtil: "picked_up",
      myDeliveriesDeliverySUtil: "سپردگی",
      deliveredStatusSUtil: "فراہم کیا گیا",
//Todo 3-march-23

      markAsArrivedSUtil: "پہنچتے ہی نشان",
      startDriveSUtil: "اسٹارٹ ڈرائیو",
      startPickUpSUtil: "پک اپ شروع کریں",
      startDeliverySUtil: "ترسیل شروع کریں",
      directionDisclaimerSUtil:
      "احتیاط سے گاڑی چلائیں اور سڑک کے نشانات اور ٹریفک قوانین پر عمل کریں۔ گوگل میپس (نیویگیشن) صرف آپ کی مدد کرنے کے لئے ہے، یہ بعض اوقات بہترین معلومات فراہم نہیں کرسکتا ہے. موئن ایکس پریس کو کسی بھی غلط سمت ، غلط موڑ یا گمراہ کن معلومات کے لئے ذمہ دار نہیں ٹھہرایا جاسکتا ہے۔",


      startPickUpInfoSUtil : "اپنے پک اپ مقام پر ڈرائیو کریں",
      startDeliveryInfoSUtil : "اپنی ترسیل کے مقام پر ڈرائیو کریں",
      completePickUpInfoSUtil : "اپنے پک اپ کو مکمل کرنے کے لئے:",
      completeDeliveryInfoSUtil : "آپ کی ترسیل مکمل کرنے کے لئے:",



      attachProofImageSUtil: "ثبوت تصاویر منسلک کریں",
      attachProofImageAlertSUtil: "براہ مہربانی ثبوت تصاویر اپ لوڈ کریں",
      proofImageSUtil: "ثبوت کی تصویر",

      //
      uploadImageFromSUtil: "تصویر اپ لوڈ کریں",
      cameraSUtil: "کیمرہ",
      gallerySUtil: "گیلری",

      //
      notificationSUtil: "اطلاعات",
      todaySUtil: "آج",
      yesterdaySUtil: "کل",
      offeredLoadsSUtil: "پیش کردہ آرڈر",
      noDataFoundSUtil: "کوئی ڈیٹا نہیں ملا",
      backSUtil: "واپس",
      openLoadsSUtil: "کھلا بوجھ",
      dashboardSUtil: "Dashboard",
      walletEarningSUtil: "بٹوے اور کمائی",
      myProfileSUtil: "میرا پروفائل",
      yesSUtil: "ہاں",
      noSUtil: "نہيں",
      exitAppSUtil: "ایگزٹ ایپ!",
      sureExitAppSUtil: "کیا آپ واقعی باہر نکلنا چاہتے ہیں؟",

      //

      logoutSUtil: "لاگ آوٹ",
      settingsSUtil: "سیٹنگیں",
      availableSUtil: "دست یاب",
      notAvailableSUtil: "دستیاب نہیں",
      selectLanguageSUtil: "زبان منتخب کریں",

      //
      ratingReviewsSUtil: "درجہ بندی اور جائزے",
      payOutDetailSUtil: "تفصیلات ادا کریں",
      selectCurrencySUtil: "کرنسی منتخب کریں",
      ratingAndReviewsSUtil: "درجہ بندی اور جائزہ",
      totalReviewsSUtil: "مجموعی جائزہ",
      ratingSUtil: "درجہ بندی",
      bankDetailsSUtil: "بینک کی تفصیلات",
      bankRoutingNumberSUtil: "بینک روٹنگ نمبر",

      //

      bankSwiftCodeSUtil: "بینک سوئفٹ کوڈ",
      bankAddressSUtil: "بینک کا پتہ",
      mobilePaymentDetailsSUtil: "موبائل ادائیگی کی تفصیلات",
      paymentAccountCountrySUtil: "ادائیگی اکاؤنٹ ملک",
      paymentCountryNameSUtil: "ادائیگی کمپنی کا نام",

      //

      loginFailedSUtil: "لاگ ان ناکام!",
      verifyEmailSUtil: "اپنے ای میل کی تصدیق کریں",
      verifySUtil: "تصدیق کرنا",
      updatePassSUtil: "پاس اپ ڈیٹ کریں",
      verificationCodeSUtil: "تصدیقی کوڈ",
      newPassSUtil: "نیا پاس ورڈ",
      okSUtil: "ٹھيک ہے",
      grantLocationPerSUtil:
      "آپ مقام کی اجازت دیئے بغیر آگے نہیں بڑھ سکتے۔",
      androidLocationPerSettingSUtil:
      "نوٹ: آپ ہمیشہ ایپ کی ترتیبات > اجازتوں > مقام سے اجازت کی ترتیبات کو تبدیل کرسکتے ہیں۔",
      iosLocationPerSettingSUtil:
      "نوٹ: آپ ہمیشہ اجازت کی ترتیبات کو تبدیل کرسکتے ہیں:\n 1. مقام کی خدمات کو فعال > کے لئے رازداری > ترتیب دینا. \n 2. ڈرائیور ایپ \"ایپ استعمال کرتے وقت\" یا \"ہمیشہ\" >۔",

      //

      validEmailSUtil: "ایک درست ای میل فراہم کریں",
      requiredSUtil: "مطلوبہ",
      isRequiredSUtil: "ضروری ہے",
      passwordLengthSUtil: "پاس ورڈ کم از کم 6 حروف کا ہونا چاہئے",

      //
      passNotMatchSUtil: "پاس ورڈ میل نہیں کھاتا!",
      supportSUtil: "معاونت",
      writeMessageSUtil: "اپنا پیغام لکھیں",
    },
    "fr_FR": {
      createAccountSUtil: "Créer un compte",
      emailSUtil: "Messagerie électronique",
      contactNoSUtil: "Numéro de téléphone",
      fullNameSUtil: "Nom complet",
      addressSUtil: "Adresse",
      selectCountrySUtil: "Sélectionner un pays",
      selectStateSUtil: "Sélectionner un état",
      selectCitySUtil: "Sélectionnez une ville",
      passSUtil: "Mot de passe",
      confirmPassSUtil: "Confirmer le mot de passe",
      vehicleTypeSUtil: "Type de véhicule",
      registerSUtil: "Registre",
      loginSUtil: "Connectez-vous",
      alreadyAccountSUtil: "Vous avez déjà un compte ",
      uploadSUtil: "Upload",
      //
      getStartedSUtil: "Commençons",
      signInSUtil: "Connexion",
      continueFbSUtil: "Continuer avec facebook",
      continueGoogleSUtil: "Continuer avec google",
      orSUtil: "ou",
      noAccountSUtil: "Vous n’avez pas de compte ? ",
      //
      loginAccountSUtil: "Compte de connexion",
      rememberMeSUtil: "Souvenez-vous de moi",
      forgotPassSUtil: "Mot de passe oublié",

      //

      assignedLoadSUtil: "Charge assignée",
      recentOrdersSUtil: "Commandes récentes",
      activeSUtil: "Actif",
      nonActiveSUtil: "Inactif",
      verificationStatusSUtil: "Vérification\nStatut",
      accountStatusSUtil: "Compte\nStatut",
      completedOrderSUtil: "Terminé\nOrdres",
      pendingOrderSUtil: "En instance\nOrdres",
      viewAllSUtil: "Voir tout ",
      rejectSUtil: "Rejeter",

      //

      orderIdSUtil: "Numéro de commande",
      pickupDateSUtil: "Date de ramassage",
      deliveryDateSUtil: "Date de livraison",
      pickupLocationSUtil: "Lieu de prise en charge",
      deliveryLocationSUtil: "Lieu de livraison",
      amountSUtil: "Quantité",
      sendOfferSUtil: "Envoyer l’offre",
      bookNowSUtil: "Réservez maintenant",
      noDataSUtil: "Aucune donnée",

      nameSUtil: "Nom",
      orderCodeSUtil: "Code de commande",

      //
      searchLoadSUtil: "Charge de recherche",
      advanceFilterSUtil: "Filtre avancé",
      originCitySUtil: "Ville d’origine",
      deliveryCitySUtil: "Ville de livraison",
      driverTypeSUtil: "Type de pilote",
      equipmentTypeSUtil: "Type d’équipement",
      applyFilterSUtil: "Appliquer le filtre",

      //

      noteSUtil: "Notes",
      rejectThisLoadSUtil: "Rejeter cette charge ?",
      cancelSUtil: "Annuler",
      successSUtil: "Succès!",
      failedSUtil: "Raté!",
      wentWrongSUtil: "Quelque chose s’est mal passé",
      loadBookedSUtil: "Votre chargement a été réservé",
      loadRejectedSUtil: "Chargement rejeté avec succès",

      //

      alertSUtil: "Alerte!",
      sureRejectLoadSUtil:
      "Êtes-vous sûr de vouloir rejeter cette charge ?\n",
      loadExpiredSUtil: "Cette charge a expiré!",
      orderDetailSUtil: "Détails de la commande",
      deliveryStatusSUtil: "État de la livraison",
      sellerNameSUtil: "Nom du vendeur",
      assignedDateSUtil: "Date attribuée",
      loadTypeSUtil: "Type de charge",
      loadWeightSUtil: "Poids de la charge",
      weightTypeSUtil: "Type de poids",
      freightTypeSUtil: "Paiement du fret",
      pickupLongitudeSUtil: "Longitude de ramassage",
      pickupLatitudeSUtil: "Latitude de ramassage",
      deliveryLongitudeSUtil: "Longitude de livraison",
      deliveryLatitudeSUtil: "Latitude de livraison",

//

      withdrawHistorySUtil: "Historique de retrait",
      earningHistorySUtil: "Historique des gains",
      walletAmountSUtil: "Montant du portefeuille",
      withdrawSUtil: "Retirer",
      myEarningsSUtil: "Mes gains",
      askAmountSUtil: "Montant demandé",
      dateSUtil: "Date",
      idSUtil: "Id",
      requestedAmountSUtil: "Montant demandé",
      recieivedAmountSUtil: "Montant reçu",
      paymentStatusSUtil: "État du paiement",
      paymentTypeSUtil: "Type de paiement",
      bankNameSUtil: "Nom de la banque",
      beneficiarySUtil: "Bénéficiaire",
      typeSUtil: "Type",
      descriptionSUtil: "Description",
      sendRequestSUtil: "Envoyer une demande",
      selectPaymentOptSUtil: "Veuillez sélectionner une option de paiement",

      //

      withdrawRequestSUtil: "Demande de retrait",
      accountNumberSUtil: "Numéro de compte",
      bankPaymentSUtil: "Paiement bancaire",
      mobilePaymentSUtil: "Paiement mobile",

      //

      updateSUtil: "Mettre à jour",
      deleteAccountSUtil: "Supprimer un compte",
      updateFailedSUtil: "mise à jour Echec !",
      uploadDocumentsSUtil: "Veuillez télécharger tous les documents",
      deleteAccountPerSUtil: "Supprimer définitivement le compte ?",
      deleteSUtil: "Supprimer",
      accountDeleteSuccSUtil: "Compte supprimé avec succès",
      sureDeleteAccPerSUtil:
      "Voulez-vous vraiment supprimer définitivement votre compte ?\n'",
      wontRecoverAccountSUtil:
      "Vous ne pourrez pas récupérer vos données si le Compte est supprimé.",
      imgIdFrontSUtil: "Recto de la carte d’identité",
      imgIdBackSUtil: "Dos de la carte d’identité",
      imgVehicleRegSUtil: "Immatriculation du véhicule",
      imgVehiclePlateSUtil: "Véhicule sans plaque",
      imgVehicleInsuranceSUtil: "Assurance véhicule",
      imgCargoInsuranceSUtil: "Assurance des marchandises",
      imgProfilePicSUtil: "Photo de profil",

      //

      myDeliveriesSUtil: "Mes livraisons",
      confirmedSUtil: "Confirmé",
      pickedUpSUtil: "Ramassé",
      deliveredSUtil: "Livré",
      startSUtil: "Commencer",
      allowLocationSUtil:
      "Dans l’écran suivant, il vous sera demandé des autorisations sur les services « Location », qui sont requis pour la fonctionnalité de livraison.\n\nRemarque : nous utilisons les données de localisation de votre appareil lorsque l’application est au premier plan ou même en « arrière-plan » pour que la fonction de diffusion fonctionne correctement.",
      confirmedStatusSUtil: "confirmé",
      myDeliveriesPickUpSUtil: "Pick-up",
      pickedUpStatusSUtil: "picked_up",
      myDeliveriesDeliverySUtil: "Livraison",
      deliveredStatusSUtil: "livré",
//Todo 3-march-23

      markAsArrivedSUtil: "Marquer comme arrivé",
      startDriveSUtil: "Démarrer Drive",
      startPickUpSUtil: "Commencer le ramassage",
      startDeliverySUtil: "Commencer la livraison",


      startPickUpInfoSUtil : "Conduisez jusqu’à votre lieu de prise en charge",
      startDeliveryInfoSUtil : "Conduisez jusqu’à votre lieu de livraison",
      completePickUpInfoSUtil : "Pour compléter votre enlèvement :",
      completeDeliveryInfoSUtil : "Pour compléter votre Livraison :",



      directionDisclaimerSUtil:
      "Conduisez prudemment et suivez les panneaux de signalisation et les règles de circulation. Google Maps (Navigation) est seulement pour vous aider, il peut ne pas fournir les meilleures informations parfois. MoyenXpress ne peut être tenu responsable de toute erreur d’orientation, de détournement erroné ou d’information trompeuse.",

      attachProofImageSUtil: "Joindre des images d’épreuve",
      attachProofImageAlertSUtil:
      "Veuillez télécharger des images d’épreuve",
      proofImageSUtil: "Image de preuve",

      //

      uploadImageFromSUtil: "Télécharger l’image à partir de",
      cameraSUtil: "Caméra",
      gallerySUtil: "Galerie",

      //

      notificationSUtil: "Notifications",
      todaySUtil: "Aujourd’hui",
      yesterdaySUtil: "Hier",
      offeredLoadsSUtil: "Commandes proposées",
      noDataFoundSUtil: "Aucune donnée trouvée",
      backSUtil: "Précédent",
      openLoadsSUtil: "Chargements ouverts",
      dashboardSUtil: "Tableau de bord",
      walletEarningSUtil: "Portefeuille et gains",
      myProfileSUtil: "Mon profil",
      yesSUtil: "Oui",
      noSUtil: "Non",
      exitAppSUtil: "Exit l’application!",
      sureExitAppSUtil: "Êtes-vous sûr de vouloir quitter?",

      //

      logoutSUtil: "Déconnexion",
      settingsSUtil: "Paramètres",
      availableSUtil: "Disponible",
      notAvailableSUtil: "Non disponible",
      selectLanguageSUtil: "Sélectionner une langue",

      //

      ratingReviewsSUtil: "Note et avis",
      payOutDetailSUtil: "Détails du paiement",
      selectCurrencySUtil: "Sélectionnez la devise",
      ratingAndReviewsSUtil: "Notes et avis",
      totalReviewsSUtil: "Total Examen",
      ratingSUtil: "Notation",
      bankDetailsSUtil: "Coordonnées bancaires",
      bankRoutingNumberSUtil: "Numéro d’acheminement bancaire",

      //
      bankSwiftCodeSUtil: "Code bancaire Swift",
      bankAddressSUtil: "Adresse de la banque",
      mobilePaymentDetailsSUtil: "Détails du paiement mobile",
      paymentAccountCountrySUtil: "Pays du compte de paiement",
      paymentCountryNameSUtil: "Nom de la société de paiement",

      //
      loginFailedSUtil: "Échec de la connexion!",
      verifyEmailSUtil: "Vérifier votre adresse e-mail",
      verifySUtil: "Vérifier",
      updatePassSUtil: "Mettre à jour le Pass",
      verificationCodeSUtil: "Code de vérification",
      newPassSUtil: "Nouveau mot de passe",
      okSUtil: "D’accord",
      grantLocationPerSUtil:
      "Vous ne pouvez pas aller plus loin sans accorder des autorisations de localisation.",
      androidLocationPerSettingSUtil:
      "Remarque : vous pouvez toujours modifier les paramètres d’autorisation à partir des paramètres de l’application > des autorisations > de l’emplacement.",
      iosLocationPerSettingSUtil:
      "Remarque : Vous pouvez toujours modifier les paramètres d’autorisation à partir de :\n 1. Définir > confidentialité > activer les services de localisation. \n 2. L’application du pilote > « lors de l’utilisation de l’application » ou « toujours ».",

      //

      validEmailSUtil: "Fournir une adresse e-mail valide",
      requiredSUtil: "Obligatoire",
      isRequiredSUtil: "est obligatoire",
      passwordLengthSUtil:
      "Le mot de passe doit comporter au moins 6 caractères",

      //

      passNotMatchSUtil: "Le mot de passe ne correspond pas!",
      supportSUtil: "Soutien",
      writeMessageSUtil: "Rédigez votre message",
    },
    "es_ES": {
      createAccountSUtil: "Crear cuenta",
      emailSUtil: "Correo electrónico",
      contactNoSUtil: "Número de contacto",
      fullNameSUtil: "Nombre completo",
      addressSUtil: "Dirección",
      selectCountrySUtil: "Seleccionar país",
      selectStateSUtil: "Seleccionar estado",
      selectCitySUtil: "Seleccionar ciudad",
      passSUtil: "Contraseña",
      confirmPassSUtil: "Confirmar contraseña",
      vehicleTypeSUtil: "Tipo de vehículo",
      registerSUtil: "Registro",
      loginSUtil: "Iniciar sesión",
      alreadyAccountSUtil: "Ya tienes una cuenta ",
      uploadSUtil: "Upload",
      //

      getStartedSUtil: "Comencemos",
      signInSUtil: "Inicia sesión",
      continueFbSUtil: "Continuar con facebook",
      continueGoogleSUtil: "Continuar con google",
      orSUtil: "o",
      noAccountSUtil: "No tienes una cuenta? ",
      //
      loginAccountSUtil: "Cuenta de inicio de sesión",
      rememberMeSUtil: "Recuérdame",
      forgotPassSUtil: "Olvidar contraseña",
      //

      assignedLoadSUtil: "Carga asignada",
      recentOrdersSUtil: "Pedidos recientes",
      activeSUtil: "Activo",
      nonActiveSUtil: "No activo",
      verificationStatusSUtil: "Verificación\nEstado",
      accountStatusSUtil: "Cuenta\nEstado",
      completedOrderSUtil: "Completado\nÓrdenes",
      pendingOrderSUtil: "Pendiente\nÓrdenes",
      viewAllSUtil: "Ver todo ",
      rejectSUtil: "Rechazar",

      //

      orderIdSUtil: "ID del pedido",
      pickupDateSUtil: "Fecha de recogida",
      deliveryDateSUtil: "Fecha de entrega",
      pickupLocationSUtil: "Lugar de recogida",
      deliveryLocationSUtil: "Lugar de entrega",
      amountSUtil: "Importe",
      sendOfferSUtil: "Enviar oferta",
      bookNowSUtil: "Reservar Ahora",
      noDataSUtil: "Sin datos",
      nameSUtil: "Nombre",
      orderCodeSUtil: "Código de pedido",

      //
      searchLoadSUtil: "Carga de búsqueda",
      advanceFilterSUtil: "Filtro avanzado",
      originCitySUtil: "Ciudad de origen",
      deliveryCitySUtil: "Ciudad de entrega",
      driverTypeSUtil: "Tipo de controlador",
      equipmentTypeSUtil: "Tipo de equipo",
      applyFilterSUtil: "Aplicar filtro",

      //
      noteSUtil: "Notas",
      rejectThisLoadSUtil: "Rechazar esta carga?",
      cancelSUtil: "Cancelar",
      successSUtil: "¡Éxito!",
      failedSUtil: "¡Fracasado!",
      wentWrongSUtil: "Algo salió mal",
      loadBookedSUtil: "Su carga ha sido reservada",
      loadRejectedSUtil: "Carga rechazada correctamente",

      //

      alertSUtil: "Alerta!",
      sureRejectLoadSUtil:
      "Está seguro de que desea rechazar esta carga?\n",
      loadExpiredSUtil: "Esta carga ha caducado!",
      orderDetailSUtil: "Detalles del pedido",
      deliveryStatusSUtil: "Estado de entrega",
      sellerNameSUtil: "Nombre del vendedor",
      assignedDateSUtil: "Fecha asignada",
      loadTypeSUtil: "Tipo de carga",
      loadWeightSUtil: "Peso de la carga",
      weightTypeSUtil: "Tipo de peso",
      freightTypeSUtil: "Pago de flete",
      pickupLongitudeSUtil: "Longitud de recogida",
      pickupLatitudeSUtil: "Latitud de recogida",
      deliveryLongitudeSUtil: "Longitud de entrega",
      deliveryLatitudeSUtil: "Latitud de entrega",

      //

      withdrawHistorySUtil: "Historial de retiros",
      earningHistorySUtil: "Historial de ganancias",
      walletAmountSUtil: "Monto de la billetera",
      withdrawSUtil: "Retirar",
      myEarningsSUtil: "Mis ganancias",
      askAmountSUtil: "Pedir cantidad",
      dateSUtil: "Fecha",
      idSUtil: "Identificación",
      requestedAmountSUtil: "Cantidad solicitada",
      recieivedAmountSUtil: "Cantidad recibida",
      paymentStatusSUtil: "Estado del pago",
      paymentTypeSUtil: "Tipo de pago",
      bankNameSUtil: "Nombre del banco",
      beneficiarySUtil: "Beneficiario",
      typeSUtil: "Tipo",
      descriptionSUtil: "Descripción",
      sendRequestSUtil: "Enviar solicitud",
      selectPaymentOptSUtil: "Seleccione una opción de pago",

      //
      withdrawRequestSUtil: "Solicitud de retiro",
      accountNumberSUtil: "Número de cuenta",
      bankPaymentSUtil: "Pago bancario",
      mobilePaymentSUtil: "Pago móvil",

      //

      updateSUtil: "Actualizar",
      deleteAccountSUtil: "Eliminar cuenta",
      updateFailedSUtil: "actualización ¡Falló!",
      uploadDocumentsSUtil: "Por favor, cargue todos los documentos",
      deleteAccountPerSUtil: "¿Eliminar cuenta permanentemente?",
      deleteSUtil: "Borrar",
      accountDeleteSuccSUtil: "Cuenta eliminada correctamente",
      sureDeleteAccPerSUtil:
      "¿Está seguro de que desea eliminar su cuenta de forma permanente?\n'",
      wontRecoverAccountSUtil:
      "No podrá recuperar sus datos si se elimina la cuenta.",
      imgIdFrontSUtil: "Tarjeta de identificación frontal",
      imgIdBackSUtil: "Tarjeta de identificación Volver",
      imgVehicleRegSUtil: "Matrículas",
      imgVehiclePlateSUtil: "Vehículo sin placa",
      imgVehicleInsuranceSUtil: "Seguro de vehículo",
      imgCargoInsuranceSUtil: "Seguro de carga",
      imgProfilePicSUtil: "foto de perfil",

      //

      myDeliveriesSUtil: "Mis entregas",
      confirmedSUtil: "Empedernido",
      pickedUpSUtil: "Recogido",
      deliveredSUtil: "Entregado",
      startSUtil: "Empezar",
      allowLocationSUtil:
      "En la siguiente pantalla se le pedirán permisos sobre los servicios de \"Ubicación\", que son necesarios para la funcionalidad de entrega.\n\nNota: Utilizamos los datos de ubicación de su dispositivo mientras la aplicación está en primer plano o incluso en \"Segundo plano\" para que la función de entrega funcione sin problemas.",
      confirmedStatusSUtil: "empedernido",
      myDeliveriesPickUpSUtil: "Recogida",
      pickedUpStatusSUtil: "picked_up",
      myDeliveriesDeliverySUtil: "Entrega",
      deliveredStatusSUtil: "entregado",
//Todo 3-march-23

      markAsArrivedSUtil: "Marcar como llegó",
      startDriveSUtil: "Iniciar unidad",
      startPickUpSUtil: "Iniciar recogida",
      startDeliverySUtil: "Iniciar entrega",


      startPickUpInfoSUtil : "Conduzca hasta su lugar de recogida",
      startDeliveryInfoSUtil : "Conduzca hasta su lugar de entrega",
      completePickUpInfoSUtil : "Para completar su recogida:",
      completeDeliveryInfoSUtil : "Para completar su entrega:",


      directionDisclaimerSUtil:
      "Conduzca con cuidado y siga las señales de tráfico y las normas de tráfico. Google Maps (Navegación) es solo para ayudarlo, es posible que no proporcione la mejor información algunas veces. MoyenXpress no se hace responsable de ninguna mala dirección, giros equivocados o información engañosa.",

      attachProofImageSUtil: "Adjuntar imágenes de prueba",
      attachProofImageAlertSUtil: "Por favor, cargue imágenes de prueba",
      proofImageSUtil: "Imagen de prueba",

      //

      uploadImageFromSUtil: "Subir imagen desde",
      cameraSUtil: "Cámara",
      gallerySUtil: "Galería",

      //
      notificationSUtil: "Notificaciones",
      todaySUtil: "Hoy",
      yesterdaySUtil: "Ayer",
      offeredLoadsSUtil: "Pedidos ofrecidos",
      noDataFoundSUtil: "No se encontraron datos",
      backSUtil: "Atrás",
      openLoadsSUtil: "Cargas abiertas",
      dashboardSUtil: "Salpicadero",
      walletEarningSUtil: "Monedero y ganancias",
      myProfileSUtil: "Mi perfil",
      yesSUtil: "Sí",
      noSUtil: "No",
      exitAppSUtil: "¡Salir de la aplicación!",
      sureExitAppSUtil: "Estás seguro de que quieres salir?",

      //
      logoutSUtil: "Cerrar sesión",
      settingsSUtil: "Configuración",
      availableSUtil: "Disponible",
      notAvailableSUtil: "No disponible",
      selectLanguageSUtil: "Seleccionar idioma",

      ratingReviewsSUtil: "Calificación y reseñas",
      payOutDetailSUtil: "Detalle del pago",
      selectCurrencySUtil: "Seleccionar moneda",
      ratingAndReviewsSUtil: "Calificaciones y reseñas",
      totalReviewsSUtil: "Revisión total",
      ratingSUtil: "Clasificación",
      bankDetailsSUtil: "Datos bancarios",
      bankRoutingNumberSUtil: "Número de ruta bancaria",

      //

      bankSwiftCodeSUtil: "Código Swift del Banco",
      bankAddressSUtil: "Dirección del banco",
      mobilePaymentDetailsSUtil: "Detalles del pago móvil",
      paymentAccountCountrySUtil: "País de la cuenta de pago",
      paymentCountryNameSUtil: "Nombre de la empresa de pago",

      //

      loginFailedSUtil: "¡Error al iniciar sesión!",
      verifyEmailSUtil: "Verifica tu correo electrónico",
      verifySUtil: "Verificar",
      updatePassSUtil: "Pase de actualización",
      verificationCodeSUtil: "Código de verificación",
      newPassSUtil: "Nueva contraseña",
      okSUtil: "De acuerdo",
      grantLocationPerSUtil:
      "No puede continuar sin otorgar permisos de ubicación.",
      androidLocationPerSettingSUtil:
      "Nota: Siempre puedes cambiar la configuración de permisos desde la configuración de la aplicación > los permisos > ubicación.",
      iosLocationPerSettingSUtil:
      "Nota: Siempre puedes cambiar la configuración de permisos desde:\n 1. Configuración > privacidad > habilitar los servicios de ubicación. \n 2. La aplicación del conductor > \"mientras usa la aplicación\" o \"siempre\".",

      //

      validEmailSUtil: "Proporcionar un correo electrónico válido",
      requiredSUtil: "Obligatorio",
      isRequiredSUtil: "Se requiere",
      passwordLengthSUtil: "La contraseña debe tener al menos 6 caracteres",

      //
      passNotMatchSUtil: "¡La contraseña no coincide!",
      supportSUtil: "Apoyo",
      writeMessageSUtil: "Escribe tu mensaje",
    },
  };
}




//




//eng
//URDU
//french
//spanish,