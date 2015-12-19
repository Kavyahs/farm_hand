IMAGE_1 ||= File.open(Rails.root.join('spec/fixtures/imgo.jpeg'))
FactoryGirl.define do
  factory :product do
    seller_name 'prakash'
    email 'prakash@yopmail.com'
    images IMAGE_1
    category_id 1
    sub_category_id 3
    phone '8495844435'
    address 'my place'
    price 10.0
    quantity 5
    state_id 1
    district_id 2
    user_id 1
    close_date Date.current + 5.days
  end
end
