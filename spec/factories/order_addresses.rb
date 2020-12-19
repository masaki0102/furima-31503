FactoryBot.define do
  factory :order_address do
    postal_code              { '123-4567' }
    prefecture_id            { Random.rand(2..48) }
    city                     { '中野区' }
    address                  { '1-1' }
    building                 { '新東京ビル' }
    phone_number             { '12345678910' }
    user_id                  { Random.rand(1..100) }
    item_id                  { Random.rand(1..100) }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
