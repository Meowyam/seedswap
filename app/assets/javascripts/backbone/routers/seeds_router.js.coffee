class Seedswap.Routers.SeedsRouter extends Backbone.Router

initialize: (options) ->
    @seeds = new Seedswap.Collections.SeedsCollection()
    @seeds.reset options.seeds

routes:
    "index"	: "index"
    "new"	: "newSeed"
    ":id" 	: "show"
    ":id/edit"	: "edit"
    ".*"	: "index"

index: ->
    @view = new Seedswap.Views.SeedsIndexView({collection: @seeds})

newSeed: ->
    @view = new Seedswap.Views.SeedsNewView({collection: @seeds})

show: (id) ->
    seed = @seeds.get(id)
    @view = new Seedswap.Views.SeedsShowView({model: seed})

edit: (id) ->
    seed = @seeds.get(id)
    @view = new Seedswap.Views.SeedsEditView({model: seed})
