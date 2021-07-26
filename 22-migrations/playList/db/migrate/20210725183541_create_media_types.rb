class CreateMediaTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :media_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
