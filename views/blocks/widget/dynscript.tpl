[{assign var="sGATrackingId" value=$oViewConf->getViewThemeParam('sGATrackingId')}]
[{if $oViewConf->getViewThemeParam('blUseGAPageTracker') && $sGATrackingId}]
    <script data-name="googleAnalytics" data-type="application/javascript" type="opt-in" >
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', '[{$sGATrackingId}]');
        [{* IP-Adressen anonymisieren *}]
        [{if $oViewConf->getViewThemeParam('blGAAnonymizeIPs')}]
            ga('set', 'anonymizeIp', true);
        [{/if}]
        ga('send', 'pageview');
    </script>
[{/if}]