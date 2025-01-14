Feature: Busca por conteúdo

Scenario: Busca com Filtro por categoria
Dado que estou na “página de busca”, 
Quando eu selecionar a categoria “MPB” no filtro, 
Então só serão mostradas músicas da categoria “MPB”.

Scenario: Busca com Filtro por trecho do nome
Dado que eu estou na "página de busca"
Quando eu escrever um "Paradise" na busca por texto
Então serão mostradas todas as músicas e playlists cujo nome contenha "Paradise".

Scenario: Busca com Filtro por tipo de conteúdo
Dado que eu estou na "página de busca"
Quando eu selecionar "apenas músicas" no conteúdo a ser mostrado
Então serão listadas na busca "músicas"

Scenario: Busca com Filtro por trecho do nome sem correspondências
Dado que eu estou na "página de busca"
E não há nenhuma música ou playlist cujo nome contenha "Batata"
Quando eu escrever "batata" na busca por texto
Então será mostrado uma mensagem de erro informando que não foram encontradas correspondências

Scenario: Busca com Filtro por playlist privada
Dado que eu estou na "página de busca"
E só há uma playlist de nome "Playlist secreta" registrada e a mesma é privada
E eu não tenho acesso à playlist de nome "Playlist secreta"
Quando eu seleciono "apenas playlists" no conteúdo a ser mostrado
E eu escrever "Playlist secreta" na busca por texto
Então será mostrado uma mensagem de erro informando que não foram encontradas correspondências
E eu serei redirecionado para a "página de busca"