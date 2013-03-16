@Dialogs = do (Backbone, Marionette) ->
	
	App = new Marionette.Application		
	
	App.addRegions
		headerRegion:	"#header-region"
		mainRegion: 	"#main-region"
		dialogRegion: "#dialog-region"
		loginRegion: 	"#login-region"
	
	App.addInitializer ->
		App.module("HeaderApp").start()
		App.module("EventsApp").start()
	
	App.on "initialize:after", (options) ->
		if Backbone.history
			Backbone.history.start()
	
	App