@Dialogs.module "EventsApp", (EventsApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	API =		
		list: ->
			EventsApp.List.Controller.list()
		
		edit: (event) ->
			EventsApp.Edit.Controller.edit event
	
	App.vent.on "edit:event:clicked", (iv, event) ->
		API.edit(event)
	
	EventsApp.on "start", ->
		API.list()