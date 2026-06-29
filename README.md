# ☁️ Salesforce Portfolio — Thiago Miranda

> Repositório de estudos e projetos no desenvolvimento da plataforma **Salesforce**.
> Aqui registro minha evolução em **Apex**, **SOQL**, **Lightning Web Components (LWC)** e automações, no formato profissional **Salesforce DX**.

![Salesforce](https://img.shields.io/badge/Salesforce-00A1E0?style=flat&logo=salesforce&logoColor=white)
![Apex](https://img.shields.io/badge/Apex-1798c1?style=flat&logo=salesforce&logoColor=white)
![LWC](https://img.shields.io/badge/Lightning_Web_Components-FFB75D?style=flat&logo=lightning&logoColor=white)

---

## 👤 Sobre

Estou aprendendo desenvolvimento Salesforce do zero e uso este repositório para documentar a jornada com código real, versionado e deployável. Cada pasta reflete um conceito que estudei e pratiquei.

## 🛠️ Stack & Ferramentas

- **Apex** — linguagem server-side da plataforma (orientada a objetos, tipada)
- **SOQL / SOSL** — consultas a dados do CRM
- **Lightning Web Components (LWC)** — front-end moderno baseado em Web Components
- **Salesforce DX + Salesforce CLI (`sf`)** — projeto baseado em fonte e versionado
- **VS Code** + Salesforce Extension Pack

## 📁 Estrutura do projeto

```
force-app/main/default/
├── classes/     → classes Apex e classes de teste (.cls)
├── triggers/    → triggers de objetos (.trigger)
├── lwc/         → componentes Lightning Web
└── objects/     → objetos e campos customizados
scripts/
├── apex/        → experimentos em Apex anônimo
└── soql/        → consultas SOQL de estudo
docs/            → anotações de estudo por tópico
```

## 🚀 Como rodar localmente

```bash
# 1. Autorizar sua org de desenvolvimento
sf org login web --alias minhaOrg --set-default

# 2. Rodar um script de Apex anônimo
sf apex run --file scripts/apex/hello.apex

# 3. Fazer deploy do código para a org
sf project deploy start

# 4. Rodar os testes Apex
sf apex run test --result-format human --code-coverage
```

## 📚 Trilha de aprendizado

- [x] Configuração do ambiente (CLI, VS Code, JDK, org)
- [x] Primeiro Apex anônimo (variáveis, listas, loop, SOQL)
- [x] Primeira classe Apex + classe de teste (100% de cobertura)
- [ ] Triggers e o padrão *Trigger Handler*
- [ ] SOQL avançado (relacionamentos, agregações)
- [ ] Primeiro Lightning Web Component
- [ ] Integração via API REST
- [ ] Certificação **Platform Developer I (PD1)**

## 🔗 Contato

- GitHub: [@thiagomirandahs](https://github.com/thiagomirandahs)

---

<sub>Projeto de estudos no formato Salesforce DX. As credenciais da org **não** são versionadas (ver `.gitignore`).</sub>
