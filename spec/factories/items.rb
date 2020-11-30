FactoryBot.define do
  factory :item do
    name                   { Faker::Name.initials }
    info                   { Faker::Lorem.sentence }
    category_id            { Random.rand(2..11) }
    sales_status_id        { Random.rand(2..7) }
    shipping_fee_status_id { Random.rand(2..3) }
    prefecture_id          { Random.rand(2..48) }
    scheduled_delivery_id  { Random.rand(2..4) }
    price                  { Random.rand(300..9_999_999) }
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
