Router.route "/", 
	template: "home"
	data: ->
		entries: ->
			TrainingUnits.find {userId: Meteor.userId()}, {sort: date: 1}
		exerciseOptions: ->
			Exercises.find().map (exercise) ->
				value: exercise._id
				label: exercise.name

Template.trainingsList.helpers
	exercise: ->
		Exercises.findOne(@exercise)?.name