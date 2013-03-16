do (Marionette) ->
	
	class Marionette.Region.Dialog extends Backbone.Marionette.Region
		el: "#dialog-region"
		
		constructor: ->
			console.info "dialog region instantiated!"
		
		initialize: ->
			console.warn "init"
		
		onShow: (view) ->
			console.log @$el
			@$el.dialog()