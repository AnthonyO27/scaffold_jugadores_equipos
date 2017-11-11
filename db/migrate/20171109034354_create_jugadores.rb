class CreateJugadores < ActiveRecord::Migration[5.1]
  def change
    create_table :jugadores do |t|
      t.string :nombre
      t.string :apellido
      t.integer :edad
      t.references :equipo, foreign_key: true

      t.timestamps
    end
  end
end
