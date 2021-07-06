gem 'activerecord', '=4.2.10'
gem 'sqlite3', '=1.3.13'

require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection( adapter: 'sqlite3', database: "films.sqlite3") #establish database

class Film < ActiveRecord::Base

    field :title, as: :string
    field :country, as: :string
    field :genre, as: :string
    field :rating, as: :integer
    field :description, as: :string

end

Film.auto_upgrade!

  



