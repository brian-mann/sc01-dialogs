@Dialogs.module "EventsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Event extends Marionette.ItemView
		template: "events/list/templates/_event"
		tagName: "tr"
		events:
			"click button" : -> @trigger "edit:event:clicked", @model
	
	class List.Events extends Marionette.CompositeView
		template: "events/list/templates/events"
		itemView: List.Event
		itemViewContainer: "tbody"