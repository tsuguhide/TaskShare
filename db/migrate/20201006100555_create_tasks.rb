class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string  :title
      t.text    :title_detail
      t.integer :category_id
      # t.string  :category_detail
      t.string  :task
      t.text    :task_memo
      t.references :user
      t.timestamps
    end
  end
end
