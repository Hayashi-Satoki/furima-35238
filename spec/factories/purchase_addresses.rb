FactoryBot.define do
  factory :purchase_address do
    
    post_code        { "123-4567" }
    prefecture_id    { 2 }
    city             { "福岡市" }
    street           { "天神１丁目１" }
    building         { "天神ビル" }
    phone            { "09012345678" }

  end
end
