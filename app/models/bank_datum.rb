class BankDatum < ActiveRecord::Base
  self.table_name = 'Bank_data'
  
  belongs_to :account, foreign_key: 'idAccount' 
  
end
