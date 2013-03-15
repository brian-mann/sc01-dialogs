@Dialogs = do (Backbone, Marionette) ->
	
	App = new Marionette.Application		
	
	App.addRegions
		mainRegion: "#main-region"
	
	App.on "initialize:after", (options) ->
		if Backbone.history
			Backbone.history.start()
	
	App