class CreateBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :boards do |t|
      t.string :movie_url
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
