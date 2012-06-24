class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :type
      t.string :url
      t.integer :team_id

      t.timestamps
    end
  end
end
