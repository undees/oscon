class CreateDocuments < ActiveRecord::Migration
  def up
    create_table :documents do |t|
      t.string :title
      t.references :project
    end
  end

  def down
    drop_table :documents
  end
end
