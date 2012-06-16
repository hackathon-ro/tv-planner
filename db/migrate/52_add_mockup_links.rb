class AddMockupLinks < ActiveRecord::Migration
	def up
		usr = User.where(:email => "adrian").first;
		sr1 = Serie.where(:show_id => 3332).first;
		sr2 = Serie.where(:show_id => 18388).first;

		usr.subscribe_to_serie(sr1);
		usr.subscribe_to_serie(sr2);
	end
end
