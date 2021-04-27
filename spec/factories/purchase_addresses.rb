FactoryBot.define do
  factory :purchase_address do
    token            { 'tok_abcdefghijk00000000000000000' }
    post_code        { '123-4567' }
    prefecture_id    { 2 }
    city             { '福岡市' }
    street           { '天神１丁目１' }
    building         { ' ' }
    phone            { '09012345678' }
    user_id          { 2 }
    item_id          { 2 }
  end
end
