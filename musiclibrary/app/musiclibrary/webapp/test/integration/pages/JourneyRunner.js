sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"musiclibrary/test/integration/pages/ListOfSongsList",
	"musiclibrary/test/integration/pages/ListOfSongsObjectPage"
], function (JourneyRunner, ListOfSongsList, ListOfSongsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('musiclibrary') + '/test/flp.html#app-preview',
        pages: {
			onTheListOfSongsList: ListOfSongsList,
			onTheListOfSongsObjectPage: ListOfSongsObjectPage
        },
        async: true
    });

    return runner;
});

