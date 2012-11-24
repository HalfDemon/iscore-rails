class CreateFlags < ActiveRecord::Migration
  def change
    create_table :flags do |t|
      t.text :content
      t.belongs_to :site
      t.boolean :captured
      t.text :captured_flag
      t.interger :earned_back_points
      t.boolean :earned_back

      t.timestamps
    end
    add_index :flags, :site_id
  end
end
