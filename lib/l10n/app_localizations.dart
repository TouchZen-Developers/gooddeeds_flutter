import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @myCart.
  ///
  /// In en, this message translates to:
  /// **'My Cart'**
  String get myCart;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get myProfile;

  /// No description provided for @donaitingHomeHeader.
  ///
  /// In en, this message translates to:
  /// **'Take action and support families in need today.'**
  String get donaitingHomeHeader;

  /// No description provided for @recentEvents.
  ///
  /// In en, this message translates to:
  /// **'Recent Events'**
  String get recentEvents;

  /// No description provided for @helpFamilyNearYou.
  ///
  /// In en, this message translates to:
  /// **'Help Family Near You'**
  String get helpFamilyNearYou;

  /// No description provided for @recentlyAffected.
  ///
  /// In en, this message translates to:
  /// **'Recently Affected'**
  String get recentlyAffected;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get seeAll;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clearAll;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @noFamilyFound.
  ///
  /// In en, this message translates to:
  /// **'No family found'**
  String get noFamilyFound;

  /// No description provided for @noFamilyFoundDesc.
  ///
  /// In en, this message translates to:
  /// **'Please update your filters and try again'**
  String get noFamilyFoundDesc;

  /// No description provided for @updateFilters.
  ///
  /// In en, this message translates to:
  /// **'Update filters'**
  String get updateFilters;

  /// No description provided for @familyDetails.
  ///
  /// In en, this message translates to:
  /// **'Family Details'**
  String get familyDetails;

  /// No description provided for @peoples.
  ///
  /// In en, this message translates to:
  /// **'Peoples'**
  String get peoples;

  /// No description provided for @desiredItems.
  ///
  /// In en, this message translates to:
  /// **'Desired Items'**
  String get desiredItems;

  /// No description provided for @familyStory.
  ///
  /// In en, this message translates to:
  /// **'Family Story'**
  String get familyStory;

  /// No description provided for @receivedItems.
  ///
  /// In en, this message translates to:
  /// **'Received Items'**
  String get receivedItems;

  /// No description provided for @donatedBy.
  ///
  /// In en, this message translates to:
  /// **'Donated by'**
  String get donatedBy;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @subTotal.
  ///
  /// In en, this message translates to:
  /// **'Sub Total'**
  String get subTotal;

  /// No description provided for @taxesPlusFees.
  ///
  /// In en, this message translates to:
  /// **'Taxes + Fees'**
  String get taxesPlusFees;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @sendMessageForTheFamily.
  ///
  /// In en, this message translates to:
  /// **'Send a Message for the Family'**
  String get sendMessageForTheFamily;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @creditCard.
  ///
  /// In en, this message translates to:
  /// **'Credit Card'**
  String get creditCard;

  /// No description provided for @applePay.
  ///
  /// In en, this message translates to:
  /// **'Apple Pay'**
  String get applePay;

  /// No description provided for @orderNow.
  ///
  /// In en, this message translates to:
  /// **'Order Now'**
  String get orderNow;

  /// No description provided for @eventDetails.
  ///
  /// In en, this message translates to:
  /// **'Event Details'**
  String get eventDetails;

  /// No description provided for @affectedFamiles.
  ///
  /// In en, this message translates to:
  /// **'Affected Familes'**
  String get affectedFamiles;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @enterYourPersonalInformation.
  ///
  /// In en, this message translates to:
  /// **'Enter your personal information'**
  String get enterYourPersonalInformation;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get emailAddress;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get enterPassword;

  /// No description provided for @confirmPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPasswordTitle;

  /// No description provided for @confirmPasswordSub.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPasswordSub;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend code'**
  String get resendCode;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// Text before the email in verify screen
  ///
  /// In en, this message translates to:
  /// **'Enter the 4-digit code we sent to'**
  String get verifyCodePrefix;

  /// Text after the email in verify screen
  ///
  /// In en, this message translates to:
  /// **'to confirm your email.'**
  String get verifyCodeSuffix;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Log In'**
  String get login;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @registerChoiceLoginPrefix.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get registerChoiceLoginPrefix;

  /// No description provided for @infoWelcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to goodDeeds'**
  String get infoWelcomeTitle;

  /// No description provided for @infoWelcomeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Make an impact today!'**
  String get infoWelcomeSubtitle;

  /// No description provided for @infoFamiliesTitle.
  ///
  /// In en, this message translates to:
  /// **'Families In Need'**
  String get infoFamiliesTitle;

  /// No description provided for @infoFamiliesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Help real families that need you!'**
  String get infoFamiliesSubtitle;

  /// No description provided for @infoInstantTitle.
  ///
  /// In en, this message translates to:
  /// **'Instant Delivery'**
  String get infoInstantTitle;

  /// No description provided for @infoInstantSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Food and supplies delivered directly to families in need.'**
  String get infoInstantSubtitle;

  /// No description provided for @registerChoiceNeed.
  ///
  /// In en, this message translates to:
  /// **'In Need Of Donations'**
  String get registerChoiceNeed;

  /// No description provided for @registerChoiceHelp.
  ///
  /// In en, this message translates to:
  /// **'Are you in need of donations, or are you looking to help families in need?'**
  String get registerChoiceHelp;

  /// No description provided for @registerChoiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Looking To Help Families In Need'**
  String get registerChoiceTitle;

  /// No description provided for @signupWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign up with Google'**
  String get signupWithGoogle;

  /// No description provided for @signupWithEmail.
  ///
  /// In en, this message translates to:
  /// **'Sign up with Email'**
  String get signupWithEmail;

  /// No description provided for @signupWithApple.
  ///
  /// In en, this message translates to:
  /// **'Sign up with Apple'**
  String get signupWithApple;

  /// No description provided for @firstNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'First name is required'**
  String get firstNameIsRequired;

  /// No description provided for @lastNameIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Last name is required'**
  String get lastNameIsRequired;

  /// No description provided for @enterFamilyMembersCount.
  ///
  /// In en, this message translates to:
  /// **'Enter family members count'**
  String get enterFamilyMembersCount;

  /// No description provided for @enterValidNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid number'**
  String get enterValidNumber;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @enterYourFirstName.
  ///
  /// In en, this message translates to:
  /// **'Enter your first name'**
  String get enterYourFirstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @enterYourLastName.
  ///
  /// In en, this message translates to:
  /// **'Enter your last name'**
  String get enterYourLastName;

  /// No description provided for @howManyAreInYourFamily.
  ///
  /// In en, this message translates to:
  /// **'How many are in your family?'**
  String get howManyAreInYourFamily;

  /// No description provided for @enterAmount.
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get enterAmount;

  /// No description provided for @addressIsRequired.
  ///
  /// In en, this message translates to:
  /// **'Address is required'**
  String get addressIsRequired;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number'**
  String get enterPhoneNumber;

  /// No description provided for @enterCity.
  ///
  /// In en, this message translates to:
  /// **'Enter City'**
  String get enterCity;

  /// No description provided for @enterState.
  ///
  /// In en, this message translates to:
  /// **'Enter State'**
  String get enterState;

  /// No description provided for @enterZipCode.
  ///
  /// In en, this message translates to:
  /// **'Enter Zip code'**
  String get enterZipCode;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @enterAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter Address'**
  String get enterAddress;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get state;

  /// No description provided for @zipCode.
  ///
  /// In en, this message translates to:
  /// **'Zip code'**
  String get zipCode;

  /// No description provided for @affectedEvents.
  ///
  /// In en, this message translates to:
  /// **'Affected Events'**
  String get affectedEvents;

  /// No description provided for @haveYouBeenAffectedQuestion.
  ///
  /// In en, this message translates to:
  /// **'Have you been affected by any of the following events?'**
  String get haveYouBeenAffectedQuestion;

  /// No description provided for @chooseEvent.
  ///
  /// In en, this message translates to:
  /// **'Choose Event'**
  String get chooseEvent;

  /// No description provided for @statement.
  ///
  /// In en, this message translates to:
  /// **'Statement'**
  String get statement;

  /// No description provided for @explainStatementHint.
  ///
  /// In en, this message translates to:
  /// **'Explain in a few sentences your family story and why you need help...'**
  String get explainStatementHint;

  /// No description provided for @pleaseChooseAnEvent.
  ///
  /// In en, this message translates to:
  /// **'Please choose an event'**
  String get pleaseChooseAnEvent;

  /// No description provided for @pleaseWriteAtLeast10Characters.
  ///
  /// In en, this message translates to:
  /// **'Please write at least 10 characters'**
  String get pleaseWriteAtLeast10Characters;

  /// No description provided for @eventCaliforniaWildfires.
  ///
  /// In en, this message translates to:
  /// **'California Wildfires'**
  String get eventCaliforniaWildfires;

  /// No description provided for @eventKentuckyFloods.
  ///
  /// In en, this message translates to:
  /// **'Kentucky Floods'**
  String get eventKentuckyFloods;

  /// No description provided for @eventHurricaneFiona.
  ///
  /// In en, this message translates to:
  /// **'Hurricane Fiona'**
  String get eventHurricaneFiona;

  /// No description provided for @eventInflation.
  ///
  /// In en, this message translates to:
  /// **'Inflation'**
  String get eventInflation;

  /// No description provided for @eventCovid19.
  ///
  /// In en, this message translates to:
  /// **'Covid-19'**
  String get eventCovid19;

  /// No description provided for @eventUnemployment.
  ///
  /// In en, this message translates to:
  /// **'Unemployment'**
  String get eventUnemployment;

  /// No description provided for @emailRequired.
  ///
  /// In en, this message translates to:
  /// **'Email is required'**
  String get emailRequired;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get passwordRequired;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @enterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get enterValidEmail;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Login to continue using the app'**
  String get loginSubtitle;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @passwordMinChars.
  ///
  /// In en, this message translates to:
  /// **'Use at least 6 characters'**
  String get passwordMinChars;

  /// No description provided for @confirmPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Please re-enter password'**
  String get confirmPasswordRequired;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @familyPhoto.
  ///
  /// In en, this message translates to:
  /// **'Family Photo'**
  String get familyPhoto;

  /// No description provided for @uploadPhoto.
  ///
  /// In en, this message translates to:
  /// **'Upload Photo'**
  String get uploadPhoto;

  /// No description provided for @uploadingPhotos.
  ///
  /// In en, this message translates to:
  /// **'Uploading photos..'**
  String get uploadingPhotos;

  /// No description provided for @deleting.
  ///
  /// In en, this message translates to:
  /// **'Deleting...'**
  String get deleting;

  /// No description provided for @fromGallery.
  ///
  /// In en, this message translates to:
  /// **'From gallery'**
  String get fromGallery;

  /// No description provided for @openCamera.
  ///
  /// In en, this message translates to:
  /// **'Open camera'**
  String get openCamera;

  /// No description provided for @replacePhoto.
  ///
  /// In en, this message translates to:
  /// **'Replace photo'**
  String get replacePhoto;

  /// No description provided for @deletePhoto.
  ///
  /// In en, this message translates to:
  /// **'Delete photo'**
  String get deletePhoto;

  /// No description provided for @editPhoto.
  ///
  /// In en, this message translates to:
  /// **'Edit photo'**
  String get editPhoto;

  /// No description provided for @submittingApplication.
  ///
  /// In en, this message translates to:
  /// **'Submitting Application'**
  String get submittingApplication;

  /// No description provided for @applicationPending.
  ///
  /// In en, this message translates to:
  /// **'Application Pending'**
  String get applicationPending;

  /// No description provided for @applicationPendingDesc.
  ///
  /// In en, this message translates to:
  /// **'Approval by the admin takes 1-2 days, and you\'ll get an email once accepted.'**
  String get applicationPendingDesc;

  /// No description provided for @forgotPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPasswordTitle;

  /// No description provided for @forgotPasswordDesc.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry! It happens. Please enter the email address linked with your account.'**
  String get forgotPasswordDesc;

  /// No description provided for @sendCode.
  ///
  /// In en, this message translates to:
  /// **'Send Code'**
  String get sendCode;

  /// No description provided for @resetCodeSent.
  ///
  /// In en, this message translates to:
  /// **'Reset code sent to your email.'**
  String get resetCodeSent;

  /// No description provided for @failedToSendCode.
  ///
  /// In en, this message translates to:
  /// **'Failed to send code'**
  String get failedToSendCode;

  /// No description provided for @enterYourEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get enterYourEmail;

  /// No description provided for @otpVerificationTitle.
  ///
  /// In en, this message translates to:
  /// **'OTP Verification'**
  String get otpVerificationTitle;

  /// No description provided for @otpVerificationDesc.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code we just sent on your email address.'**
  String get otpVerificationDesc;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @didntReceiveCode.
  ///
  /// In en, this message translates to:
  /// **'Don’t received code?'**
  String get didntReceiveCode;

  /// No description provided for @invalidCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter a 4-digit code'**
  String get invalidCode;

  /// No description provided for @resend.
  ///
  /// In en, this message translates to:
  /// **'Resend'**
  String get resend;

  /// No description provided for @createNewPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Create new password'**
  String get createNewPasswordTitle;

  /// No description provided for @createNewPasswordDesc.
  ///
  /// In en, this message translates to:
  /// **'Your new password must be unique from those previously used.'**
  String get createNewPasswordDesc;

  /// No description provided for @newPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPasswordLabel;

  /// No description provided for @resetPasswordCta.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPasswordCta;

  /// No description provided for @resetPasswordSuccess.
  ///
  /// In en, this message translates to:
  /// **'Password reset successfully.'**
  String get resetPasswordSuccess;

  /// No description provided for @resetPasswordFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to reset password'**
  String get resetPasswordFailed;

  /// No description provided for @continueToHome.
  ///
  /// In en, this message translates to:
  /// **'Continue to Home'**
  String get continueToHome;

  /// No description provided for @uploadPhotoRequired.
  ///
  /// In en, this message translates to:
  /// **'Please upload a family photo to continue.'**
  String get uploadPhotoRequired;

  /// No description provided for @addToCard.
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get addToCard;

  /// No description provided for @payWith.
  ///
  /// In en, this message translates to:
  /// **'Pay With'**
  String get payWith;

  /// No description provided for @addNewCard.
  ///
  /// In en, this message translates to:
  /// **'Add New Card'**
  String get addNewCard;

  /// No description provided for @orderDetails.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get orderDetails;

  /// No description provided for @suppliesNeeded.
  ///
  /// In en, this message translates to:
  /// **'Supplies Needed'**
  String get suppliesNeeded;

  /// No description provided for @donatedItems.
  ///
  /// In en, this message translates to:
  /// **'Donated Items'**
  String get donatedItems;

  /// No description provided for @noteSentFor.
  ///
  /// In en, this message translates to:
  /// **'Note sent for {family}'**
  String noteSentFor(String family);

  /// No description provided for @noteReceived.
  ///
  /// In en, this message translates to:
  /// **'Note Received'**
  String get noteReceived;

  /// No description provided for @transaction.
  ///
  /// In en, this message translates to:
  /// **'Transaction'**
  String get transaction;

  /// No description provided for @orderID.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get orderID;

  /// No description provided for @totalPayment.
  ///
  /// In en, this message translates to:
  /// **'Total Payment'**
  String get totalPayment;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @expireDate.
  ///
  /// In en, this message translates to:
  /// **'Expire Date'**
  String get expireDate;

  /// No description provided for @securityCode.
  ///
  /// In en, this message translates to:
  /// **'Security Code'**
  String get securityCode;

  /// No description provided for @cardHolder.
  ///
  /// In en, this message translates to:
  /// **'Card Holder'**
  String get cardHolder;

  /// No description provided for @saveCardAsDefault.
  ///
  /// In en, this message translates to:
  /// **'Save card as default'**
  String get saveCardAsDefault;

  /// No description provided for @cardNumberHint.
  ///
  /// In en, this message translates to:
  /// **'1234 5678 9212'**
  String get cardNumberHint;

  /// No description provided for @expireDateHint.
  ///
  /// In en, this message translates to:
  /// **'MM/YY'**
  String get expireDateHint;

  /// No description provided for @securityCodeHint.
  ///
  /// In en, this message translates to:
  /// **'000'**
  String get securityCodeHint;

  /// No description provided for @cardHolderHint.
  ///
  /// In en, this message translates to:
  /// **'Enter card holder'**
  String get cardHolderHint;

  /// No description provided for @myAccount.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get myAccount;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @customerSupport.
  ///
  /// In en, this message translates to:
  /// **'Customer Support'**
  String get customerSupport;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs;

  /// No description provided for @aboutUnitedDeeds.
  ///
  /// In en, this message translates to:
  /// **'About United Deeds'**
  String get aboutUnitedDeeds;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsAndConditions;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get signOut;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @helpAndInformation.
  ///
  /// In en, this message translates to:
  /// **'Help & Information'**
  String get helpAndInformation;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @nowYouCanLogin.
  ///
  /// In en, this message translates to:
  /// **'Now you can login using the new password'**
  String get nowYouCanLogin;

  /// No description provided for @signInNow.
  ///
  /// In en, this message translates to:
  /// **'Sign In Now'**
  String get signInNow;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
