@Dialogs.module "EventsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
	
	class Edit.Event extends Marionette.ItemView
		template: "events/edit/templates/event"
		
		onShow: ->
			@$el.dialog
				modal: true
				resizable: false
				draggable: false