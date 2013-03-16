@Dialogs.module "EventsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
	
	class Edit.Event extends Marionette.ItemView
		template: "events/edit/templates/event"
		
		modelEvents:
			"change:name" : -> console.log "name changed"
	
		dialog:
			title: "Edit Event"
			className: "fooClass"
			button: "Save"
		
		onRender: ->
			console.warn "onRender"
		
		onShow: ->
			console.log "onShow"
			
		onDialogButtonClicked: ->
			console.log "onDialogButtonClicked"