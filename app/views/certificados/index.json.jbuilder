json.array!(@certificados) do |certificado|
  json.extract! certificado, :id
  json.url certificado_url(certificado, format: :json)
end
