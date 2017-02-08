# == Schema Information
#
# Table name: subscriptions
#
#  id           :integer          not null, primary key
#  feed_id      :integer
#  news_item_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_subscriptions_on_feed_id       (feed_id)
#  index_subscriptions_on_news_item_id  (news_item_id)
#

require 'rails_helper'

RSpec.describe Subscription, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end