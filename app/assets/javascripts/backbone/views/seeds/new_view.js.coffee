class Seedswap.Views.SeedsNewView extends Backbone.View

el: "#seeds"

template: JST["backbone/templates/seeds/new"]

events: "submit #new-seed": "save"

initialize: ->
    @render()

render: ->
    @$el.html @template()

save: (e) ->
    e.preventDefault()
    e.stopPropagation()
    name = $("#name").val()
    genus = $("#genus").val()
    model = new Seedswap.Models.Seed({title: title, content: content})
    @collection.create model,
	success: (seed) =>
	@model = seed
	window.location.hash = "/#{model.id}"
