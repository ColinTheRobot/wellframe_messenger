# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'Patient A', role: 'patient')
User.create(name: 'Care Manager A', role: 'care_manager')

User.first.care_managers << User.last
MessageThread.last.messages.create(message_text: 'get better', author: 'Care Manager A')
