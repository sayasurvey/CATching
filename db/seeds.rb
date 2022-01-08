# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Board.create!(
  [
    {
      title: "子猫のお尻が臭すぎて気絶してしまった猫",
      content: "相当臭かったみたいです ひっくり返ったまま固まってしまってます",
      movie_url: "https://www.youtube.com/watch?v=lW7W99QYbrM"
    },

    {
      title: "後輩猫からの愛情表現が激しすぎてたじたじな先住猫",
      content: "メルがプリンに甘えるが、愛情表現が激しすぎて力加減ができない場面も…",
      movie_url: "https://www.youtube.com/watch?v=RjimRo_WNbk"
    },

    {
      title: "ピアノに叩かれながらも寝続ける猫",
      content: "鍵盤の動きに合わせて猫の体も上下に振動するも退く気配のない猫 猫の可愛さと飼い主の美しい音色も一緒に楽しめる動画",
      movie_url: "https://www.youtube.com/watch?v=4t0I10eMoJU"
    }
  ]
)
