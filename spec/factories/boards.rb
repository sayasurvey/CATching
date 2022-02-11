FactoryBot.define do
  factory :board do
    sequence(:title) { |n| "タイトル#{n}"}
    sequence(:content) { |n| "説明文#{n}"}
    association :user

    trait :board_1 do
      movie_url { "https://www.youtube.com/watch?v=bjRZGbGwtAc" }
    end

    trait :board_2 do
      movie_url { "https://www.youtube.com/watch?v=d0ioAy7XMTE" }
    end
  end
end
