// Primeiro Código;
const readline = require('readline-sync');

var nome, n1, n2, n3, media, min;
var resultado;

//Recebimento dos valores das notas!

nome = (readline.question('Digite seu nome: ')); 
n1 = Number(readline.question('Primeira nota: '));    
n2 = Number(readline.question('Segunda nota: '));
n3 = Number(readline.question('Terceira nota: '));

//Apresentação dos resultados
media = (n1 + n2 + n3) / 3;
resultado = media >= 7 ? 'APROVADO(A)' : 'REPROVADO(A)';
console.log(`Aluno(a) ${nome} foi ${resultado} com a média ${media.toFixed(1)}`);


//Segundo Código;

//Recebimento dos valores das notas
n1 = Number(readline.question('Primeira nota: '));
n2 = Number(readline.question('Segunda nota: '));

//Realizando o descobrimento da nota mínima
min = 0;
media = (n1 + n2 + min) / 3; 
while (media < 7) {
    min++;
    media = (n1 + n2 + min) / 3; 

    if (min > 10) {
        break;
    } 
}
if (media < 7) {
    console.log('Você não atingiu a média, sua terceira nota será irrelevante.')
} else {
    console.log(`Nota mínima para atingir a média: ${min.toFixed(1)}`);
}