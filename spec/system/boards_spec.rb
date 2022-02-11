require 'rails_helper'

RSpec.describe "Boards", type: :system do
  let(:user) { create(:user) }
  let(:board_1) { create(:board, :board_1) }
  before do
    login(user)
  end

  describe '動画登録画面' do
    context '正常系' do
      it '動画が登録できること' do
        visit new_board_path
        fill_in 'タイトル※', with: board_1.title
        fill_in '説明欄', with: board_1.content
        fill_in 'YouTubeのURL※ (https://www.youtube.com/watch?v=11桁の動画IDなど動画IDで終わるもの)', with: board_1.movie_url
        click_button '登録する'
        expect(current_path).to eq(boards_path)
        expect(page).to have_content('動画情報を登録しました')
      end
    end

    context '異常系' do
      it 'タイトル空欄の場合、登録ができないこと' do
        visit new_board_path
        fill_in '説明欄', with: board_1.content
        fill_in 'YouTubeのURL※ (https://www.youtube.com/watch?v=11桁の動画IDなど動画IDで終わるもの)', with: board_1.movie_url
        click_button '登録する'
        expect(current_path).to eq(boards_path)
        expect(page).to have_content('動画情報を登録できませんでした')
        expect(page).to have_content('タイトルを入力してください')
      end

      it '無効なURLの場合、登録ができないこと' do
        visit new_board_path
        fill_in 'タイトル※', with: board_1.title
        fill_in '説明欄', with: board_1.content
        fill_in 'YouTubeのURL※ (https://www.youtube.com/watch?v=11桁の動画IDなど動画IDで終わるもの)', with: 'https://www.yout'
        click_button '登録する'
        expect(current_path).to eq(boards_path)
        expect(page).to have_content('動画情報を登録できませんでした')
        expect(page).to have_content('YouTube URLは不正な値です')
      end
    end
  end
end
