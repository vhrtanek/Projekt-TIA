class Account < ActiveRecord::Base
  
  has_many :imports
  
  self.table_name = 'Account'
end
