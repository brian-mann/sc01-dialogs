@Dialogs.module "EventsApp.Edit", (Edit, App, Backbone, Marionette, $, _) ->
	
	class Edit.Event extends Marionette.ItemView
		template: "events/edit/templates/event"
		
		modelEvents:
			"change:name" : -> console.log "name changed"
		
		# onShow: ->
		# 	@$el.dialog
		# 		title: "Edit Event"
		# 		close: (e, ui) =>
		# 			@trigger "dialog:closed"
		# 			# App.dialogRegion.close()