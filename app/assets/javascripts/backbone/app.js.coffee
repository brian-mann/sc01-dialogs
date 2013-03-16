@Dialogs = do (Backbone, Marionette) ->
	
	App = new Marionette.Application		
	
	App.addRegions
		mainRegion: 	"#main-region"
		dialogRegion: "#dialog-region"
		loginRegion: 	"#login-region"
	
	App.module("EventsApp").start()
	
	App.on "initialize:after", (options) ->
		if Backbone.history
			Backbone.history.start()
	
	App