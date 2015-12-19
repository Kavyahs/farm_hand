FactoryGirl.define do
  sequence(:email) {|n| "email_person_#{n.to_s.rjust(4, '0')}@yopmail.com" }

  factory :bidding, :class => Bidding do
    email
    bidder_name 'bidder_name'
    quantity 10
    quantity_type 'kg'
    price 10.4
    price_type 'kg'
    phone '1234567890'
    address 'address'
    district_id 1
    state_id 1
    # association :user, :factory => :user, strategy: :build
   end
end

