FactoryBot.define do
  factory :comment do
    text   {'コメント'}
    association :user
    association :blog
  end
end
