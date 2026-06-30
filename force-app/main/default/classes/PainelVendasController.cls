/**
 * PainelVendasController
 * ----------------------
 * O "backend" do nosso componente de front-end (LWC).
 * Busca as vendas (Oportunidades) para o componente exibir na tela.
 *
 * @AuraEnabled(cacheable=true) = permite que o LWC chame este método
 * e o resultado fica em cache (mais rápido).
 */
public with sharing class PainelVendasController {

    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOportunidades() {
        return [
            SELECT Id, Name, StageName, Amount, CloseDate, Account.Name
            FROM Opportunity
            ORDER BY Amount DESC
            LIMIT 10
        ];
    }
}
