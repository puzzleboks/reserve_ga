# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


classroom1 = Room.create(has_projector: true, has_whiteboard_walls: true, max_guests:"50")
classroom2 = Room.create(has_projector: true, has_whiteboard_walls: true, max_guests:"70")
classroom3 = Room.create(has_projector: true, has_whiteboard_walls: true, max_guests:"50")
classroom4 = Room.create(has_projector: true, has_whiteboard_walls: true, max_guests:"60")
classroom5 = Room.create(has_projector: true, has_whiteboard_walls: true, max_guests:"70")
classroom6 = Room.create(has_projector: true, has_whiteboard_walls: true, max_guests:"50")
