sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"shopwithcustomactions/test/integration/pages/BooksList",
	"shopwithcustomactions/test/integration/pages/BooksObjectPage",
	"shopwithcustomactions/test/integration/pages/Books_textsObjectPage"
], function (JourneyRunner, BooksList, BooksObjectPage, Books_textsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('shopwithcustomactions') + '/test/flp.html#app-preview',
        pages: {
			onTheBooksList: BooksList,
			onTheBooksObjectPage: BooksObjectPage,
			onTheBooks_textsObjectPage: Books_textsObjectPage
        },
        async: true
    });

    return runner;
});

