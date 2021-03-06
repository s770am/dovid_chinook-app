gem 'activerecord', '=4.2.10'

require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'cookbook.sqlite3')

class Recipe < ActiveRecord::Base

    field :name, as: :string
    field :prep_time, as: :integer
    field :description, as: :text
end

Recipe.auto_upgrade!

at_exit do
    ActiveRecord::Base.connection.close
end



# gem install activerecord -v 4.2.10
# gem install mini_record
# gem install sqlite3 -v 1.3.13
