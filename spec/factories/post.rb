FactoryGirl.define do
  factory :post do
    title        { FFaker::Lorem.sentence }
    body         { FFaker::Lorem.paragraph }
    published_at { Time.now }

    association :author, factory: :user
  end
end
