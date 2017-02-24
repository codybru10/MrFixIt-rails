FactoryGirl.define do
  factory :user do
    email('test@gmail.com')
    password('123456')
  end

  factory :worker do
    email('test@gmail.com')
    password('123456')
  end

  factory :job do
    title('Gutter Repair')
    description('fix gutter on garage')
  end
end
