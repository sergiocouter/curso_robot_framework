*** Settings ***
Documentation    Essa suíte testa o site de amazon.com.br
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso ao menu "eBooks Kindle"
    [Documentation]    Teste para verificar o menu eBooks Kindle no site da amazon.com.br
    [Tags]             menu  categoria

    Acessar a home page do site Amazon.com.br
    Entrar no menu "eBooks Kindle"
    Verificar se o título da página fica "Livros Kindle"
    Verificar se aparece a frase "eBooks Kindle"
    Verificar se aparece a categoria "Livros para você"

Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Teste para verificar a pesquisa do produto no site da amazon.com.br
    [Tags]             busca_produto  lista_busca

    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, se está, listando o produto pesquisado