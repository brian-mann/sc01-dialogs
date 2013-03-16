@Dialogs.module "EventsApp.List", (List, App, Backbone, Marionette, $, _) ->
	
	class List.Events extends Marionette.CompositeView
		template: "events/list/templates/events"