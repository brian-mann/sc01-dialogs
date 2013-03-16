@Dialogs.module "EventsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
	
	Edit.Controller =
		
		edit: (event) ->
			editView = @getEditView event
			
			App.dialogRegion.show editView
		
		getEditView: (event) ->
			new Edit.Event
				model: event