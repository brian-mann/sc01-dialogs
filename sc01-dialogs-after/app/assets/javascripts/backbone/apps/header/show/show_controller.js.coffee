@Dialogs.module "HeaderApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	Show.Controller =
		
		showHeader: ->
			headerView = @getHeaderView()
			
			App.headerRegion.show headerView
		
		getHeaderView: ->
			new Show.Header