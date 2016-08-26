class Campaign < ActiveRecord::Base
  belongs_to :user
  has_many :activities
  has_many :contributions
  has_many :subscriptions

  def activity_feed
    activities.map(&:specific)
  end

  def contributors
    contributions.map(&:user)
  end

  def subscribers
    subscriptions.map(&:user)
  end
end
