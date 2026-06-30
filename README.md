# 🛒 CRM de Pedidos — Salesforce

> Projeto de portfólio: um **sistema de gestão de pedidos** (Sales Cloud) construído na plataforma Salesforce, com automações em Apex e interface em Lightning Web Components.

![Salesforce](https://img.shields.io/badge/Salesforce-00A1E0?style=flat&logo=salesforce&logoColor=white)
![Apex](https://img.shields.io/badge/Apex-1798c1?style=flat&logo=salesforce&logoColor=white)
![LWC](https://img.shields.io/badge/Lightning_Web_Components-FFB75D?style=flat&logo=lightning&logoColor=white)

---

## 🎯 Sobre o projeto

Um CRM onde um cliente faz **pedidos**, cada pedido tem vários **itens** (produtos), e o sistema calcula automaticamente o **total** (com desconto e frete) quando os itens mudam. Construído para demonstrar, na prática, o desenvolvimento Salesforce ponta a ponta.

## 🧩 Funcionalidades (em construção)

- [ ] **Modelo de dados** — objetos `Pedido` e `Item do Pedido` com relacionamento
- [ ] **Regras de validação** — ex.: quantidade não pode ser ≤ 0
- [ ] **Automação em Apex** — trigger que recalcula o total do pedido ao alterar itens
- [ ] **Testes automatizados** — cobertura ≥ 75%
- [ ] **Interface (LWC)** — tela que lista os pedidos de um cliente
- [ ] **Automação declarativa (Flow)** — notificação ao enviar um pedido
- [ ] **Assistente de IA (Agentforce)** — agente que responde sobre os pedidos

## 🛠️ Stack

- **Apex** — lógica de negócio e triggers
- **SOQL** — consultas aos dados
- **Lightning Web Components** — front-end
- **Flow / Agentforce** — automação e IA
- **Salesforce DX + CLI** — projeto versionado

## 🚀 Como rodar

```bash
# autorizar a org de desenvolvimento
sf org login web --alias minhaOrg --set-default

# fazer deploy do projeto para a org
sf project deploy start

# rodar os testes
sf apex run test --result-format human --code-coverage
```

## 🔗 Contato

- GitHub: [@thiagomirandahs](https://github.com/thiagomirandahs)

---

<sub>Projeto de estudos no formato Salesforce DX. Credenciais não são versionadas (ver `.gitignore`).</sub>
