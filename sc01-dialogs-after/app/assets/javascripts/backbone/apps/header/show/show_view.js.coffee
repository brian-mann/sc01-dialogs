@Dialogs.module "HeaderApp.Show", (Show, App, Backbone, Marionette, $, _) ->
	
	class Show.Header extends Marionette.ItemView
		template: "header/show/templates/header"