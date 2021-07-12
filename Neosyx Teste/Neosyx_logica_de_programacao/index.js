//Logica de programação
//Questão 1

function mostraSalario() {
  var salario = parseInt(document.getElementById('salario').value);
  var mostraSalario = document.getElementById('mostraSalario');
  var porcentagem = 35;

  var novoSalario = salario + calculo(salario, porcentagem);
  var diferena = novoSalario - salario;

  mostraSalario.innerHTML = `O salario atual é R$  
${salario},00! O novo salario é R$ ${Math.round(
    novoSalario
  )},00 e a diferença entre eles é de R$ 
${Math.round(diferena)},00 `;

  console.log(salario, novoSalario, diferena);
}
var calculo = function calcularValor(b, c) {
  a = (b * c) / 100;
  return a;
};
//-----------------------------------------------------
//Questão 2
function calcularValorConsumidor() {
  var custoFabrica = parseInt(document.getElementById('custoFabrica').value);
  var percDistribuidor = 23.5;
  var impostos = 43.15;
  var calcPercDistribuidor;
  var calcImpostos;
  var valorConsumidor;

  calcPercDistribuidor = (custoFabrica * percDistribuidor) / 100;
  calcImpostos = (custoFabrica * impostos) / 100;

  valorConsumidor = custoFabrica + calcPercDistribuidor + calcImpostos;

  document.getElementById(
    'valorConsummidor'
  ).innerHTML = `O valor ao consumidor é de R$ ${valorConsumidor}`;
  console.log(valorConsumidor);
}

//-----------------------------------------------------
//Questão 3
var mostraSalarioTotal = document.getElementById('mostraSalarioTotal');
var salarioFixo = 1500;
var comissao;
var totalComissao;
var totalSalario;
var valorVenda = [1500, 1650, 1290, 3854];
var i = 0;

valorVenda.forEach(() => {
  if (valorVenda[i] <= 1500) {
    comissao = valorVenda[i] * 0.03;
  } else {
    comissao = valorVenda[i] * 0.05;
  }
  totalComissao = comissao += comissao;
});

/* for (var i = 0; i < valorVenda.length; i++) {
  totalComissao = comissao += comissao;
  break;
} */
console.log(totalComissao);

totalSalario = salarioFixo + totalComissao;
mostraSalarioTotal.innerHTML = `Seu salário total com comissões é R$ ${totalSalario}`;

//-----------------------------------------------------
//Questão 4

function fibonacci() {
  var termo = 20;
  var resposta = document.getElementById('resposta');
  var penultimo = 0,
    ultimo = 1;
  var numero;

  if (termo <= 2) numero = termo - 1;
  else
    for (var count = 3; count <= termo; count++) {
      numero = ultimo + penultimo;
      penultimo = ultimo;
      ultimo = numero;
    }

  resposta.innerHTML = numero;
}
