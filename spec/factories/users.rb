FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'000000'}
    password_confirmation {password}
    family_name           {'abe'}
    first_name            {'ken'}
    family_name_kana      {'アベ'}
    first_name_kana       {'ケン'}
    birthday              {'2020/01/01'}
  end
end
