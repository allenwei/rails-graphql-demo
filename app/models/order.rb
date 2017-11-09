class Order < ApplicationRecord
  belongs_to :billing_record
  has_many :line_items
  belongs_to :user
end
