import TaoFastRows00
import TaoFastRows05
import TaoFastRows10
import TaoFastRows15
import TaoFastRows20
import TaoFastRows25
import TaoFastRows30
import TaoFastRows35
import TaoFastRows40
import TaoFastRows45
import TaoFastRows50
import TaoFastRows55
import TaoFastRows60
import TaoFastRows65
import TaoFastRows70
import TaoFastRows75
import TaoFastRows80
import TaoFastRows85

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

theorem fast_orth_rows_match : ∀ i j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxesFast i) (zBoxesFast j) = O i j := by
  intro i j
  fin_cases i
  · exact fast_integer_row0 j
  · exact fast_integer_row1 j
  · exact fast_integer_row2 j
  · exact fast_integer_row3 j
  · exact fast_integer_row4 j
  · exact fast_integer_row5 j
  · exact fast_integer_row6 j
  · exact fast_integer_row7 j
  · exact fast_integer_row8 j
  · exact fast_integer_row9 j
  · exact fast_integer_row10 j
  · exact fast_integer_row11 j
  · exact fast_integer_row12 j
  · exact fast_integer_row13 j
  · exact fast_integer_row14 j
  · exact fast_integer_row15 j
  · exact fast_integer_row16 j
  · exact fast_integer_row17 j
  · exact fast_integer_row18 j
  · exact fast_integer_row19 j
  · exact fast_integer_row20 j
  · exact fast_integer_row21 j
  · exact fast_integer_row22 j
  · exact fast_integer_row23 j
  · exact fast_integer_row24 j
  · exact fast_integer_row25 j
  · exact fast_integer_row26 j
  · exact fast_integer_row27 j
  · exact fast_integer_row28 j
  · exact fast_integer_row29 j
  · exact fast_integer_row30 j
  · exact fast_integer_row31 j
  · exact fast_integer_row32 j
  · exact fast_integer_row33 j
  · exact fast_integer_row34 j
  · exact fast_integer_row35 j
  · exact fast_integer_row36 j
  · exact fast_integer_row37 j
  · exact fast_integer_row38 j
  · exact fast_integer_row39 j
  · exact fast_integer_row40 j
  · exact fast_integer_row41 j
  · exact fast_integer_row42 j
  · exact fast_integer_row43 j
  · exact fast_integer_row44 j
  · exact fast_integer_row45 j
  · exact fast_integer_row46 j
  · exact fast_integer_row47 j
  · exact fast_integer_row48 j
  · exact fast_integer_row49 j
  · exact fast_integer_row50 j
  · exact fast_integer_row51 j
  · exact fast_integer_row52 j
  · exact fast_integer_row53 j
  · exact fast_integer_row54 j
  · exact fast_integer_row55 j
  · exact fast_integer_row56 j
  · exact fast_integer_row57 j
  · exact fast_integer_row58 j
  · exact fast_integer_row59 j
  · exact fast_integer_row60 j
  · exact fast_integer_row61 j
  · exact fast_integer_row62 j
  · exact fast_integer_row63 j
  · exact fast_integer_row64 j
  · exact fast_integer_row65 j
  · exact fast_integer_row66 j
  · exact fast_integer_row67 j
  · exact fast_integer_row68 j
  · exact fast_integer_row69 j
  · exact fast_integer_row70 j
  · exact fast_integer_row71 j
  · exact fast_integer_row72 j
  · exact fast_integer_row73 j
  · exact fast_integer_row74 j
  · exact fast_integer_row75 j
  · exact fast_integer_row76 j
  · exact fast_integer_row77 j
  · exact fast_integer_row78 j
  · exact fast_integer_row79 j
  · exact fast_integer_row80 j
  · exact fast_integer_row81 j
  · exact fast_integer_row82 j
  · exact fast_integer_row83 j
  · exact fast_integer_row84 j
  · exact fast_integer_row85 j
  · exact fast_integer_row86 j
  · exact fast_integer_row87 j
  · exact fast_integer_row88 j
  · exact fast_integer_row89 j

#print axioms fast_orth_rows_match

end Mub6.Numerical.GraphKernel.TaoCatalogue
