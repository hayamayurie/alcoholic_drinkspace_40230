FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'1234abcd'}
    password_confirmation {password}
  end
end