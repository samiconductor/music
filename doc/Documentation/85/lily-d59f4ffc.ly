%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,ragged-right,relative=2]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  ragged-right = ##t
}

\layout {
  
}



\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 2292
% このマークアップは短いため衝突は起きません
c2^"Tex" c'' |
R1 |

% このマークアップは長くて納まりきらないため、上に押し上げられます
c,,2^"Text" c'' |
R1 |

% 衝突回避を OFF にします
\once \override TextScript #'outside-staff-priority = ##f
c,,2^"Long Text   " c'' |
R1 |

% 衝突回避を OFF にします
\once \override TextScript #'outside-staff-priority = ##f
\textLengthOn        % そして textLengthOn を ON にします
c,,2^"Long Text   "  % 後ろにスペースが付け加えられます
c''2 |



% ****************************************************************
% end ly snippet
% ****************************************************************
}
