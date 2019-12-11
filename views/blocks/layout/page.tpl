[{assign var="oConf" value=$oViewConf->getConfig()}]
[{if $oConf->getConfigParam('cmSettings') == 'tarteaucitron'}]
    [{oxifcontent ident="oxsecurityinfo" object="oCont"}]
    [{assign var="securityinfo" value=$oCont->getLink()}]
    [{/oxifcontent}]

    <script type="text/javascript"
            src="https://cdn.jsdelivr.net/gh/AmauriC/tarteaucitron.js@V1.2/tarteaucitron.js"></script>
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
           // Element id des div Elements in welches klaro erstellen wird
           elementID: 'klaro',
           // Cookie name welches klaro setzt um die Settings zu Speichern
           cookieName: 'klaro',
           // By default, it will expire after 120 days.
           cookieExpiresAfterDays: 365,
           // Link (relativ oder absolut) zur Datenschutzerlkärung
           privacyPolicy: '/datenschutzerklarung',
           // Default status für die Elemente im Modal (app) (true=enabled by default).
           default: true,
           // Wenn "mustConsent" ist auf true gesetzt, Klaro wird direkt beim laden der Seite geöffnet und fragt nach Einwilligung
           mustConsent: true,
           //Übersetzungen zusätzlich
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
                   close: 'speichern'
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
                   close: 'save'
               },

           },
           // apps sektion, hier nur Google Analytics
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
    <script defer type="text/javascript"
            src="https://cdn.jsdelivr.net/gh/OXIDprojects/oxid-cookie-consent@latest/lib/klaro.js"></script>
    <p>
        <a href="" onClick="return klaro.show()">Open Config</a>.
    </p>
    [{/if}]


[{$smarty.block.parent}]
