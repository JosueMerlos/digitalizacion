class Establecimiento < ActiveRecord::Base
	validates :nombre, presence: { message: "Requerido" }
	has_many :fotos
	has_many :documentos
	
	has_paper_trail
end
