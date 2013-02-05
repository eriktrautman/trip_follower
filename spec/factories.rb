FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "victor#{n}@example.com" }
    fname "victor"
    lname "oleinikov"
  end
end