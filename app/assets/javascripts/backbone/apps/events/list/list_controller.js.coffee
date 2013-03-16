@Dialogs.module "EventsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	List.Controller =
		
		list: ->
			events = App.request "event:entities"

			listView = @getListView events
			
			listView.on "itemview:edit:event:clicked", (iv, event) ->
				App.vent.trigger "edit:event:clicked", event
		
			App.mainRegion.show listView
		
		getListView: (events) ->
			new List.Events
				collection: events