sap.ui.define([
    "sap/fe/test/JourneyRunner",
    "musiclibrary/test/integration/pages/SongsList",
    "musiclibrary/test/integration/pages/SongsObjectPage"
], function (JourneyRunner, SongsList, SongsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('musiclibrary') + '/test/flp.html#app-preview',
        pages: {
            onTheSongsList: SongsList,
            onTheSongsObjectPage: SongsObjectPage
        },
        async: true
    });

    return runner;
});

