class Order < ActiveRecord::Base
  belongs_to :product
  belongs belongs_to :user
end