@certificado = Certificado.find(params[:id])
bg = "public/Diploma2.jpg"
prawn_document(:page_size => "LETTER", :page_layout => :portrait) do |pdf|
	pdf.image bg, :scale => 0.2
	pdf.move_up(350)
	pdf.text "#{@certificado.nombre.upcase}", :size => 24, :style => :bold, :align => :center
	pdf.text "Venezuela", :size => 20, :align => :center
end
