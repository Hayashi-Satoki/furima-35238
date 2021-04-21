FactoryBot.define do
  factory :item do

    name               {Faker::Name.name}
    description        {'説明'}
    category_id        {2}
    condition_id       {2}
    shipping_fee_id    {2}
    prefecture_id      {2}
    required_day_id    {2}
    price              {1000}

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end

  end
end
