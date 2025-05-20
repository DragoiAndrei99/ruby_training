class CreateEchipaments < ActiveRecord::Migration[8.0]
  def change
    create_table :echipaments do |t|
      t.string :nume
      t.text :descriere

      t.timestamps
    end
  end
end
