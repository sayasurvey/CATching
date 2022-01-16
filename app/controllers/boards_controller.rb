class BoardsController < ApplicationController
  before_action :set_board, only: %i[ show edit update destroy ]
  before_action :set_search

  # GET /boards or /boards.json
  def index
    @boards = Board.page(params[:page]).order(created_at: :desc)
  end

  # GET /boards/1 or /boards/1.json
  def show
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

  def set_search
    if params[:q]!= nil
      params[:q]['title_or_content_or_cat_types_name_or_hair_colors_name_or_characters_name_or_length_of_legs_name_or_tags_name_cont_any'] = params[:q]['title_or_content_or_cat_types_name_or_hair_colors_name_or_characters_name_or_length_of_legs_name_or_tags_name_cont_any'].split(/[\s|\p{blank}]+/)
      @search = Board.ransack(params[:q])
      @search_boards = @search.result(distinct: true).page(params[:page]).order(created_at: :desc)
    else
      @search = Board.ransack(params[:q])
      @boards = Board.page(params[:page]).order(created_at: :desc)
    end
	end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @board = Board.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def board_params
      params.require(:board).permit(:movie_url, :title, :content, :cat_type_list, :hair_color_list, :character_list, :length_of_leg_list, :tag_list)
    end
end
