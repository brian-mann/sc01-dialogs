@Dialogs.module "EventsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	List.Controller =
		
		listEvents: ->
			listView = @getListView()
			
			App.mainRegion.show listView
		
		getListView: ->
			new List.Events