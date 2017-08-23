
FactoryGirl.define do
  sequence(:id) { |n| "#{n}" }

  factory :product do
    id
    name "Bike Plus"
    description "Nice Bike"
    price 550
    colour "green"
  end

end