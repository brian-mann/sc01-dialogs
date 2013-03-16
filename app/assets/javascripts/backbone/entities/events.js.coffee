@Dialogs.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.Event extends Backbone.Model
		
	class Entities.EventsCollection extends Backbone.Collection
		model: Entities.Event
	
	API =
		
		getEvents: ->
			new Entities.EventsCollection [
				{ id: 1, date: "03/14/2013", name: "foo", description: "bar" }
				{ id: 2, date: "03/16/2013", name: "foo2", description: "bar2" }
				{ id: 3, date: "03/21/2013", name: "foo3", description: "bar3" }
			]
	
	App.reqres.addHandler "event:entities", ->
		API.getEvents()