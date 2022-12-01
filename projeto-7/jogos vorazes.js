
const readline = require('readline-sync');

class JogosV {
    nomeFem() {
        var nomefem = [];
        
        for (let k = 0; k < 3; k++){
            nomefem.push(readline.question(`Nome da menina do distrito ${k+1}:`));
        }
        
        for (let i = 0; i < nomefem.length; i++){
            console.log("O tributo feminino do distrito " + (i+1) + " é " + nomefem[i] );
        }
        return nomefem
    }

    nomeMasc() {

        var nomemasc = [];

        for (let k = 0; k < 3; k++){
            nomemasc.push(readline.question(`Nome do menino do distrito ${k+1}:`));
        }

        for (let i = 0; i < nomemasc.length; i++){
            console.log("O tributo masculino do distrito " + (i+1) + " é " + nomemasc[i] );
        }
        return nomemasc
    } 

    tributos() {
        var tributos = [];
        tributos[0] = this.nomeFem();
        tributos[1] = this.nomeMasc();
        console.log(tributos[0].length + tributos[1].length);
        return tributos
    }


    sorteio () {
        var tributos = [];
        tributos = this.tributos();
        var sorteio = tributos[Math.floor(Math.random() * tributos.length)];
        console.log (`O tributo sorteado é ${sorteio} `);
    }

}

var um = new JogosV ();
um.sorteio();




