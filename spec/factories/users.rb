FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    last_name             { "鈴木" }
    first_name            { "学" }
    kana_last_name        { 'スズキ' }
    kana_first_name       { 'マナブ' }
    birth_date            { Faker::Date.between(from: '1930-01-01', to: '2016-12-31') }
  end
end