/**
 * CalculadoraDesconto
 * -------------------
 * Primeira classe Apex de estudo. Contém lógica de negócio pura
 * (sem banco de dados), o que a torna ideal para aprender testes.
 *
 * "with sharing" => a classe respeita as regras de compartilhamento
 * (permissões de acesso a registros) do usuário que a executa.
 */
public with sharing class CalculadoraDesconto {

    /**
     * Exceção customizada.
     * Em Apex, toda exceção criada por você DEVE estender Exception
     * e o nome DEVE terminar com "Exception".
     */
    public class DescontoException extends Exception {}

    /**
     * Aplica um desconto percentual a um preço.
     *
     * @param preco              valor original (não pode ser negativo)
     * @param percentualDesconto percentual de 0 a 100
     * @return                   o preço já com o desconto, em 2 casas decimais
     */
    public static Decimal aplicarDesconto(Decimal preco, Decimal percentualDesconto) {
        // 1) Validação de entrada: nunca confie nos dados que chegam.
        if (preco == null || percentualDesconto == null) {
            throw new DescontoException('Preço e percentual não podem ser nulos.');
        }
        if (preco < 0) {
            throw new DescontoException('O preço não pode ser negativo.');
        }
        if (percentualDesconto < 0 || percentualDesconto > 100) {
            throw new DescontoException('O percentual deve estar entre 0 e 100.');
        }

        // 2) Regra de negócio.
        Decimal valorDoDesconto = preco * (percentualDesconto / 100);
        Decimal precoFinal = preco - valorDoDesconto;

        // 3) setScale(2) arredonda para 2 casas (formato de moeda).
        return precoFinal.setScale(2);
    }

    /**
     * Classifica um cliente conforme o total que ele já gastou.
     *
     * @param totalGasto soma das compras do cliente
     * @return           "Ouro", "Prata" ou "Bronze"
     */
    public static String classificarCliente(Decimal totalGasto) {
        if (totalGasto == null || totalGasto < 0) {
            throw new DescontoException('Total gasto inválido.');
        }
        if (totalGasto >= 10000) {
            return 'Ouro';
        }
        if (totalGasto >= 5000) {
            return 'Prata';
        }
        return 'Bronze';
    }
}
