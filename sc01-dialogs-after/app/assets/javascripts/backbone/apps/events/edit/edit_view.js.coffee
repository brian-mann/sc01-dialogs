@Dialogs.module "EventsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
	
	class Edit.Event extends Marionette.ItemView
		template: "events/edit/templates/edit_event"
		
		modelEvents:
			"change:name" : -> console.log "name changed"
		
		events:
			"click #close-dialog" : -> @trigger "dialog:close"
		
		dialog:
			title: "Edit Event"
			className: "dialogClass"
			buttons: false
		
		onClose: ->
			console.log "view closing"
		
		onDialogButtonClicked: ->
			console.log "dialog method onDialogButtonClicked"