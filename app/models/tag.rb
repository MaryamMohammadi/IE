class Tag < ActiveRecord::Base
	belongs_to :shopping
	belongs_to :item
	has_one :shopping

	def self.search(search)
  		if search
  			self.where(item_id: search)
  		else
    		self.all
  		end
	end

end
