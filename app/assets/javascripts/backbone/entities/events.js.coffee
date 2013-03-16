@Dialogs.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.Event extends Backbone.Model
		
	class Entities.EventsCollection extends Backbone.Collection
		model: Entities.Event
	
	API =
		
		getEvents: ->
			new Entities.EventsCollection [
				{ id: 1, date: "03/14/2013", name: "foo", description: "bar" }
			]
	
	App.reqres.addHandler "event:entities", ->
		API.getEvents()