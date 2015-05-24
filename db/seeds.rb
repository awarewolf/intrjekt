# user_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]

# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end

#     t.string   "first_name"
#     t.string   "last_name"
#     t.string   "user_name"
#     t.datetime "date_of_birth"
#     t.string   "email"
#     t.datetime "created_at"
#     t.datetime "updated_at"
# require 'lib/tasks/users_importer'
UsersImporter.new.import