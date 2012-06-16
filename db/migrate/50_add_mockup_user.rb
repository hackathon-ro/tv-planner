class AddMockupUser < ActiveRecord::Migration
	User.new(:email => "adrian",
		    	 :password => "ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb").save()
	User.new(:email => "user",
			 		 :password => "ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb").save()
 # parola este "a"

end