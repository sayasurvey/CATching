FactoryBot.define do
  factory :board do
    sequence(:title) { |n| "タイトル#{n}"}
    sequence(:content) { |n| "説明文#{n}"}
    cat_type { "マンチカン" }
    association :user
  end
end
