### 1. O que iremos ver hoje? 

- [ ] objetivo principal entender como ocorre o build de dockerfiles
- [ ] buildx

> A flag `-i` do comando `grep` é usada para realizar buscas **ignorando a diferença entre maiúsculas e minúsculas** (case-insensitive). 

### 2. O que são imagens de containers 

As imagens são os arquivos base para criar novos containers personalizados 

- `OCI` » **Open container Iniciative** empresa criada pelo docker para conseguir padronizar a criação de imagens e containers. 

- `RUNC` » é a ferramenta responsável por manipular os cgroups e namespaces no linux para conseguir "enganar" os processo e assim chegamos no tão sonhado isolamento sem precisar de uma nova kernel 

Cada camada criadada através de um dockerfile é `READ-ONLY` ou seja não é possível alterar ou  deletar em camadas superiores `READ-WRITE` 


### 3. Dockerfile e o entrypoint

Diferença entre `RUN`, `CMD` e `ENTRYPOINT`

- `ENTRYPOINT` » Principal processo do container, se ele morrer, o container morre. 

- `RUN` » é utilizado para configuração do container no dockerfile, instalações necessárias para executar o container, como por exemplo, o node, python, etc. 

- `CMD` » é utilizado para passar argumentos para o entrypoint, ou seja, o que será executado quando o container for iniciado.

## Desafio 1 

- [x] from com debian 
- [x] healhcheck
- [x] executar o ngnix  

### 4. Multi-stage 

É uma forma de minificar o container no "final do dia", seu objetivo é utilizar duas imagens durante o processo de build da imagem, cada uma com uma responsabilidade:
    - ``Build da aplicação``: instalar dependencias e compilar o codigo, essa imagem vai ter que ter instalado a runtime para realizar esse processo o que acaba deixando o container muito grande. 
    - ``Exec da aplicação``: puxa o código compilado e executa o binário gerado, porém com uma imagem base minificada, normalmente um container alpine, ou uma imagem base distroless. 

``` Dockerfile
FROM node:16 AS builder 

WORKDIR app

COPY package.json ./ 

RUN npm install 

COPY . . 

RUN npm run build 

FROM alpine:3.22.1 AS runner

COPY --from=builder node_modules ./ 
COPY --from=builder package.json ./ 
COPY --from=builder dist ./ 

ENTRYPOINT ["node"]

CMD ["dist/main/server"]
```
