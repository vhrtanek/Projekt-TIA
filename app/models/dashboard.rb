class Dashboard < ActiveRecord::Base
  
#   before_action :set_default_db
  
   def set_default_db
     connect_do_database('my_db1.db')
   end
  
   def connect_do_database(database)
    ActiveRecord::Base.establish_connection(
      adapter:   'mysql2',
      database:  "db/#{database}"
    )
   end  
end
