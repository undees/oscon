class SeedData < ActiveRecord::Migration
  def up
    execute <<-SQL
      INSERT INTO projects
        (id,name) VALUES
        (1,"OSCON Talk"),
        (2,"Elixir Experiment");
    SQL

    execute <<-SQL
      INSERT INTO documents
        (id,title,project_id) VALUES
        (1,"Ideas",1),
        (2,"Slides",1),
        (3,"Code",1),
        (4,"Ideas",2),
        (5,"Diagram",2);
    SQL
  end

  def down
    execute <<-SQL
      DELETE FROM documents;
      DELETE FROM projects;
    SQL
  end
end
