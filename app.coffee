@TrainingUnits = new Meteor.Collection "trainingUnits"
@Exercises = new Meteor.Collection "exercises"

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
		
Exercises.attachSchema new SimpleSchema
	name: 
		type: String
		label: "Name"
	description:
		type: String
		label: "description"
		autoform: 
			rows: 10

@AdminConfig = 
	name: 'My App'
	adminEmails: ['macrozone@gmail.com']
	collections:
		Exercises: {}