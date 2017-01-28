class Documento < ActiveRecord::Base
  belongs_to :establecimiento

  validates :establecimiento_id, presence: { message: 'Requerido' }
  
  has_attached_file :archivo, styles: {},
  									path: '/home/ruby/Documents/:id.:extension',
  									url: '/home/ruby/Documents/:id.:extension'
  
  validates_attachment :archivo, presence: true, content_type: { content_type: "application/pdf" }

  has_paper_trail
end
