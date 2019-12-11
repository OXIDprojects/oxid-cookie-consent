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
            "name": "Essentielle Cookies für den Shop",
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
        (tarteaucitron.job = tarteaucitron.job || []).push('analytics');
        (tarteaucitron.job = tarteaucitron.job || []).push('googlemaps');
        (tarteaucitron.job = tarteaucitron.job || []).push('oxid');

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
                           'Hier können Sie einsehen und anpassen, welche Information wir über Sie sammeln. Einträge die als "Beispiel" gekennzeichnet sind dienen lediglich zu Demonstrationszwecken und werden nicht wirklich verwendet.',
                   },
                   purposes: {
                       analytics: 'Besucher-Statistiken',
                       advertising: 'Anzeigen von Werbung',
                       statistics: 'Statistiken',
                   },
                   googleAnalytics: {
                       description: 'Sammeln von Besucherstatistiken',
                       analytics: 'Besucher-Statistiken',
                       advertising: 'Anzeigen von Werbung',
                   },

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
               },

           },
           // Google Analytics //
           apps: [
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
