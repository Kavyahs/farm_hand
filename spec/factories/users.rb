FactoryGirl.define do
  factory :user do
    name 'prakash'
    email 'prakash@yopmail.com'
    password '123qwe123'
    password_confirmation '123qwe123'
    phone '8495844435'
    password_reset_token ''
    password_reset_sent_at ''
  end
end
