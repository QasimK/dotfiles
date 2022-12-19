// See https://github.com/arkenfox/user.js
// On Line 700 (Version 104)

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

// Disable password manager
user_pref("signon.rememberSignons", false);

// Disable full-screen warning
user_pref("full-screen-api.warning.timeout", 0);

// Enable middle-click scroll
user_pref("general.autoScroll", true);

// Enable containers
user_pref("privacy.userContext.enabled", true);
user_pref("privacy.userContext.ui.enabled", true);

// Disable DRM videos
user_pref("media.eme.enabled", false);
user_pref("browser.eme.ui.enabled", false);


/*****************
  Firefox Privacy
 *****************/

// Use blank start-up / new tab page
user_pref("browser.startup.page", 0);
user_pref("browser.startup.homepage", "about:blank");
user_pref("browser.newtabpage.enabled", false);

// Disable Pocket
user_pref("extensions.pocket.enabled", false);

// Disable search suggestions in search bar
user_pref("browser.search.suggest.enabled", false);

// Disable top sites in URL bar
user_pref("browser.urlbar.suggest.topsites", false);

// Disable search suggestions in URL bar
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);

// Disable sending telemetry to Mozilla
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);

// Disable studies
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("app.normandy.enabled", false);

// Disable personalised extension recommendations
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
user_pref("browser.discovery.enabled", false);

// Disable accessibility services
user_pref("accessibility.force_disabled", 1);

// Disable page thumbnails
user_pref("browser.pagethumbnails.capturing_disabled", true);


/*************
  Web Privacy
 *************/

// Store media cache in memory with private browsing
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);

// Clear cookies when closing Firefox
user_pref("privacy.clearOnShutdown.cookies", true);
user_pref("privacy.clearOnShutdown.offlineApps", true);

// Enable Total Cookie Protection
user_pref("browser.contentblocking.category", "strict");

// Disable HTML5 pings
user_pref("browser.send_pings", false);

// Disable notifications
user_pref("dom.webnotifications.enabled", false);

// Disable geolocation
user_pref("geo.enabled", false);
user_pref("geo.provider.use_geoclue", false);
user_pref("permissions.default.geo", 2);

// Disable beacon
user_pref("beacon.enabled", false);

// Always partition storage
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage", true);
user_pref("privacy.partition.always_partition_third_party_non_cookie_storage.exempt_sessionstorage", false);

// Disabled HTTP content on HTTPS pages
user_pref("security.mixed_content.block_display_content", true);


//SEDMARK
/*******************
  Privacy (Breaking)
  ******************/
// This WILL break some things
// Remove with: sed '/\/\/SEDMARK/,$d' user.js

// Enable Firefox tracking protection
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.socialtracking.enabled", true);
user_pref("privacy.query_stripping.enabled", true);

// When to send cross-origin header
// Disabled because the Smart Referrer extension is used instead
//user_pref("network.http.referer.XOriginPolicy", 2);
//user_pref("network.http.referer.XOriginTrimmingPolicy", 2);
