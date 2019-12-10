<?php
$sMetadataVersion = '2.1';
$aModule = [
    'id' => 'oxps/cookiemanager',
    'title' => 'CookieManager',
    'description' => 'Dieses Modul ist für das Managen von Cookies zuständig!',
    'version' => '1.0',
    'author' => 'Moritz Demmer',
    'events' => array(
        'onActivate' => '\OxidProfessionalServices\CookieManager\Core\Events::onActivate',
        'onDeactivate' => '\OxidProfessionalServices\CookieManager\Core\Events::onDeactivate'
    ),

    'templates' => array(),
    'blocks' => array(
        array(
            'template' => 'layout/page.tpl',
            'block' => 'layout_header',
            'file' => 'views/blocks/page.tpl',
        ),

    ),

    'settings' => array(
        array('group' => 'cookiemanager_main', 'name' => 'cmHashtag', 'type' => 'str', 'value' => '#tarteaucitron'),
        array('group' => 'cookiemanager_main', 'name' => 'cmCookieName', 'type' => 'str', 'value' => 'tartaucitron'),
        array('group' => 'cookiemanager_main', 'name' => 'cmOrientation', 'type' => 'str', 'value' => 'bottom'),
        array('group' => 'cookiemanager_main', 'name' => 'cmShowAlertSmall', 'type' => 'bool', 'value' => 'true'),
        array('group' => 'cookiemanager_main', 'name' => 'cmCookiesList', 'type' => 'bool', 'value' => 'true'),
        array('group' => 'cookiemanager_main', 'name' => 'cmAdblocker', 'type' => 'bool', 'value' => 'false'),
        array('group' => 'cookiemanager_main', 'name' => 'cmAcceptAllCta', 'type' => 'bool', 'value' => 'true'),
        array('group' => 'cookiemanager_main', 'name' => 'cmHighPrivacy', 'type' => 'bool', 'value' => 'false'),
        array('group' => 'cookiemanager_main', 'name' => 'cmHandleBrowserDNTRequest',
            'type' => 'bool', 'value' => 'false'),
        array('group' => 'cookiemanager_main', 'name' => 'cmRemoveCredit', 'type' => 'bool', 'value' => 'false'),
        array('group' => 'cookiemanager_main', 'name' => 'cmMoreInfoLink', 'type' => 'bool', 'value' => 'true')


    ),

    'controllers' => array(

    ),

    'extend' => array(
        \OxidEsales\Eshop\Core\ViewConfig::class => \OxidProfessionalServices\CookieManager\Core\ViewConfig::class
    )

];
