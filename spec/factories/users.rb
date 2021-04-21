FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 {Faker::Internet.free_email}
    password              { '123abc' }
    password_confirmation { password }
    family_name           { '阿部' }
    first_name            { '健' }
    family_name_kana      { 'アベ' }
    first_name_kana       { 'ケン' }
    birthday              { '2020/01/01' }
  end
end
