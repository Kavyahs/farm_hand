FactoryGirl.define do
  factory :product do
    seller_name 'prakash'
    email 'prakash@yopmail.com'
    images ''
    category 'paddi'
    sub_category 'jaya'
    phone '8495844435'
    address 'my place'
    price 10.0
    quantity 5
    state 'karnataka'
    district 'mysore'
    close_date Date.current + 5.days
  end
end
