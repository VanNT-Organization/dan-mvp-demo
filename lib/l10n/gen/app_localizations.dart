import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart' deferred as app_localizations_en;

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @lbl_treinei.
  ///
  /// In en, this message translates to:
  /// **'TREINEI'**
  String get lbl_treinei;

  /// No description provided for @lbl_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get lbl_sign_in;

  /// No description provided for @lbl_input_account_guide.
  ///
  /// In en, this message translates to:
  /// **'Please enter your account details to log in.'**
  String get lbl_input_account_guide;

  /// No description provided for @lbl_user_name.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get lbl_user_name;

  /// No description provided for @lbl_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get lbl_password;

  /// No description provided for @lbl_sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get lbl_sign_up;

  /// No description provided for @lbl_forgot_pass.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get lbl_forgot_pass;

  /// No description provided for @lbl_sign_up_apple.
  ///
  /// In en, this message translates to:
  /// **'Sign up with Apple'**
  String get lbl_sign_up_apple;

  /// No description provided for @lbl_sign_in_facebook.
  ///
  /// In en, this message translates to:
  /// **'Continue with Facebook'**
  String get lbl_sign_in_facebook;

  /// No description provided for @lbl_new_customer.
  ///
  /// In en, this message translates to:
  /// **'New customer?'**
  String get lbl_new_customer;

  /// No description provided for @lbl_register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get lbl_register;

  /// No description provided for @lbl_add_photo.
  ///
  /// In en, this message translates to:
  /// **'Add your photo'**
  String get lbl_add_photo;

  /// No description provided for @lbl_full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get lbl_full_name;

  /// No description provided for @lbl_full_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get lbl_full_email;

  /// No description provided for @lbl_document.
  ///
  /// In en, this message translates to:
  /// **'Document'**
  String get lbl_document;

  /// No description provided for @lbl_crep.
  ///
  /// In en, this message translates to:
  /// **'CREP'**
  String get lbl_crep;

  /// No description provided for @lbl_zip_code.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get lbl_zip_code;

  /// No description provided for @lbl_city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get lbl_city;

  /// No description provided for @lbl_street.
  ///
  /// In en, this message translates to:
  /// **'Street'**
  String get lbl_street;

  /// No description provided for @lbl_number.
  ///
  /// In en, this message translates to:
  /// **'Number'**
  String get lbl_number;

  /// No description provided for @lbl_complement.
  ///
  /// In en, this message translates to:
  /// **'Complement'**
  String get lbl_complement;

  /// No description provided for @lbl_ddd.
  ///
  /// In en, this message translates to:
  /// **'DDD'**
  String get lbl_ddd;

  /// No description provided for @lbl_telephone.
  ///
  /// In en, this message translates to:
  /// **'Telephone'**
  String get lbl_telephone;

  /// No description provided for @lbl_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get lbl_next;

  /// No description provided for @lbl_mmc.
  ///
  /// In en, this message translates to:
  /// **'MMC'**
  String get lbl_mmc;

  /// No description provided for @lbl_gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get lbl_gender;

  /// No description provided for @lbl_weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get lbl_weight;

  /// No description provided for @lbl_zipcode.
  ///
  /// In en, this message translates to:
  /// **'Zip Code'**
  String get lbl_zipcode;

  /// No description provided for @lbl_state.
  ///
  /// In en, this message translates to:
  /// **'State'**
  String get lbl_state;

  /// No description provided for @lbl_objective.
  ///
  /// In en, this message translates to:
  /// **'Objective'**
  String get lbl_objective;

  /// No description provided for @lbl_add_video.
  ///
  /// In en, this message translates to:
  /// **'Add your video'**
  String get lbl_add_video;

  /// No description provided for @lbl_about_me.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get lbl_about_me;

  /// No description provided for @lbl_your_des.
  ///
  /// In en, this message translates to:
  /// **'Add your description'**
  String get lbl_your_des;

  /// No description provided for @lbl_graduation.
  ///
  /// In en, this message translates to:
  /// **'Graduation'**
  String get lbl_graduation;

  /// No description provided for @lbl_your_training.
  ///
  /// In en, this message translates to:
  /// **'Add your training and courses'**
  String get lbl_your_training;

  /// No description provided for @lbl_social_media.
  ///
  /// In en, this message translates to:
  /// **'Social media'**
  String get lbl_social_media;

  /// No description provided for @lbl_price.
  ///
  /// In en, this message translates to:
  /// **'Price per hour'**
  String get lbl_price;

  /// No description provided for @lbl_minimum.
  ///
  /// In en, this message translates to:
  /// **'Minimum'**
  String get lbl_minimum;

  /// No description provided for @lbl_maximum.
  ///
  /// In en, this message translates to:
  /// **'Maximum'**
  String get lbl_maximum;

  /// No description provided for @lbl_specialties.
  ///
  /// In en, this message translates to:
  /// **'Specialties'**
  String get lbl_specialties;

  /// No description provided for @lbl_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get lbl_description;

  /// No description provided for @lbl_register_success.
  ///
  /// In en, this message translates to:
  /// **'Registration successfully Complete'**
  String get lbl_register_success;

  /// No description provided for @lbl_link_to_email.
  ///
  /// In en, this message translates to:
  /// **'A confirmation link was sent to your email'**
  String get lbl_link_to_email;

  /// No description provided for @lbl_go_to_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Go to login'**
  String get lbl_go_to_sign_in;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return lookupAppLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

Future<AppLocalizations> lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return app_localizations_en.loadLibrary().then((dynamic _) => app_localizations_en.AppLocalizationsEn());
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
