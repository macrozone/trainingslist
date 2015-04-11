Template.trainingsList.helpers
	entries: ->
		TrainingUnits.find {userId: Meteor.userId()}, {sort: date: 1}