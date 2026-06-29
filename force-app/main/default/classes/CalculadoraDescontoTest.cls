/**
 * CalculadoraDescontoTest
 * -----------------------
 * Classe de teste de CalculadoraDesconto.
 *
 * - @isTest marca a classe (e cada método) como teste. Código de teste
 *   NÃO conta para o limite de linhas da org e não vai para produção.
 * - "private" é a convenção para classes de teste.
 * - A classe Assert valida se o resultado é o esperado; se falhar, o teste falha.
 */
@isTest
private class CalculadoraDescontoTest {

    // CASO NORMAL: 10% de desconto em 100 deve resultar em 90.
    @isTest
    static void aplicarDesconto_casoNormal() {
        Decimal resultado = CalculadoraDesconto.aplicarDesconto(100, 10);
        Assert.areEqual(90.00, resultado, 'Desconto de 10% em 100 deveria dar 90');
    }

    // CASO EXTREMO: 0% de desconto mantém o preço.
    @isTest
    static void aplicarDesconto_semDesconto() {
        Decimal resultado = CalculadoraDesconto.aplicarDesconto(250, 0);
        Assert.areEqual(250.00, resultado, '0% de desconto não altera o preço');
    }

    // CASO EXTREMO: 100% de desconto zera o preço.
    @isTest
    static void aplicarDesconto_descontoTotal() {
        Decimal resultado = CalculadoraDesconto.aplicarDesconto(80, 100);
        Assert.areEqual(0.00, resultado, '100% de desconto zera o preço');
    }

    // CASO DE ERRO: preço negativo deve lançar a exceção customizada.
    @isTest
    static void aplicarDesconto_precoNegativo_lancaExcecao() {
        try {
            CalculadoraDesconto.aplicarDesconto(-10, 5);
            // Se chegou aqui, NÃO lançou exceção => o teste deve falhar.
            Assert.fail('Era esperado uma DescontoException para preço negativo');
        } catch (CalculadoraDesconto.DescontoException e) {
            Assert.areEqual('O preço não pode ser negativo.', e.getMessage(),
                'A mensagem da exceção deveria explicar o preço negativo');
        }
    }

    // CASO DE ERRO: percentual fora do intervalo (0-100).
    @isTest
    static void aplicarDesconto_percentualInvalido_lancaExcecao() {
        try {
            CalculadoraDesconto.aplicarDesconto(100, 150);
            Assert.fail('Era esperado uma DescontoException para percentual > 100');
        } catch (CalculadoraDesconto.DescontoException e) {
            Assert.areEqual('O percentual deve estar entre 0 e 100.', e.getMessage());
        }
    }

    // CASO NORMAL: classificação de clientes nos três níveis.
    @isTest
    static void classificarCliente_tresNiveis() {
        Assert.areEqual('Ouro', CalculadoraDesconto.classificarCliente(15000), 'Acima de 10000 = Ouro');
        Assert.areEqual('Prata', CalculadoraDesconto.classificarCliente(5000), '5000 a 9999 = Prata');
        Assert.areEqual('Bronze', CalculadoraDesconto.classificarCliente(100), 'Abaixo de 5000 = Bronze');
    }

    // CASO DE ERRO: entrada nula deve lançar exceção (cobre o caminho do null).
    @isTest
    static void aplicarDesconto_entradaNula_lancaExcecao() {
        try {
            CalculadoraDesconto.aplicarDesconto(null, 10);
            Assert.fail('Era esperado uma DescontoException para preço nulo');
        } catch (CalculadoraDesconto.DescontoException e) {
            Assert.areEqual('Preço e percentual não podem ser nulos.', e.getMessage());
        }
    }

    // CASO DE ERRO: total gasto inválido deve lançar exceção.
    @isTest
    static void classificarCliente_totalInvalido_lancaExcecao() {
        try {
            CalculadoraDesconto.classificarCliente(-50);
            Assert.fail('Era esperado uma DescontoException para total negativo');
        } catch (CalculadoraDesconto.DescontoException e) {
            Assert.areEqual('Total gasto inválido.', e.getMessage());
        }
    }
}
