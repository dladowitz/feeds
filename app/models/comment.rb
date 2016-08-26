class Comment < ActiveRecord::Base
  acts_as :activity
  belongs_to :user
end
