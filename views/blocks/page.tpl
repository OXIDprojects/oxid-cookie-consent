<script defer type="text/javascript" src="https://cdn.jsdelivr.net/gh/OXIDprojects/oxid-cookie-consent@latest/lib/config.js"></script>
<script defer type="text/javascript" src="https://cdn.jsdelivr.net/gh/OXIDprojects/oxid-cookie-consent@latest/lib/klaro.js"></script>
<p>
  <a href="" onClick="return klaro.show()">Open Config</a>.
</p>

[{oxifcontent ident="oxsecurityinfo" object="oCont"}]
[{assign var="securityinfo" value=$oCont->getLink()}]
[{/oxifcontent}]
[{assign var="oConf" value=$oViewConf->getConfig()}]
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
      "AcceptAllCta" : [{$oViewConf->convert($oConf->getConfigParam('tacAcceptAllCta'))}],
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

[{$smarty.block.parent}]
