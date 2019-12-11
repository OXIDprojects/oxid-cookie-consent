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