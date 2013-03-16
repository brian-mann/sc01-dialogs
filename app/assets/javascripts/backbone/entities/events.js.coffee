@Dialogs.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->
	
	class Entities.Event extends Backbone.Model
		
	class Entities.EventsCollection extends Backbone.Collection
		model: Entities.Event
	
	API =
		
		getEvents: ->
			new Entities.EventsCollection [
				{ id: 1, date: "03/14/2013", name: "Birthday",		description: "Age is a high price to pay for maturity." }
				{ id: 2, date: "03/17/2013", name: "Screencasts", description: "Release new screencasts, and update the site." }
				{ id: 3, date: "03/27/2013", name: "Blog", 				description: "Finish writing epic blog post." }
			]
	
	App.reqres.addHandler "event:entities", ->
		API.getEvents()