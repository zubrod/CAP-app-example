const cds = require('@sap/cds')

class CustomImpl extends cds.ApplicationService {
    init() {



        this.on('testUnboundAction', async req => {
            return { testNumber: 42 }
        })


        return super.init()
    }
}


module.exports = CustomImpl