@Dialogs.module "EventsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
	
	Edit.Controller =
		
		edit: (event) ->
			window.event = event
			editView = @getEditView event
			window.editView = editView
			
			editView.on "dialog:button:clicked", ->
				console.log "editView instance dialog:button:clicked"
			
			App.dialogRegion.show editView
		
		getEditView: (event) ->
			new Edit.Event
				model: event