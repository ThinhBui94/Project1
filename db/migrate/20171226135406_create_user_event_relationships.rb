class CreateUserEventRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :user_event_relationships do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.boolean :join
      t.boolean :like

      t.timestamps
    end
  end
end
