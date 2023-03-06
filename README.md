# Projetos de FP
Projetos de circuitos em FPGA

# Lab 01 - Circuitos Combinacionais

Sistema digital para realizar a soma de dois números de dois bits e exibir o resultado em um display de 7 segmentos.
Após a verificação (simulação com o testbench), o sistema é colocado no FPGA do kit DE2-115. As entradas são feitas usando 4 chaves.


## Circuito

O circuito consiste da soma de duas entradas a e b (add0). 
O valor em seguida passa por um multiplexador (bloco case), no qual irá colocar na saída um valor correspondente para o display de 7-seg.

![image](https://user-images.githubusercontent.com/50549048/223150625-7990cce7-ddb7-407d-b0b6-a916fd83c33b.png)

## Forma de Onda

Para a forma de onda é possível observar através do testbench, que passa por todos os valores possíveis de a e b, o sinal de saída variando de acordo a tabela do display de 7-seg.

![Untitled](https://user-images.githubusercontent.com/50549048/223151470-cd678e64-7b8c-4419-b7c0-0734797b2f22.png)

## Código

O módulo criado em soma.sv é instanciado com a concatenação de dois switchs para o valor de entrada a e dois switches para o valor de entrada b. A saída é conectada a um dos display de 7-segmentos para exibição do código.
```
soma soma0 (.a({SW[3], SW[2]}), .b({SW[1], SW[0]}), .out(HEX0));
```

## Demonstração

https://user-images.githubusercontent.com/50549048/223153365-7fd3384e-ddee-40e7-86cc-51a835b14fec.mp4

