[{oxifcontent ident="oxsecurityinfo" object="oCont"}]
[{assign var="securityinfo" value=$oCont->getLink()}]
[{/oxifcontent}]
[{assign var="oConf" value=$oViewConf->getConfig()}]
<script type="text/javascript" src="https://cdn.jsdelivr.net/gh/AmauriC/tarteaucitron.js@V1.2/tarteaucitron.js"></script>
<script>
   tarteaucitron.init({
      "privacyUrl": "[{$securityinfo}]",
      "hashtag": "[{$oConf->getConfigParam('cmHashtag')}]",
      "cookieName": "[{$oConf->getConfigParam('cmCookieName')}]",
      "orientation": "[{$oConf->getConfigParam('cmOrientation')}]",
      "showAlertSmall": [{$oViewConf->convert($oConf->getConfigParam('cmShowAlertSmall'))}],
      "cookieslist": [{$oViewConf->convert($oConf->getConfigParam('cmCookiesList'))}],
      "adblocker": [{$oViewConf->convert($oConf->getConfigParam('cmAdblocker'))}],
      "AcceptAllCta" : [{$oViewConf->convert($oConf->getConfigParam('cmAcceptAllCta'))}],
      "highPrivacy": [{$oViewConf->convert($oConf->getConfigParam('cmHighPrivacy'))}],
      "handleBrowserDNTRequest": [{$oViewConf->convert($oConf->getConfigParam('cmHandleBrowserDNTRequest'))}],
      "removeCredit": [{$oViewConf->convert($oConf->getConfigParam('cmRemoveCredit'))}],
      "moreInfoLink": [{$oViewConf->convert($oConf->getConfigParam('cmMoreInfoLink'))}],

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

[{$smarty.block.parent}]
