# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Project.destroy_all
User.destroy_all

guy = User.create(name: "Guy")
joe = User.create(name: "Joe")
sarah = User.create(name: "Sarah")
alicia = User.create(name: "Alicia")

railsJS = Project.create(name: "Rails with JS", description: "Use JS to fetch from a Rails API")
timeMan = Project.create(name: "Time Management", description: "Scheduling stuff")

mNM = Task.create(name: "M&M", description: "Create models and migrations")
controllers = Task.create(name: "Controllers", description: "Create controllers")
seeds = Task.create(name: "Seeds", description: "Create seed data")
testRel = Task.create(name: "Test relationship", description: "Use rails console to test relationships")

railsJS.tasks << mNM
railsJS.tasks << controllers
railsJS.tasks << seeds
railsJS.tasks << testRel

calendar = Task.create(name: "Calendar", description: "Create a calendar")
impDates = Task.create(name: "Important Dates", description: "Add important dates to calendar")
priorities = Task.create(name: "Priorities", description: "Sort tasks by priority")
track = Task.create(name: "Track", description: "Track time")

timeMan.tasks << calendar
timeMan.tasks << impDates
timeMan.tasks << priorities
timeMan.tasks << track

mNM.users << guy
mNM.users << sarah
controllers.users << joe
seeds.users << sarah
testRel.users << alicia

calendar.users << guy
impDates.users << joe
priorities.users << sarah
track.users << sarah
