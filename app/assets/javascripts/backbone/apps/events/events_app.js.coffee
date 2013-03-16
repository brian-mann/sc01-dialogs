@Dialogs.module "EventsApp", (EventsApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	API =		
		listEvents: ->
			EventsApp.List.Controller.listEvents()
	
	EventsApp.on "start", ->
		API.listEvents()