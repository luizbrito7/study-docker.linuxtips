# Day 1

## Sumário conceitos aprendidos

- [ ] O que são containers
- [ ] Isolando processos no linux com namespaces (domínios de isolamento)
- [ ] Mão na massa com `unshare` trabalhando com namespaces
- [ ] Controle de recursos com `cgroups` no linux
- [ ] O que é o `chroot`
- [ ] LXC e a importancia do kernel linux na história dos containers
- [ ] O que é o docker
- [ ] Instalação do docker
- [ ] Gerenciando ciclo de vida dos containers com docker

### Entendendo Funcionamento de Containers (Fábio Akita)

- [ ] CAP 01 - Limitando processos - cgroups
- [ ] CAP 02 - Enganando processos - namespaces
- [ ] CAP 03 - Recapitulando containers - LXC, Docker e OCI
- [ ] CAP 04 - A base para containers - RunC
- [ ] CAP 05 - Hello World Docker - O que tem dentro?
- [ ] CAP 06 - Restringindo Processos Ainda Mais - Capabilities
- [ ] CAP 07 - Orquestrando Containers - Docker Compose
- [ ] CAP 08 - Bônus do Episódio "Tornando sua App Web mais Rápida" - Load Balancer com Docker
- [ ] CAP 09 - Orquestra de Gente Grande - K8S e Terraform
- [ ] CAP 10 - Outros Usos de Containers - Apps em Containers?



- Script para instalação do docker

```
curl -fsSL https://get.docker.com -o install-docker.sh
```

`-f`: Ativa o "modo de falha". Se o servidor retornar um código de erro HTTP (como 404 ou 500), o curl não salvará o conteúdo e retornará um erro.
`-s`: Ativa o "modo silencioso". Isso desativa a exibição de informações de progresso ou mensagens de erro no terminal, tornando o comando mais limpo.
`-S`: Mostra mensagens de erro mesmo quando o modo silencioso (-s) está ativado. Isso ajuda a identificar problemas caso algo dê errado.
`-L`: Segue redirecionamentos HTTP. Se o URL fornecido redirecionar para outro endereço, o curl seguirá automaticamente até o destino final.
`-o`: install-docker.sh: Especifica o nome do arquivo de saída. O conteúdo baixado será salvo no arquivo chamado install-docker.sh.

