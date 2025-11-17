// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `App Name`
  String get app_name {
    return Intl.message('App Name', name: 'app_name', desc: '', args: []);
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `Something went wrong`
  String get error {
    return Intl.message(
      'Something went wrong',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone {
    return Intl.message('Phone Number', name: 'phone', desc: '', args: []);
  }

  /// `Enter your phone number`
  String get enter_phone {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_phone',
      desc: '',
      args: [],
    );
  }

  /// `Send Verification Code`
  String get send_code {
    return Intl.message(
      'Send Verification Code',
      name: 'send_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter the verification code`
  String get enter_code {
    return Intl.message(
      'Enter the verification code',
      name: 'enter_code',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend_code {
    return Intl.message('Resend Code', name: 'resend_code', desc: '', args: []);
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Login with phone number`
  String get login_with_phone {
    return Intl.message(
      'Login with phone number',
      name: 'login_with_phone',
      desc: '',
      args: [],
    );
  }

  /// `Logged in successfully`
  String get login_success {
    return Intl.message(
      'Logged in successfully',
      name: 'login_success',
      desc: '',
      args: [],
    );
  }

  /// `Verification failed. Try again.`
  String get login_failed {
    return Intl.message(
      'Verification failed. Try again.',
      name: 'login_failed',
      desc: '',
      args: [],
    );
  }

  /// `Verification code sent`
  String get code_sent {
    return Intl.message(
      'Verification code sent',
      name: 'code_sent',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number`
  String get invalid_phone {
    return Intl.message(
      'Invalid phone number',
      name: 'invalid_phone',
      desc: '',
      args: [],
    );
  }

  /// `Invalid code`
  String get invalid_code {
    return Intl.message(
      'Invalid code',
      name: 'invalid_code',
      desc: '',
      args: [],
    );
  }

  /// `Too many attempts. Try later.`
  String get too_many_attempts {
    return Intl.message(
      'Too many attempts. Try later.',
      name: 'too_many_attempts',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back`
  String get welcome_back {
    return Intl.message(
      'Welcome back',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get otp_title {
    return Intl.message(
      'Verification Code',
      name: 'otp_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code sent to your phone`
  String get otp_subtitle {
    return Intl.message(
      'Enter the code sent to your phone',
      name: 'otp_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `The code will expire soon`
  String get otp_timer {
    return Intl.message(
      'The code will expire soon',
      name: 'otp_timer',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t receive the code?`
  String get otp_didnt_receive {
    return Intl.message(
      'Didn’t receive the code?',
      name: 'otp_didnt_receive',
      desc: '',
      args: [],
    );
  }

  /// `Change number`
  String get otp_change_number {
    return Intl.message(
      'Change number',
      name: 'otp_change_number',
      desc: '',
      args: [],
    );
  }

  /// `Verified`
  String get otp_verified {
    return Intl.message('Verified', name: 'otp_verified', desc: '', args: []);
  }

  /// `Not verified`
  String get otp_not_verified {
    return Intl.message(
      'Not verified',
      name: 'otp_not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Good morning`
  String get good_morning {
    return Intl.message(
      'Good morning',
      name: 'good_morning',
      desc: '',
      args: [],
    );
  }

  /// `Good evening`
  String get good_evening {
    return Intl.message(
      'Good evening',
      name: 'good_evening',
      desc: '',
      args: [],
    );
  }

  /// `Good afternoon`
  String get good_afternoon {
    return Intl.message(
      'Good afternoon',
      name: 'good_afternoon',
      desc: '',
      args: [],
    );
  }

  /// `Good night`
  String get good_night {
    return Intl.message('Good night', name: 'good_night', desc: '', args: []);
  }

  /// `Registered at`
  String get registered_at {
    return Intl.message(
      'Registered at',
      name: 'registered_at',
      desc: '',
      args: [],
    );
  }

  /// `Attendance`
  String get attendance_title {
    return Intl.message(
      'Attendance',
      name: 'attendance_title',
      desc: '',
      args: [],
    );
  }

  /// `Present days this month`
  String get present_days_month {
    return Intl.message(
      'Present days this month',
      name: 'present_days_month',
      desc: '',
      args: [],
    );
  }

  /// `Absent days this month`
  String get absent_days_month {
    return Intl.message(
      'Absent days this month',
      name: 'absent_days_month',
      desc: '',
      args: [],
    );
  }

  /// `Present day`
  String get present_day {
    return Intl.message('Present day', name: 'present_day', desc: '', args: []);
  }

  /// `Absent day`
  String get absent_day {
    return Intl.message('Absent day', name: 'absent_day', desc: '', args: []);
  }

  /// `Total work days`
  String get total_work_days {
    return Intl.message(
      'Total work days',
      name: 'total_work_days',
      desc: '',
      args: [],
    );
  }

  /// `Break time`
  String get break_time {
    return Intl.message('Break time', name: 'break_time', desc: '', args: []);
  }

  /// `Break minutes`
  String get break_minutes {
    return Intl.message(
      'Break minutes',
      name: 'break_minutes',
      desc: '',
      args: [],
    );
  }

  /// `Late minutes`
  String get late_minutes {
    return Intl.message(
      'Late minutes',
      name: 'late_minutes',
      desc: '',
      args: [],
    );
  }

  /// `Overtime`
  String get overtime {
    return Intl.message('Overtime', name: 'overtime', desc: '', args: []);
  }

  /// `Mark present`
  String get mark_present {
    return Intl.message(
      'Mark present',
      name: 'mark_present',
      desc: '',
      args: [],
    );
  }

  /// `Mark absent`
  String get mark_absent {
    return Intl.message('Mark absent', name: 'mark_absent', desc: '', args: []);
  }

  /// `Today's status`
  String get today_status {
    return Intl.message(
      'Today\'s status',
      name: 'today_status',
      desc: '',
      args: [],
    );
  }

  /// `Attendance history`
  String get attendance_history {
    return Intl.message(
      'Attendance history',
      name: 'attendance_history',
      desc: '',
      args: [],
    );
  }

  /// `Excused absence`
  String get excused_absence {
    return Intl.message(
      'Excused absence',
      name: 'excused_absence',
      desc: '',
      args: [],
    );
  }

  /// `Unexcused absence`
  String get unexcused_absence {
    return Intl.message(
      'Unexcused absence',
      name: 'unexcused_absence',
      desc: '',
      args: [],
    );
  }

  /// `Hour`
  String get hour {
    return Intl.message('Hour', name: 'hour', desc: '', args: []);
  }

  /// `Hours`
  String get hours {
    return Intl.message('Hours', name: 'hours', desc: '', args: []);
  }

  /// `Minute`
  String get minute {
    return Intl.message('Minute', name: 'minute', desc: '', args: []);
  }

  /// `Minutes`
  String get minutes {
    return Intl.message('Minutes', name: 'minutes', desc: '', args: []);
  }

  /// `Second`
  String get second {
    return Intl.message('Second', name: 'second', desc: '', args: []);
  }

  /// `Seconds`
  String get seconds {
    return Intl.message('Seconds', name: 'seconds', desc: '', args: []);
  }

  /// `AM`
  String get am {
    return Intl.message('AM', name: 'am', desc: '', args: []);
  }

  /// `PM`
  String get pm {
    return Intl.message('PM', name: 'pm', desc: '', args: []);
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message('Yesterday', name: 'yesterday', desc: '', args: []);
  }

  /// `Tomorrow`
  String get tomorrow {
    return Intl.message('Tomorrow', name: 'tomorrow', desc: '', args: []);
  }

  /// `Date`
  String get date {
    return Intl.message('Date', name: 'date', desc: '', args: []);
  }

  /// `Latest News`
  String get latest_news {
    return Intl.message('Latest News', name: 'latest_news', desc: '', args: []);
  }

  /// `Home`
  String get news_home {
    return Intl.message('Home', name: 'news_home', desc: '', args: []);
  }

  /// `No news available`
  String get news_empty {
    return Intl.message(
      'No news available',
      name: 'news_empty',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get read_more {
    return Intl.message('Read more', name: 'read_more', desc: '', args: []);
  }

  /// `Published at`
  String get published_at {
    return Intl.message(
      'Published at',
      name: 'published_at',
      desc: '',
      args: [],
    );
  }

  /// `Search news`
  String get news_search {
    return Intl.message('Search news', name: 'news_search', desc: '', args: []);
  }

  /// `Home`
  String get nav_home {
    return Intl.message('Home', name: 'nav_home', desc: '', args: []);
  }

  /// `Services`
  String get nav_services {
    return Intl.message('Services', name: 'nav_services', desc: '', args: []);
  }

  /// `Account`
  String get nav_account {
    return Intl.message('Account', name: 'nav_account', desc: '', args: []);
  }

  /// `Notifications`
  String get nav_notifications {
    return Intl.message(
      'Notifications',
      name: 'nav_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get nav_settings {
    return Intl.message('Settings', name: 'nav_settings', desc: '', args: []);
  }

  /// `Profile`
  String get nav_profile {
    return Intl.message('Profile', name: 'nav_profile', desc: '', args: []);
  }

  /// `Support`
  String get nav_support {
    return Intl.message('Support', name: 'nav_support', desc: '', args: []);
  }

  /// `FAQ`
  String get nav_faq {
    return Intl.message('FAQ', name: 'nav_faq', desc: '', args: []);
  }

  /// `About`
  String get nav_about {
    return Intl.message('About', name: 'nav_about', desc: '', args: []);
  }

  /// `My Profile`
  String get my_profile {
    return Intl.message('My Profile', name: 'my_profile', desc: '', args: []);
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Data updated successfully`
  String get update_success {
    return Intl.message(
      'Data updated successfully',
      name: 'update_success',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Confirm`
  String get confirm {
    return Intl.message('Confirm', name: 'confirm', desc: '', args: []);
  }

  /// `Close`
  String get close {
    return Intl.message('Close', name: 'close', desc: '', args: []);
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Previous`
  String get previous {
    return Intl.message('Previous', name: 'previous', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Connection error. Check your internet.`
  String get network_error {
    return Intl.message(
      'Connection error. Check your internet.',
      name: 'network_error',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred.`
  String get unknown_error {
    return Intl.message(
      'An unexpected error occurred.',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `Server error. Try later.`
  String get server_error {
    return Intl.message(
      'Server error. Try later.',
      name: 'server_error',
      desc: '',
      args: [],
    );
  }

  /// `Invalid data.`
  String get validation_error {
    return Intl.message(
      'Invalid data.',
      name: 'validation_error',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get required_field {
    return Intl.message(
      'This field is required',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `Text is shorter than required`
  String get min_length {
    return Intl.message(
      'Text is shorter than required',
      name: 'min_length',
      desc: '',
      args: [],
    );
  }

  /// `Text is longer than allowed`
  String get max_length {
    return Intl.message(
      'Text is longer than allowed',
      name: 'max_length',
      desc: '',
      args: [],
    );
  }

  /// `You have a new notification`
  String get new_notification {
    return Intl.message(
      'You have a new notification',
      name: 'new_notification',
      desc: '',
      args: [],
    );
  }

  /// `No notifications available`
  String get no_notifications {
    return Intl.message(
      'No notifications available',
      name: 'no_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Mark all as read`
  String get mark_all_read {
    return Intl.message(
      'Mark all as read',
      name: 'mark_all_read',
      desc: '',
      args: [],
    );
  }

  /// `View all`
  String get view_all {
    return Intl.message('View all', name: 'view_all', desc: '', args: []);
  }

  /// `Services`
  String get services_title {
    return Intl.message('Services', name: 'services_title', desc: '', args: []);
  }

  /// `No services available`
  String get services_empty {
    return Intl.message(
      'No services available',
      name: 'services_empty',
      desc: '',
      args: [],
    );
  }

  /// `Book service`
  String get book_service {
    return Intl.message(
      'Book service',
      name: 'book_service',
      desc: '',
      args: [],
    );
  }

  /// `Service details`
  String get service_details {
    return Intl.message(
      'Service details',
      name: 'service_details',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get account_balance {
    return Intl.message('Balance', name: 'account_balance', desc: '', args: []);
  }

  /// `Transactions`
  String get transactions {
    return Intl.message(
      'Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Payment methods`
  String get payment_methods {
    return Intl.message(
      'Payment methods',
      name: 'payment_methods',
      desc: '',
      args: [],
    );
  }

  /// `Add card`
  String get add_card {
    return Intl.message('Add card', name: 'add_card', desc: '', args: []);
  }

  /// `Billing`
  String get billing {
    return Intl.message('Billing', name: 'billing', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Type to search...`
  String get search_placeholder {
    return Intl.message(
      'Type to search...',
      name: 'search_placeholder',
      desc: '',
      args: [],
    );
  }

  /// `No results found`
  String get no_results {
    return Intl.message(
      'No results found',
      name: 'no_results',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `No`
  String get no {
    return Intl.message('No', name: 'no', desc: '', args: []);
  }

  /// `Optional`
  String get optional {
    return Intl.message('Optional', name: 'optional', desc: '', args: []);
  }

  /// `Required`
  String get required {
    return Intl.message('Required', name: 'required', desc: '', args: []);
  }

  /// `Success`
  String get success {
    return Intl.message('Success', name: 'success', desc: '', args: []);
  }

  /// `Failed`
  String get failed {
    return Intl.message('Failed', name: 'failed', desc: '', args: []);
  }

  /// `Visits`
  String get visits {
    return Intl.message('Visits', name: 'visits', desc: '', args: []);
  }

  /// `Active users`
  String get active_users {
    return Intl.message(
      'Active users',
      name: 'active_users',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onboarding_skip {
    return Intl.message('Skip', name: 'onboarding_skip', desc: '', args: []);
  }

  /// `Done`
  String get onboarding_done {
    return Intl.message('Done', name: 'onboarding_done', desc: '', args: []);
  }

  /// `Next`
  String get onboarding_next {
    return Intl.message('Next', name: 'onboarding_next', desc: '', args: []);
  }

  /// `Welcome`
  String get onboarding_welcome_title {
    return Intl.message(
      'Welcome',
      name: 'onboarding_welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `The best experience for managing attendance and services`
  String get onboarding_welcome_subtitle {
    return Intl.message(
      'The best experience for managing attendance and services',
      name: 'onboarding_welcome_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Location permission`
  String get permission_location {
    return Intl.message(
      'Location permission',
      name: 'permission_location',
      desc: '',
      args: [],
    );
  }

  /// `Camera permission`
  String get permission_camera {
    return Intl.message(
      'Camera permission',
      name: 'permission_camera',
      desc: '',
      args: [],
    );
  }

  /// `Notifications permission`
  String get permission_notifications {
    return Intl.message(
      'Notifications permission',
      name: 'permission_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Permission denied. You can enable it from settings.`
  String get permission_denied {
    return Intl.message(
      'Permission denied. You can enable it from settings.',
      name: 'permission_denied',
      desc: '',
      args: [],
    );
  }

  /// `FAQ`
  String get faq {
    return Intl.message('FAQ', name: 'faq', desc: '', args: []);
  }

  /// `Contact us`
  String get contact_us {
    return Intl.message('Contact us', name: 'contact_us', desc: '', args: []);
  }

  /// `Terms & Conditions`
  String get terms {
    return Intl.message(
      'Terms & Conditions',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy {
    return Intl.message('Privacy Policy', name: 'privacy', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Dark mode`
  String get dark_mode {
    return Intl.message('Dark mode', name: 'dark_mode', desc: '', args: []);
  }

  /// `Light mode`
  String get light_mode {
    return Intl.message('Light mode', name: 'light_mode', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
