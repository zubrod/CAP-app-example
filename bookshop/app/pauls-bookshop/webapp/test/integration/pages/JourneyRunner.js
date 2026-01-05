sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"paulsbookshop/test/integration/pages/BooksList",
	"paulsbookshop/test/integration/pages/BooksObjectPage"
], function (JourneyRunner, BooksList, BooksObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('paulsbookshop') + '/test/flp.html#app-preview',
        pages: {
			onTheBooksList: BooksList,
			onTheBooksObjectPage: BooksObjectPage
        },
        async: true
    });

    return runner;
});

