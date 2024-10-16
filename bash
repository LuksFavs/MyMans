Programação em bash

começar o arquivo com #! /bin/bash
chmod +x para rodar sem precisar chamar /bin/bash no inicio. e alterar o PATH para ler o diretorio atual.
indicando que é pra usar o bash pra rodar.

# - comentario

variáveis são feitas com NOMEDAVAR=OQUEGARDAR
se quiser usar espaco "use as aspas"
para se referenciar a variavel $NOMEDAVAR
para se printar o nome '$NOMEDAVAR' usar as aspas simples.

para se ler valores do teclado:
read VARIAVEL
ela termina de ler quando acha o enter.

exit 0 -> retorno sem erros

'' ou "":
"" não escapa de mostrar os valores contidos no interior -> "$NUM9" printa 9
'' escapa e le caracteres literalmente -> '$NUM9' printa $NUM9

variaveis reservadas:
$HOME, $PATH, $IFS(separadores usados, espaco, /t, /n , etc), $$(process ID da shell script)
$PS1 -> command prompt (usualmente o $), $PS2 -> command prompt secundario

parametros:
$# -> Variavel que guarda o numero de parametros, se nao passar nenhum =0
$0 -> nome do Programa
$1, $2, ... -> ler o Nésimo parametro de entrada passados.
$* -> todos os paremtros passados separados pelo primeiro caracter do IFS
$@ -> igual a $* so que sem o IFS

Aritmetica:
$((conta)) -> fazer assim para entender que é conta entre valores numericos.
posso usar | e &(retorna 0 se falso, ou retorna o valor da expressao verdadeira), =, >, <, >=, <=, !=, e as aritmeticas normais.nao tem **
testes:
[ teste ] -> comocar o teste entre os colchetes. aceita comparação de strings, aritimética ou caracteristica de arqs.
             para strings a = b, a != b , -n a (se a é não nula), -z a (se a é vazia)
             aritmetica -eq, -ne, -gt, -ge, -lt, -le, !,
             aqrs -d (se é diretorio), -e(se existe), -f(é arquivo regular), -g(se set-group-id ta ligado), -r(se é legivel)
                  -s(se tamanho não e zero), -u(set-user-id ta ligado), -w(se pode ser escrito), -x(se é executavel).
                  -e e -f são parecidas, sendo -f mais usada.

Condicionais:
lembrar de usar "" para evitar erros nos testes com strings.

if -> if CONDIÇÃO
      then
        COMANDOS
      else
        COMANDOS
      fi

elif -> dentro do if
        elif CONDIÇÃO; then, se quiser pode ser sem o ; mas o then viria na linha de baixo.

Iteracoes:
for -> for VARIAVEL in VALORES
       do
         COMANDOS
       done

while -> while CONDIÇÃO
         do
           COMANDOS
         done

until -> until CONDIÇÃO
         do
            COMANDOS
         done

case -> case VARIAVEL in 
          PADRAO) COMANDO;;
          PADRAO2) COMANDO;;
          PADRAO3 | PADRAO4 | ...) COMANDO;;
          ...
        esac


Lista de comandos:
AND: COMANDO1 && COMANDO2 && ... ->para no primeiro falso
OR: COMANDO1 || COMADNO2 || ... -> para no primeiro verdadeiro
pode misturar

bloco de comandos:
{} -> colocar varios comandos

Funcoes:
NOME_DA_FUNC(){
  statements
}

Comandos:
normais -> aprendido nas aulas,
           para chamar $(comando)
internos -> break, continue, echo, eval, exec, exit n, export, expr(=$(()), mas invocando uma nova shell pra executar a expressao, tem que vir entre ``), printf, return, set, shift, trap, unset
