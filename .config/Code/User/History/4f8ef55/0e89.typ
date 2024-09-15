#import "/template.typ": *
#import "/transposition.typ": *
#import "@preview/drafting:0.2.0": *
#import "@preview/vartable:0.1.0": *

#show: template

Gaspar Daguet
#align(center, text(20pt)[Maths : ES 1])
#set-page-properties()

= Groupe \
\
=== \

Comme $Q$ est non commutatif, alors $Q$ est nécessairement non monogène

=== \

$soietn( x , Q ) tq x !=e != e’$,\
On sait que $o(x) divides card Q = 8$\
Ainsi $x = 1 ou x = 2 ou x = 4 ou x = 8$\
Or comme $Q$ n'est pas monogène $x != 8$\
Si $o(x) = 1$, alors $x = x ^ 1 = e$. Absurde, donc $x != 1$\
Et par unicité de $e’$, $o(x) != 2$\
#undermath[Ainsi $o(x) = 4$]
#QED

=== #h(-5.4mm) a.\

Comme $a in Q et e’ in Q$, alors comme $Q$ est un groupe, alors $e’a in Q$,\
Or prouvons par contraposé que $a != e et a != e’$, Ainsi prouvons que $a = e ou a= e’ => a = e’ a e’$\
- supposons que $a = e$, alors :
$ e’ a e’ = (e’)^2 = e = a $
- supposons que $a = e’$, alors :
$ e’ a e’ = (e’)^2 e’ = e’ = a $
Donc par contraposé et par hypotèse de l'exercice, $a != e et a != e’$ \
Et donc comme $a != e donc e’a != e’ et$ comme $a != e’ donc e’a != (e’)^2 = e $\
et donc d'après la question précédente #undermath[$o(e’a) = 4$]
#QED

==== \

$ (a’a)^2 = (e’a e’a)^2 = (e’a)^4 = e $
#undermath[Donc $o(a’a) = 2 ou o(a’a) = 1$] 
#QED

==== \

- Si $o(a’a) = 1$, alors 
$
a’a = e &donc e’a e’a donc (e’a)^2 = e\
&donc o(e’a) = 2 donc e’a = e’ "(par unicité)"
&donc a = e "Absurde !!"
$ 
#undermath[Donc $o(a’a) != 1$]

#pagebreak()
- Si $o(a’a) = 2$, alors par unicité de $e’$
$
a’a = e’ &donc e’a e’a = e’ \
&donc a e’ a = e donc cases(a e’ = a^(-1), e’a = a^(-1)) \
&donc a e’ = e’a donc a = e’ a e’ = a’ "Absurde !!"
$
#undermath[Donc $o(a’a) != 2$]\
\
Ce qui est en contradiction avec la sous-question précédente, et donc Absurde !!\
#undermath[Donc $exists.not a in Q, a != e’a e’ <==> forall a in Q, a = e’ a e’$]\
Ce qui reviens a dire que $e’$ commute avec tout éléments de $Q$
#QED

=== #h(-5.4mm) a.\

#let ep = $e’$
Soit $frak(Q) = {e,j,k,l,e’,j e’, k e’,l e’}$\
Comme $card Q = card frak(Q)$, alors il suffis de montrer que un des deux ensemble contient le second\
On a que les éléments $e, j, k et e’ in Q$, et comme $Q$ est un groupe\
alors les éléments $l = j k, j ep, k ep et l ep in Q$\
#undermath[Ainsi $Q =  frak(Q)$]
#QED

==== \

Soit $x in {j, k, l}$, comme $o(j) = o(k) = o(l) = 4$, alors $o(x) = 4$\
donc $x^4 = e donc (x^2)^2 = e donc o(x^2) = 2$, par unicité de $ep$, $x^2 = ep$\
#undermath[Donc $j^2 = k^2 = l^2 = ep$]
#QED



#grid(
  columns: 2,
  column-gutter: 1cm,
  table(
    align: center + horizon,
    columns: 9,
    $*$,$e$,$j$,$k$,$l$,$ep$,$j ep$,$k ep$,$l ep$,
    $e$,$e$,$j$,$k$,$l$,$ep$,$j ep$,$k ep$,$l ep$,
    $j$,$j$,$ep$,$l$,$k ep$,$j ep$,$e$,$l ep$,$k$,
    $k$,$k$,$$,$ep$,$$,$k ep$,$$,$e$,$$,
    $l$,$l$,$$,$j ep$,$ep$,$l ep$,$$,$j$,$e$,
    $ep$,$ep$,$j ep$,$k ep$,$l ep$,$e$,$j$,$k$,$l$,
    $j ep$,$j ep$,$e$,$l ep$,$k$,$j$,$ep$,$l$,$k ep$,
    $k ep$,$k ep$,$$,$e$,$$,$k$,$$,$ep$,$$,
    $l ep$,$l ep$,$$,$j$,$e$,$l$,$$,$j ep$,$ep$, 
  ),
  [
    - $l k j = j k k j = (ep)^2 = e$ 
  ]
)