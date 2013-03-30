@Dialogs.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
	@startWithParent = false
	
	API =
		showHeader: ->
			HeaderApp.Show.Controller.showHeader()
	
	HeaderApp.on "start", ->
		API.showHeader()