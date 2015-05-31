class CreateMsgs < ActiveRecord::Migration
  def change
    create_table :msgs do |t|
    	t.string :content
      t.timestamps null: false
    end
  end
end
