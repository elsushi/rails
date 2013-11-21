class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :votes
	validates :title, presence: true,
										length: 	{ minimum: 5 }
	#[...]

	def votes_total
		return 0 if (upvotes + downvotes).empty?
		upvotes.size - downvotes.size
end


private

def upvotes
	votes.where(direction: 'up')
end

def downvotes
	votes.where(direction: 'down')
end

end
