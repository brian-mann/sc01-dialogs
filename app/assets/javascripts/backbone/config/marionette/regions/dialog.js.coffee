do (Backbone, Marionette) ->
	
	class Marionette.Region.Dialog extends Backbone.Marionette.Region
		el: "#dialog-region"
		
		constructor: ->
			_.extend @, Backbone.Events
		
		onShow: (view) ->
			@setupBindings(view)
			
			options = @getDefaultOptions _.result(view, "dialog")
			@$el.dialog options,
				close: (e, ui) =>
					@closeDialog()
		
		getDefaultOptions: (options = {}) ->
			_.defaults options,
				title: "default title"
				dialogClass: options.className
				width: "auto"
				buttons: [
					text: options.button ? "Ok"
					click: =>
						@currentView.triggerMethod "dialog:button:clicked" #onDialogButtonClicked
						# @closeDialog()
				]
		
		setupBindings: (view) ->
			@listenTo view, "dialog:close", @closeDialog
			@listenTo view, "dialog:resize", @resizeDialog
			@listenTo view, "dialog:title", @titleizeDialog
		
		closeDialog: ->
			console.log "closing dialog"
			@stopListening()
			@close()
			@$el.dialog("destroy")
		
		resizeDialog: ->
			console.log "resizing dialog"
			@$el.dialog "option", 
				position: "center"
		
		titleizeDialog: (title) ->
			@$el.dialog "option",
				title: title