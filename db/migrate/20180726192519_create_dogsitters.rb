class CreateDogsitters < ActiveRecord::Migration[5.2]
  
  def change
  	create_table :cities do |t|             # création du tableau cities 
		t.string :cityname
	end

    create_table :dogsitters do |t|			# création du tableau dogsitters 
		t.string :lastname
    	t.string :firstname
		t.belongs_to :city, index: true
    end

	create_table :dogs do |t|				# création du tableau dogs
    	t.string :name
    	t.belongs_to :city, index: true
    end
   
     create_table :strolls do |t|           # création du tableau de strolls 
      t.datetime :date
      t.string :name
      t.references :city, foreign_key: true
      t.references :dog, foreign_key: true
      t.references :dogsitter, foreign_key: true
	end
  end
end
