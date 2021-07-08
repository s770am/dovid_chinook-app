gem 'activerecord', '=4.2.10'
gem 'sqlite3', '=1.3.13'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm-web.sqlite3')

class Note < ActiveRecord::Base

  field :contact_id, as: :integer
  field :body, as: :string
  field :written_at, as: :datetime
  field :written_by, as: :string
  
end

Note.auto_upgrade!
