FactoryGirl.define do
  factory :user do
    username "MyString"
    email "test1@gmail.com"
    password "MyString"
    password_confirmation "MyString"
    role nil
  end
end
