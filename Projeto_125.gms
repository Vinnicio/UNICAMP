* Problema 12.5

*Conjuntos

Set j Nível_de_qualificacao / Nao-qualificado, semi-qualificado, qualificado/;
Set i tempo / hoje, ano_1, ano_2, ano_3/;
Set k tempo_empresa / menos_1, mais_1/;

*Dados

Table demanda_mao_obra(i,j)

          Nao-qualificado  semi-qualificado  qualificado
 hoje     2000             1500              1000
 ano_1    1000             1400              1000
 ano_2    500              2000              1500
 ano_3    0                2500              2000
;

Table Taxa_desperdicio_natural(k,j)

             Nao-qualificado  semi-qualificado  qualificado
 menos_1     0,25             0,2               0,1
 mais_1      0,1              0,05              0,05

;

Parameter disponibilidade_recrutamento(j)
/        nao-qualificado   500
         semi-qualificado  800
         qualificado       500
/;

Parameter custo_demissao(j)
/        nao-qualificado   200
         semi-qualificado  500
         qualificado       500
/;

*VARIÁVEIS

Integer variable X(i,j,k) número de demissões;
Free variable Z;

*EQUATIONS

Equations
         FO
         R1
;

         FO.. Z =e= Sum(i,sum(j,sum(k,X(i,j,k)));
         











































