json.extract! board, :id, :movie_url, :title, :content, :created_at, :updated_at
json.url board_url(board, format: :json)
