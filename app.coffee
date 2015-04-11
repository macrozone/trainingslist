@TrainingUnits = new Meteor.Collection "trainingUnits"


TrainingUnits.attachSchema new SimpleSchema
	
	date:
		type: Date
		label: "Date"
		autoValue: ->
			new Date()
	weight:
		type: Number
		label: "Weight"
	exercise:
		type: String
		label: "Exercise"
	userId:
		type: String
		label: "User"
		autoValue: -> 
			Meteor.userId()
		#autoform:
		#	options: ->
		#		_.map Meteor.users.find(), (user) ->
		#			value: user._id, label: user.email
