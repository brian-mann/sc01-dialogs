@Dialogs.module "EventsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
	
	class Edit.Event extends Marionette.ItemView
		template: "events/edit/templates/event"
		
		modelEvents:
			"change:name" : -> console.log "name changed"
		
		onDialogButtonClicked: ->
			console.log "onDialogButtonClicked"
		
		# dialog:
			# title: "Edit Event"
			# size: "small"
			# className: "fooClass"
			# buttons:
			# 	cancel: false
			# 	submit: "Ok, Edit Event!"