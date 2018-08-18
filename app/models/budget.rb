class Budget < ApplicationRecord

	validates_presence_of :name
	validates_uniqueness_of :name # will later need to scope these to "accounts"

end
