# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  [
    {
      name: "admin",
      email: "sayasurvey@yahoo.co.jp",
      password: "saya3133",
      password_confirmation: "saya3133"
    },

    {
      name: "test",
      email: "test@yahoo.co.jp",
      password: "test",
      password_confirmation: "test"
    }
  ]
)


Board.create!(
  [
    {
      title: "子猫のお尻が臭すぎて気絶してしまった猫",
      content: "相当臭かったみたいです ひっくり返ったまま固まってしまってます",
      movie_url: "https://www.youtube.com/watch?v=lW7W99QYbrM",
      user: User.first
    },

    {
      title: "後輩猫からの愛情表現が激しすぎてたじたじな先住猫",
      content: "メルがプリンに甘えるが、愛情表現が激しすぎて力加減ができない場面も…",
      movie_url: "https://www.youtube.com/watch?v=RjimRo_WNbk",
      user: User.first
    },

    {
      title: "ピアノに叩かれながらも寝続ける猫",
      content: "鍵盤の動きに合わせて猫の体も上下に振動するも退く気配のない猫 猫の可愛さと飼い主の美しい音色も一緒に楽しめる動画",
      movie_url: "https://www.youtube.com/watch?v=4t0I10eMoJU",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=S2Vem8wk4fY",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=6QD3NN01sYo",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=MtK1vNca5mU",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=XmsU7tLyIac",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=djp_hurOBdE&t=55s",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=iFkxCHHhIS4",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=Au9XlHCdefs",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=smvcWcuUBFE",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=jBFZIc11wKU",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=pPiu-5CNyyI",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=0jw_okUV9S0",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=LStfxrTqLV0",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=hs4SRd51Wu0",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=ORrvGmCcnJc",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=XBBCPBxSzvI",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=L2HxNfHGdgY",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=iv8XSTNxkNY",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=9HU0hvakAmo",
      user: User.first
    },

    {
      title: "test",
      content: "test",
      movie_url: "https://www.youtube.com/watch?v=2--lmNFbI1M",
      user: User.second
    }
  ]
)
