class AddColumnToSectionEdits < ActiveRecord::Migration[5.0]
  def change
    add_column('section_edits', 'summary', :string)
  end
end
