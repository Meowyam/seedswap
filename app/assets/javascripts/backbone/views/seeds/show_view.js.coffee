class Seedswap.Views.SeedsShowView extends Backbone.View

    template: JST["backbone/templates/seeds/show"]

    el: "#seeds"

    initialize: ->
	@render()

    render: ->
	@$el.html(@template(@model.toJSON()))
	@
