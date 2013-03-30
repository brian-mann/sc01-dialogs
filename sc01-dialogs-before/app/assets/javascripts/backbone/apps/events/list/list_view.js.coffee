@Dialogs.module "EventsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Event extends Marionette.ItemView
		template: "events/list/templates/_event"
		tagName: "tr"
	
	class List.Events extends Marionette.CompositeView
		template: "events/list/templates/events"
		itemView: List.Event
		itemViewContainer: "tbody"