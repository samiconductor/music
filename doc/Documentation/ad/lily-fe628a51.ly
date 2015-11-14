%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "displaying-grob-ancestry.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.dsi.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.16.0"

\header {
%% Translation of GIT committish: 26a079ca2393d053315ef8dbef626c897dc9645a

  texidoces = "
Al trabajar con los callbacks de un grob, puede ser de mucha ayuda
entender el @qq{árbol genealógico} de un grob.  La mayor parte de los
grobs tienen @qq{padres} que influyen en el posicionamiento del grob.
los padres X e Y influyen en las posiciones horizontal y vertical del
grob, respectivamente.  Además, cada pade puede tener padres a su vez.


Por desgracia, existen varios aspectos de la genealogía de un grob que
pueden llevar a confusión:


@itemize

@item Los tipos de padre que tiene un grob pueden depender del
contexto.

@item Para ciertos grobs, los padres X e Y son el mismo.

@item Un @qq{ancestro} concreto puede estar relacionado con un grob de
mas de una manera.

@item El concepto de @qq{generaciones} es engañoso.

@end itemize


Por ejemplo, el grob @code{System} puede ser tanto un padre (sobre el
lado Y) como un abuelo (dos veces en el lado X) de un grob
@code{VerticalAlignment}.


Este macro imprime, en la consola, una representación textual de la
genealogía de un grob.


Cuando se llama de esta forma

@example
@{
   \\once \\override NoteHead #'before-line-breaking = #display-ancestry
   c4
@}
@end example


Se genera la siguiente salida:


@example
------------------------------------

NoteHead X,Y: NoteColumn
    X: PaperColumn
       X,Y: System
    Y: VerticalAxisGroup
       X: NonMusicalPaperColumn
          X,Y: System
       Y: VerticalAlignment
          X: NonMusicalPaperColumn
             X,Y: System
          Y: System
@end example

"

  doctitlees = "Imprimir el árbol genealógico de un grob"

%% Translation of GIT committish: e99967817ff985eb5bd5b0220b2fbf552963f9de
  texidocfr = "
Lorsque l'on manipule des rappels d'objet (@emph{grob callbacks}), il
peut être intéressant d'en maîtriser les « ascendants ».  La plupart des
objets graphiques ont des parents, lesquels auront une influence sur le
positionnement de l'objet en question.  Ainsi, les parents des côtés X
et Y influenceront respectivement les positions horizontale et verticale
de l'objet.  De plus, chacun des parents peut avoir ses propres parents.

Certains aspects de la lignée d'un objet peuvent toutefois porter à
confusion :

-- Les types de parents d'un @emph{grob} peuvent dépendre du contexte.

-- Dans le cas de certains @emph{grobs}, les parents X et Y peuvent être
   le même.

-- Un « ascendant » particulier peut dépendre d'un @emph{grob} de
   différentes manières.

-- Le concept de « génération » est trompeur.

Par exemple, l'objet @code{System} peut, vis à vis d'un objet
@code{VerticalAlignment},  être à la fois parent (par son
côté Y) et grand parent (par deux fois du côté X).

La macro ci-dessous affiche à l'écran une représentation textuelle de
l'ascendance d'un @emph{grob}.


Elle se lance ainsi :

@example
@{
   \\once \\override NoteHead #'before-line-breaking = #display-ancestry
   c4
@}
@end example

et génère la sortie suivante :

@example
------------------------------------

NoteHead X,Y: NoteColumn
    X: PaperColumn
       X,Y: System
    Y: VerticalAxisGroup
       X: NonMusicalPaperColumn
          X,Y: System
       Y: VerticalAlignment
          X: NonMusicalPaperColumn
             X,Y: System
          Y: System
@end example

"
  doctitlefr = "Affichage de la généalogie d'un objet"

  lsrtags = "devel, scheme-language, tweaks-and-overrides"

  texidoc = "
When working with grob callbacks, it can be helpful to understand a
grob's @qq{ancestry}. Most grobs have @qq{parents} which influence the
positioning of the grob. X- and Y-parents influence the horizontal and
vertical positions for the grob, respectively. Additionally, each
parent may have parents of its own.


Unfortunately, there are several aspects of a grob's ancestry that can
lead to confusion:

* The types of parents a grob has may depend on context. * For some
grobs, the X- and Y-parents are the same. * A particular @qq{ancestor}
may be related to a grob in multiple ways. * The concept of
@qq{generations} is misleading.


For example, the @code{System} grob can be both parent (on the Y-side)
and grandparent (twice on the X-side) to a @code{VerticalAlignment}
grob.


This macro prints (to the console) a textual representation of a grob's
ancestry.


When called this way


@{
 \\once \\override NoteHead #'before-line-breaking = #display-ancestry
 c @}


The following output is generated:


------------------------------------

NoteHead X,Y: NoteColumn
    X: PaperColumn
       X,Y: System
    Y: VerticalAxisGroup
       X: NonMusicalPaperColumn
          X,Y: System
       Y: VerticalAlignment
          X: NonMusicalPaperColumn
             X,Y: System
          Y: System



"
  doctitle = "Displaying grob ancestry"
} % begin verbatim

#(define (grob-name grob)
   (if (ly:grob? grob)
       (assoc-ref (ly:grob-property grob 'meta) 'name)
       #f))

#(define (get-ancestry grob)
   (if (not (null? (ly:grob-parent grob X)))
       (list (grob-name grob)
             (get-ancestry (ly:grob-parent grob X))
             (get-ancestry (ly:grob-parent grob Y)))
       (grob-name grob)))

#(define (format-ancestry lst padding)
   (string-append
    (symbol->string (car lst))
    "\n"
    (let ((X-ancestry
           (if (list? (cadr lst))
               (format-ancestry (cadr lst) (+ padding 3))
               (symbol->string (cadr lst))))
          (Y-ancestry
           (if (list? (caddr lst))
               (format-ancestry (caddr lst) (+ padding 3))
               (symbol->string (caddr lst)))))
      (if (equal? X-ancestry Y-ancestry)
          (string-append
           (format #f "~&")
           (make-string padding #\space)
           "X,Y: "
           (if (list? (cadr lst))
               (format-ancestry (cadr lst) (+ padding 5))
               (symbol->string (cadr lst))))
          (string-append
           (format #f "~&")
           (make-string padding #\space)
           "X: " X-ancestry
           "\n"
           (make-string padding #\space)
           "Y: " Y-ancestry
           (format #f "~&"))))
    (format #f "~&")))

#(define (display-ancestry grob)
   (format (current-error-port)
      "~3&~a~2%~a~&"
      (make-string 36 #\-)
      (format-ancestry (get-ancestry grob) 0)))

\relative c' {
  \once \override NoteHead #'before-line-breaking = #display-ancestry
  f4
  \once \override Accidental #'before-line-breaking = #display-ancestry
  \once \override Arpeggio #'before-line-breaking = #display-ancestry
  <f as c>4\arpeggio
}



% ****************************************************************
% end ly snippet
% ****************************************************************
