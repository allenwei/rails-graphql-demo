class User < ApplicationRecord
  has_many :billing_records
  has_many :orders
end
