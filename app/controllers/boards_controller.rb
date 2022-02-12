class BoardsController < ApplicationController
  before_action :set_board, only: %i[ edit update destroy ]
  before_action :require_login, only: %i[ new edit create update destroy registration ]

  def index
    @boards = Board.page(params[:page]).order(created_at: :desc)
    if params[:tag] != nil
      @board = Board.tagged_with(params[:tag]).page(params[:page])
    end
  end

  def show
    @board = Board.find(params[:id])
    #各タグのデータ
    @cat_types = @board.tag_counts_on(:cat_types)
    @hair_colors = @board.tag_counts_on(:hair_colors)
    @characters = @board.tag_counts_on(:characters)
    @length_of_legs = @board.tag_counts_on(:length_of_legs)
    @tags = @board.tag_counts_on(:tags)
  end

  def new
    @board = Board.new
  end

  def edit; end

  def create
    @board = current_user.boards.new(board_params)
    if @board.save
      redirect_to boards_path, success: t('defaults.message.created', item: Board.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_created', item: Board.model_name.human)
      render :new
    end
  end

  def update
    if @board.update(board_params)
      redirect_to board_path(params[:id]), success: t('defaults.message.updated', item: Board.model_name.human)
    else
      flash.now['danger'] = t('defaults.message.not_updated', item: Board.model_name.human)
      render :edit
    end
  end

  def destroy
    @board.destroy!
    redirect_to boards_path, success: t('defaults.message.deleted', item: Board.model_name.human)
  end

  def registration
    @boards = current_user.boards.all.includes(:user).order(created_at: :desc).page(params[:page])
  end

  def search
    tags = Board.tags_on(:tags)
    cat_types = ActsAsTaggableOn::Tag.includes(:tagging)
  end

  private
    def set_board
      @board = current_user.boards.find(params[:id])
    end

    def board_params
      params.require(:board).permit(:movie_url, :title, :content, :cat_type_list, :hair_color_list, :character_list, :length_of_leg_list, :tag_list)
    end
end
