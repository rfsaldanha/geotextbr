library(httr2)

# https://servicodados.ibge.gov.br/api/v1/bngb/municipio/{geocodigo}/nomesgeograficos

req <- request("https://servicodados.ibge.gov.br/api/v1/bngb") |>
  req_url_path_append("municipio") |>
  req_url_path_append("3300100") |>
  req_url_path_append("nomesgeograficos")

resp <- req_perform(req)

res <- resp |>
  resp_body_json()

res$features
