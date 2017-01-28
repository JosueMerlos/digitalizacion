class Foto < ActiveRecord::Base
  belongs_to :establecimiento
  
  has_attached_file :foto,
  									styles: {
  										medium: "300x300>",
  										thumb: "100x100>"
  									},
  									default_url: "/images/:style/missing.png"

  validates_attachment :foto, presence: true, content_type: { content_type: "image/jpeg" }

  validates :establecimiento_id, presence: { message: 'Requerido' }

  has_paper_trail
end
