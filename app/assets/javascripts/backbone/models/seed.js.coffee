class Seedswap.Models.Seed extends Backbone.Model
  idAttribute: '_id'
  paramRoot: 'seed'

class Seedswap.Collections.SeedsCollection extends Backbone.Collection
  model: Seedswap.Models.Seed
  url: '/seeds'
