# == Schema Information
#
# Table name: counters
#
#  id         :integer          not null, primary key
#  fork       :integer
#  stargazer  :integer
#  watcher    :integer
#  subscriber :integer
#  open_issue :integer
#  package_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_counters_on_package_id  (package_id)
#

FactoryGirl.define do
  factory :counter do
    fork 1
    stargazer 1
    watcher 1
    subscriber 1
    open_issue 1
    package nil
  end
end
