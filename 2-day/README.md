### 1. O que iremos ver hoje? 

- [ ] objetivo principal entender como ocorre o build de dockerfiles
- [ ] buildx

> A flag `-i` do comando `grep` é usada para realizar buscas **ignorando a diferença entre maiúsculas e minúsculas** (case-insensitive). 

### 2. O que são imagens de containers 

As imagens são os arquivos base para criar novos containers personalizados 

- `OCI` » **Open container Iniciative** empresa criada pelo docker para conseguir padronizar a criação de imagens e containers. 

- `RUNC` » é a ferramenta responsável por manipular os cgroups e namespaces no linux para conseguir "enganar" os processo e assim chegamos no tão sonhado isolamento sem precisar de uma nova kernel 

Cada camada criadada através de um dockerfile é `READ-ONLY` ou seja não é possível alterar ou  deletar em camadas superiores `READ-WRITE` 

Diferença entre `RUN`, `CMD` e `ENTRYPOINT`