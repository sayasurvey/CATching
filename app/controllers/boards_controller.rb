class BoardsController < ApplicationController
  before_action :set_board, only: %i[ edit update destroy ]

  # GET /boards or /boards.json
  def index
    @boards = Board.page(params[:page]).order(created_at: :desc)
  end

  # GET /boards/1 or /boards/1.json
  def show
    @board = Board.find(params[:id])
    #各タグのデータ
    @cat_types = @board.tag_counts_on(:cat_types)
    @hair_colors = @board.tag_counts_on(:hair_colors)
    @characters = @board.tag_counts_on(:characters)
    @length_of_legs = @board.tag_counts_on(:length_of_legs)
    @tags = @board.tag_counts_on(:tags)
  end

  # GET /boards/new
  def new
    @board = Board.new
  end

  # GET /boards/1/edit
  def edit; end

  # POST /boards or /boards.json
  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path, success: '動画情報の登録ができました'
    else
      flash.now['danger'] = '動画情報の登録ができませんでした'
      render :new
    end
  end

  # PATCH/PUT /boards/1 or /boards/1.json
  def update
    if @board.update(board_params)
      redirect_to board_path(params[:id]), success: '動画情報が更新されました'
    else
      flash.now['danger'] = '動画情報が更新されませんでした'
      render :edit
    end
  end

  # DELETE /boards/1 or /boards/1.json
  def destroy
    @board.destroy!
    redirect_to boards_path, success: '動画情報が削除されました'
  end

  def registration
    @boards = current_user.boards.all.includes(:user).order(created_at: :desc).page(params[:page])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @board = current_user.boards.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def board_params
      params.require(:board).permit(:movie_url, :title, :content, :cat_type_list, :hair_color_list, :character_list, :length_of_leg_list, :tag_list)
    end
end
