@Dialogs.module "EventsApp", (EventsApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	API =		
		list: ->
			EventsApp.List.Controller.list()
		
	EventsApp.on "start", ->
		API.list()