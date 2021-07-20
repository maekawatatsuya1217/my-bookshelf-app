FactoryBot.define do
  factory :blog do
    title       {'HTMLについて'}
    catch_copy  {'1分でわかります'}
    article     {'ビジネス書です。'}
    category_id { 2 }

    association :user

    after(:build) do |blog|
      blog.image.attach(io: File.open('app/assets/images/head_logo.png'), filename: 'head_logo.png')
    end
  end
end
