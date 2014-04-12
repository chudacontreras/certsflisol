@certificado = Certificado.find(params[:id])
bg = "public/background.png"
prawn_document(:page_size => "LETTER", :page_layout => :landscape) do |pdf|
	pdf.image bg, :scale => 0.6525
	pdf.move_up(350)
	pdf.text "#{@certificado.nombre}", :size => 24, :style => :bold, :align => :center
end
