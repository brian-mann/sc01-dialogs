@Dialogs.module "EventsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	List.Controller =
		
		listEvents: ->
			events = App.request "event:entities"

			listView = @getListView events
		
			App.mainRegion.show listView
		
		getListView: (events) ->
			new List.Events
				collection: events