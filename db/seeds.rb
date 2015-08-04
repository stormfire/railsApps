#Initialize Application's Database with seed data.

ROLE_NAMES.values.each {|name| Role.find_or_create_by(:title => name)}

User.create(:first_name => 'Pankaj', :last_name => 'Gupta', :email => 'pankaj.00gupta@gmail.com', :password=> 'test123456', :password_confirmation => 'test123456', :role => Role.find_by(:title => ROLE_NAMES[:admin]))
User.create(:first_name => 'Kumar', :last_name => 'Gupta', :email => 'pankaj_00gupta@yahoo.com', :password=> 'test123456', :password_confirmation => 'test123456', :role => Role.find_by(:title => ROLE_NAMES[:user]))
User.create(:first_name => 'John', :last_name => 'Deor', :email => 'john_deos@yahoo.com', :password=> 'test123456', :password_confirmation => 'test123456', :role => Role.find_by(:title => ROLE_NAMES[:user]))
User.create(:first_name => 'James', :last_name => 'Con', :email => 'james_con@yahoo.com', :password=> 'test123456', :password_confirmation => 'test123456', :role => Role.find_by(:title => ROLE_NAMES[:user]))
User.create(:first_name => 'Ram', :last_name => 'Kumar', :email => 'ram_kumar@gmail.com', :password=> 'test123456', :password_confirmation => 'test123456', :role => Role.find_by(:title => ROLE_NAMES[:user]))
