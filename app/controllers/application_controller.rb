class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger

  before_action :set_search

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
end
