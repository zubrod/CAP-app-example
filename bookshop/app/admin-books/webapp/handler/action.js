sap.ui.define([], function () {
    "use strict";

    return {
        execute: function (oBindingContext, aSelectedContexts) {

            debugger;
            // oEvent enthält Kontext, Selected Items usw.
            console.log("Custom Action wurde ausgeführt", oEvent);

            //   const oBindingContext = oEvent.getSource().getBindingContext();
            /*if (oBindingContext) {
                const oObject = oBindingContext.getObject();
                console.log("Aktuelles Objekt:", oObject);
            }*/
        }
    };
});