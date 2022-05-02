/*Exercícios de Coleções
Atividade 1 - Método que retorne uma lista de Clientes PJ ativos
*/
public with sharing class HandsOn5 {
    public static List<Account> listarContatosAtivos () {

        List<Account> accountList = [ 
            SELECT Name, CNPJ__c
            FROM Account
            WHERE Active__c = 'Yes' 
        ];
        return accountList;
    }


/*Símbolo de igual corresponde a uma atribuição
Símbolo de ponto e vírgula corresponde a conclusão de um raciocínio do código
Linha 7 criamos efetivamente uma lista
Linha 12 tem o retorno do método que tem que ser do tipo descrito na criação do método (Account)
*/

//Atividade 2 - Método que retorne lista de parcelas vencidas
    public static List<Parcela__c> listarParcelasVencidas (){

        List<Parcela__c> parcelaList = [
            SELECT Id, Numero__c, Name,	DataVencimento__c
            FROM Parcela__c
            WHERE DataVencimento__c > DataPagamento__c    
        ];

        return parcelaList;
    }

/* 3 fases de um algoritmo: entrada, processamento, saída
Linha 24 criei uma variavel do tipo Date chamada dataVencimento com a data de hoje
*/

//Atividade 3 - Método que retorne a Oportunidade de maior valor 
    public static Opportunity maiorValorOpp (){
        return = [SELECT Id, Name, Amount FROM Opportunity ORDER BY Amount DESC LIMIT 1];
    }
//


//Atividade 4 - Método que receba String de Industry de Account e traga todos as contas do setor Techonology
    public static List<Account> todosTechnology (){

        List<Account> techonologyList = [
            SELECT Id, Name, Industry
            FROM Account
            WHERE Industry = 'Techonology'
        ];

        return techonologyList;
    }                    

//Atividade 5 - Método que receba o Id de um Contract e retorne o número de parcelas dele 
    public static Contract numParcelasX (){
        return = [SELECT Id, ContractNumber, Parcela__r.Numero__c FROM Contract WHERE Id = ' '];
    }
}
