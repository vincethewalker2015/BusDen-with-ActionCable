class Plan < ActiveRecord::Base  # Using ActiveRecord::Base (Instead of ActiveRecord)  makes it aware of the database specifically from the seeds.rb file
    has_many :users
end