[{assign var="oConf" value=$oViewConf->getConfig()}]
[{oxifcontent ident="oxsecurityinfo" object="oCont"}]
    [{assign var="securityinfo" value=$oCont->getLink()}]
    [{/oxifcontent}]
[{if $oConf->getConfigParam('cmSettings') == 'tarteaucitron'}]
    <script type="text/javascript" src="https://cdn.jsdelivr.net/gh/AmauriC/tarteaucitron.js@V1.2/tarteaucitron.js"></script>
    <script>
        tarteaucitron.init({
            "privacyUrl": "[{$securityinfo}]",
            "hashtag": "[{$oConf->getConfigParam('tacHashtag')}]",
            "cookieName": "[{$oConf->getConfigParam('tacCookieName')}]",
            "orientation": "[{$oConf->getConfigParam('tacOrientation')}]",
            "showAlertSmall": [{$oViewConf->convert($oConf->getConfigParam('tacShowAlertSmall'))}],
            "cookieslist": [{$oViewConf->convert($oConf->getConfigParam('tacCookiesList'))}],
            "adblocker": [{$oViewConf->convert($oConf->getConfigParam('tacAdblocker'))}],
            "AcceptAllCta": [{$oViewConf->convert($oConf->getConfigParam('tacAcceptAllCta'))}],
            "highPrivacy": [{$oViewConf->convert($oConf->getConfigParam('tacHighPrivacy'))}],
            "handleBrowserDNTRequest": [{$oViewConf->convert($oConf->getConfigParam('tacHandleBrowserDNTRequest'))}],
            "removeCredit": [{$oViewConf->convert($oConf->getConfigParam('tacRemoveCredit'))}],
            "moreInfoLink": [{$oViewConf->convert($oConf->getConfigParam('tacMoreInfoLink'))}],

        });
        tarteaucitron.services.oxid = {
            "key": "oxid",
            "type": "other",
            "name": "Technically necessary cookies",
            "needConsent": false,
            "cookies": ['sid', 'sid_key', 'language'],
            "uri": "[{$securityinfo}]",
            "js": function () {

                "use strict";

            },
            "fallback": function () {
                "use strict";

            }
        };
        (tarteaucitron.job = tarteaucitron.job || []).push('oxid');
        (tarteaucitron.job = tarteaucitron.job || []).push('analytics');
        (tarteaucitron.job = tarteaucitron.job || []).push('googlemaps');


    </script>
    [{else}]
    <script>
       var klaroConfig = {

           elementID: 'klaro',
           cookieName: 'klaro',
           cookieExpiresAfterDays: [{$oConf->getConfigParam('klaCookieExpiryDate')}],
           privacyPolicy: '[{$securityinfo}]',
           default: true,
           mustConsent: [{$oViewConf->convert($oConf->getConfigParam('klaMustConsent'))}],
           translations: {
               de: {
                   consentModal: {
                       description:
                           'Hier können sie ihre Cookie-Einstellungen für diese Seite ändern.',
                   },
                   purposes: {
                       analytics: 'Zugriffsanalysen',
                       advertising: 'Werbung',
                       statistics: 'Statistiken',
                       necessary: 'Speichern der Sprachauswahl, des Warenkorbs und des Login-Status',
                   },
                   googleAnalytics: {
                       description: 'Auswerten von Besucherstatistiken',
                       analytics: 'Statistiken',
                       advertising: 'Anzeigen von Werbung',
                   },
                   essentialOxid: {
                       description: 'Technisch notwendige Cookie',
                   }

               },
               en: {
                   googleAnalytics: {
                       description: 'Sammeln von Besucherstatistiken',
                       analytics: 'Besucher-Statistiken',
                       advertising: 'Anzeigen von Werbung',
                   },
                   consentModal: {
                       description:
                           'Here you can see and customize the information that we collect about you. Entries marked as "Example" are just for demonstration purposes and are not really used on this website.',
                   },
                   purposes: {
                       statistics: 'Statistics',
                       analytics: 'Analytics',
                       advertising: 'Advertising',
                   },
                   essentialOxid: {
                       description: 'Sammeln von Besucherstatistiken',
                       analytics: 'Besucher-Statistiken',
                       advertising: 'Anzeigen von Werbung',
                   }

               },

           },
           // Google Analytics //
           apps: [
               {
                   name : 'essentialOxid',
                   required : true,
                   title : 'Technisch notwendige Cookies',
                   purposes : ['necessary'],
                   cookies : [],
               },
               {
                   name : 'googleAnalytics',
                   default: true,
                   title : 'Google Analytics',
                   purposes : ['statistics', 'advertising'],
                   cookies : [/^ga/i],
               },

           ],
       };
   </script>
    <script defer type="text/javascript" src="https://cdn.jsdelivr.net/gh/OXIDprojects/oxid-cookie-consent@latest/lib/klaro.js"></script>
    [{/if}]

[{$smarty.block.parent}]
