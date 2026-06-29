# 01 — Configuração do ambiente

Anotações da montagem do ambiente de desenvolvimento Salesforce.

## Ferramentas instaladas

| Ferramenta | Para quê |
|---|---|
| Node.js + npm | Runtime e gerenciador de pacotes (a CLI é instalada via npm) |
| Salesforce CLI (`sf`) | Criar projetos, autorizar orgs, deploy, rodar Apex/testes |
| VS Code + Salesforce Extension Pack | Editor com suporte a Apex, LWC, SOQL e debugger |
| Eclipse Temurin JDK 17 | Necessário para o Apex Language Server da extensão |
| Git + GitHub CLI (`gh`) | Versionamento e portfólio |

## Conceitos aprendidos

- **Declarativo vs Programático:** no Salesforce, prefere-se configurar por cliques ("clicks, not code") antes de escrever código.
- **Org:** o ambiente Salesforce (a Developer Edition é gratuita e permanente).
- **Apex anônimo:** bloco de código que roda na hora, sem precisar de deploy — ótimo para testar.
- **SOQL:** linguagem de consulta embutida no Apex para ler dados do CRM. Ex.: `[SELECT Id, Name FROM Account LIMIT 5]`.
- **Governor Limits:** como a plataforma é multi-inquilino, cada execução tem limites rígidos (ex.: 100 consultas SOQL, 150 operações DML). Estourar = erro.

## Comandos úteis

```bash
sf org login web --alias minhaOrg --set-default   # autorizar org
sf org display --target-org minhaOrg              # ver dados da org
sf apex run --file scripts/apex/hello.apex        # rodar Apex anônimo
sf org open                                        # abrir a org no navegador
```
