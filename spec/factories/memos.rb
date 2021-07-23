FactoryBot.define do
  factory :memo do
    name {'本の名前が入る'}
    point {'要点が入る'}
    text {'メモの内容が入る'}

    association :user
  end
end
