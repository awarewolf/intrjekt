class UsersImporter

  def initialize(filename=File.dirname(__FILE__) + "/../../db/data/users.csv")
    @filename = filename
  end

  def import
    field_names = ['first_name', 'last_name', 'user_name', 'password', 'email', 'date_of_birth']

    print "Importing users from #{@filename}: "
    failure_count = 0

      File.open(@filename).each do |line|
        data = line.chomp.split(',')
        attribute_hash = Hash[field_names.zip(data)]
        begin
          user = User.create!(attribute_hash)
          print "."; STDOUT.flush
        rescue ActiveRecord::UnknownAttributeError => ex
          puts ex
          print "!"; STDOUT.flush
          failure_count += 1
        end
      end

    failures = "(failed to create #{failure_count} user records)" if failure_count > 0
    puts "\nDONE #{failures}\n\n"
  end

end