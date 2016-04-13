class Import < ActiveRecord::Base
  belongs_to :user
  belongs_to :account
 
  self.table_name = 'Import'

end
