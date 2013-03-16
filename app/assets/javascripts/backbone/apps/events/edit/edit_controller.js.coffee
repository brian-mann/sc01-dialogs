@Dialogs.module "EventsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
	
	Edit.Controller =
		
		edit: (event) ->
			editView = @getEditView event
			
			editView.on "dialog:button:clicked", ->
				console.warn "dialog:button:clicked"
			window.edit = editView
			window.event = event
			
			App.dialogRegion.show editView
		
		getEditView: (event) ->
			new Edit.Event
				model: event