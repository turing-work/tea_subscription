class Subscription < ApplicationRecord
  validates :title, presence: true
  validates :frequency, presence: true
  validates :price, presence: true

  has_many :drink_subscriptions, dependent: :destroy
  has_many :teas, through: :drink_subscriptions

  has_many :customer_subscriptions, dependent: :destroy
  has_many :customers, through: :customer_subscriptions
end
