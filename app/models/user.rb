class User < ActiveRecord::Base
  has_many :campaigns
  has_many :comments
  has_many :contributions
  has_many :subscriptions

  def activity_feed
    campaign_ids = all_followed_campaigns.map(&:id)
    activities = Activity.where(campaign_id: campaign_ids)
    activities = activities.map(&:specific)
  end

  def all_followed_campaigns
    campaigns = subscribed_campaigns
    campaigns += contributed_campaigns
    campaigns.uniq
  end

  def contributed_campaigns
    contributions.map(&:campaign)
  end

  def subscribed_campaigns
    subscriptions.map(&:campaign)
  end
end
