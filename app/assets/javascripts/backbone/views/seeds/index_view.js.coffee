class Seedswap.Views.SeedsIndexView extends Backbone.View

    el: "#seeds"

    template: JST["backbone/templates/seeds/index"]

    initialize: ->
	@render()
	@addAll()

    addAll: ->
	@collection.forEach(@addOne, @)

    addOne: (model) ->
	@view = new Seedswap.Views.SeedView({model: model})
	@$el.find("tbody").append @view.render().el

    render: ->
	@$el.html @template()
	@
