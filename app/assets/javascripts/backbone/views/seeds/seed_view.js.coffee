class Seedswap.Views.SeedView extends Backbone.View

template: JST["backbone/templates/seeds/seed"]

events: "click .destroy" : "destroy"

tagName: "tr"

destroy: () ->
    @model.destroy()
    this.remove()
    return false

render: ->
    @$el.html(@template(@model.toJSON()))
    return this
