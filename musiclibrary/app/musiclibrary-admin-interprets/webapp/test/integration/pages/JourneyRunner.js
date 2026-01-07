sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"musiclibraryadmininterprets/test/integration/pages/InterpretsList",
	"musiclibraryadmininterprets/test/integration/pages/InterpretsObjectPage",
	"musiclibraryadmininterprets/test/integration/pages/SongsObjectPage"
], function (JourneyRunner, InterpretsList, InterpretsObjectPage, SongsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('musiclibraryadmininterprets') + '/test/flp.html#app-preview',
        pages: {
			onTheInterpretsList: InterpretsList,
			onTheInterpretsObjectPage: InterpretsObjectPage,
			onTheSongsObjectPage: SongsObjectPage
        },
        async: true
    });

    return runner;
});

