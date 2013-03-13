class Seedswap.Views.SeedsEditView extends Backbone.View

    template: JST["backbone/templates/seeds/edit"]

    el: "#seeds"

    events: "submit #edit-seed" : "update"

    initialize: ->
	@render()

    render: ->
	@$el.html @template(@model.toJSON())
	@

    update: (e) ->
	e.preventDefault()
	e.stopPropagation()
	name = $("#name").val()
	genus = $("#genus").val()
	@model.save({name: name, genus:genus},
	    success: (seed) =>
	    @model = seed
	    window.location.hash = "/#{@model.id}")
