# API Ruby on Rails + ReactJS

**Para esta versão, foi usado o princípio de MVP. Existem melhorias que podem ser discutidas e implementadas**

# Produção

A API_BASE está disponível no endereço:
https://jpierry-find-my-coffee.herokuapp.com/api/v1

O front-end foi hospedado usando surge.sh e está disponível em (necessário liberar a localização do browser):
http://jpierry-find-my-coffee.surge.sh


# Endpoints

**Stores:**
* GET /stores?latitude=XX.XXXXXX&longitude=YY.YYYYYY ----> Retorna a lista de stores avaliadas na proximidade de 5000 metros
* GET /stores/:id ---------------------------------------> Retorna uma store (se existir), com base no parâmetro :google_place_id

**Ratings:**
* POST /ratings ----> Cria ou encontra uma loja com base em quatro parâmetros que devem ser enviados no body da requisição (:name, :address, :lonlat, :google_place_id) e, após isso, cria um rating para a loja setada com base em três parâmetros que devem ser enviados no body da requisição (:value, :opinion, :user_name).

**Google_Stores:**
* GET /google_stores?latitude=XX.XXXXXX&longitude=YY.YYYYYY ----> Retorna a lista de tarefas cadastradas
* GET /tasks/:id -----------------------------------------------> Retorna uma google_store, com base no parâmetro :google_place_id
