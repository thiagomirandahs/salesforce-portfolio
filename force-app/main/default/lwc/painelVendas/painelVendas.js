import { LightningElement, wire } from 'lwc';
import getOportunidades from '@salesforce/apex/PainelVendasController.getOportunidades';

export default class PainelVendas extends LightningElement {
    oportunidades;
    erro;

    // @wire chama o Apex automaticamente e entrega os dados aqui
    @wire(getOportunidades)
    receberDados({ data, error }) {
        if (data) {
            // transforma os dados num formato amigável pra tela
            this.oportunidades = data.map((opp) => ({
                id: opp.Id,
                nome: opp.Name,
                conta: opp.Account ? opp.Account.Name : 'Sem cliente',
                estagio: opp.StageName,
                valor: opp.Amount
            }));
            this.erro = undefined;
        } else if (error) {
            this.erro = error;
            this.oportunidades = undefined;
        }
    }

    // soma o valor de todas as vendas (igual o "Total" do nosso CRM)
    get total() {
        if (!this.oportunidades) {
            return 0;
        }
        return this.oportunidades.reduce((soma, o) => soma + (o.valor || 0), 0);
    }
}
