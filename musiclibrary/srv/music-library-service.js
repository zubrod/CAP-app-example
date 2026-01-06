const cds = require('@sap/cds')

module.exports = class MusicLibraryService extends cds.ApplicationService {
  init() {

    const { Songs } = this.entities

    /**
     * Generate IDs for new Books drafts
     */
    this.before('NEW', Songs.drafts, async (req) => {
      if (req.data.ID) return
      const { ID: id1 } = await SELECT.one.from(Songs).columns('max(ID) as ID')
      const { ID: id2 } = await SELECT.one.from(Songs.drafts).columns('max(ID) as ID')
      req.data.ID = Math.max(id1 || 0, id2 || 0) + 1
    });

    return super.init()
  }
}
