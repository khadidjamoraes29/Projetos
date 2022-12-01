

class Banco {  
    nome;  
    conta;
    saldo;
    tipo;
    agencia;

    constructor(nome, conta, saldo, tipo, agencia) {
        this.nome = nome; 
        this.conta = conta;
        this.saldo = saldo;
        this.tipo = tipo;
        this.agencia = agencia; 
    }
    get buscarNome(){
        return `Seu nome é: ${this.nome}`;
    }
    get buscarSaldo(){
        return `Seu saldo é: R$ ${this.saldo}`;
    }
    set deposito(dep){
        this.saldo = this.saldo + dep;
    }
    set saque(sac){
        this.saldo = this.saldo - sac;
    }
    get numeroConta(){
        return `Seu número de conta é: ${this.conta}`;
    }
    get tipoConta(){
        return `Seu tipo de conta é: ${this.tipo}`;
    }
    get contaAgencia(){
        return `Sua agência é: ${this.agencia}`;
    }
}
var contaKhadidja = new Banco("Khadidja Moraes","793-29", 2500, "conta-corrente", 13);
console.log(contaKhadidja.buscarNome);
console.log(contaKhadidja.numeroConta);
console.log(contaKhadidja.tipoConta);
console.log(contaKhadidja.contaAgencia);
console.log(contaKhadidja.buscarSaldo);
console.log(`Depositando  R$ ${contaKhadidja.deposito=380}`);
console.log(`Sacando R$ ${contaKhadidja.saque=700}`);
console.log(contaKhadidja.buscarSaldo);
