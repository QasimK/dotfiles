// Optionally append user.privacy.js with this file.

/*********
  Firefox 
 *********/

// Disable about:config warning
user_pref("browser.aboutConfig.showWarning", false);

// Disable browser introduction
user_pref("browser.onboarding.enabled", false);

// Prevent misleading URLs
user_pref("network.IDN_show_punycode", true);

// Enable calculator in urlbar
user_pref("browser.urlbar.suggest.calculator", true);

// Enable unit conversions in urlbar (distance, timezones)
user_pref("browser.urlbar.unitConversion.enabled", true);

// Disable top sites in urlbar
user_pref("browser.urlbar.suggest.topsites", false);

// Disable password manager
user_pref("signon.rememberSignons", false);

// Disable Pocket
user_pref("extensions.pocket.enabled", false);

// Disable full-screen warning
user_pref("full-screen-api.warning.timeout", 0);

// Enable middle-click scroll
user_pref("general.autoScroll", true);

// Enable containers
user_pref("privacy.userContext.enabled", true);

// Disable Firefox studies
user_pref("app.shield.optoutstudies.enabled", false);


/*****************
  Firefox Privacy
 *****************/

// Use blank start-up page
user_pref("browser.startup.page", 0);

// Use blank new tab page
user_pref("browser.newtabpage.enabled", false);

// Clear cookies when closing Firefox
user_pref("network.cookie.lifetimePolicy", 2);

// Disable personalised extension recommendations
user_pref("browser.discovery.enabled", false);

// Disable search suggestions in search bar
user_pref("browser.search.suggest.enabled", false);

// Disable search suggestions in URL bar
user_pref("browser.urlbar.suggest.searches", false);

// Disable sending telemetry to Mozilla
user_pref("datareporting.healthreport.uploadEnabled", false);


/********************
  HTML5 / APIs / DOM
 ********************/

// Disable HTML5 pings
user_pref("browser.send_pings", false);

// Disable notifications
user_pref("dom.webnotifications.enabled", false);

// Disable geolocation
user_pref("geo.enabled", false);
user_pref("permissions.default.geo", 2);

// Disable beacon
user_pref("beacon.enabled", false);


//SEDMARK
/*******************
  Privacy (Breaking)
  ******************/
// This WILL break some things
// Remove with: sed '/\/\/SEDMARK/,$d' user.js

// Enable Firefox tracking protection
user_pref("privacy.trackingprotection.enabled", true);

// Disable third-party cookies
user_pref("network.cookie.cookieBehavior", 1);

// Make sure that third-party cookies (if enabled) never persist beyond the session
user_pref("network.cookie.thirdparty.sessionOnly", true);
