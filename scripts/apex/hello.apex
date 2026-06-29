// ============================================================
//  MEU PRIMEIRO APEX  (Apex anônimo - roda direto, sem deploy)
// ============================================================
// Para rodar no VS Code: clique direito no editor ->
//   "SFDX: Execute Anonymous Apex with Editor Contents"
// Ou pelo terminal: sf apex run --file scripts/apex/hello.apex
// Os resultados aparecem nos logs (System.debug).

// 1) VARIÁVEIS - Apex é fortemente tipado (parecido com Java)
String meuNome = 'Thiago';
Integer ano = 2026;
System.debug('Olá, ' + meuNome + '! Bem-vindo ao Apex em ' + ano);

// 2) LISTA + LOOP - percorrendo uma coleção
List<String> topicos = new List<String>{ 'Apex', 'SOQL', 'LWC', 'Flows' };
for (String t : topicos) {
    System.debug('Vou estudar: ' + t);
}

// 3) SOQL - consultando dados reais da org (CRM)
//    Toda org Developer já vem com Accounts (contas/empresas) de exemplo.
List<Account> contas = [SELECT Id, Name FROM Account LIMIT 5];
System.debug('Encontrei ' + contas.size() + ' contas na minha org:');
for (Account c : contas) {
    System.debug(' -> ' + c.Name);
}