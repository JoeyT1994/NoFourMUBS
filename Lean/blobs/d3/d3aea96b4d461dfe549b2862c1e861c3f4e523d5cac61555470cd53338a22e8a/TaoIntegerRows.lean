import TaoIntegerRows00
import TaoIntegerRows05
import TaoIntegerRows10
import TaoIntegerRows15
import TaoIntegerRows20
import TaoIntegerRows25
import TaoIntegerRows30
import TaoIntegerRows35
import TaoIntegerRows40
import TaoIntegerRows45
import TaoIntegerRows50
import TaoIntegerRows55
import TaoIntegerRows60
import TaoIntegerRows65
import TaoIntegerRows70
import TaoIntegerRows75
import TaoIntegerRows80
import TaoIntegerRows85

namespace Mub6.Numerical.GraphKernel.TaoCatalogue

theorem integer_orth_rows_match : ∀ i j : Fin 90,
    IntegerIntervals.orthPossible 16 (zBoxes i) (zBoxes j) = O i j := by
  intro i j
  fin_cases i
  · exact integer_row0 j
  · exact integer_row1 j
  · exact integer_row2 j
  · exact integer_row3 j
  · exact integer_row4 j
  · exact integer_row5 j
  · exact integer_row6 j
  · exact integer_row7 j
  · exact integer_row8 j
  · exact integer_row9 j
  · exact integer_row10 j
  · exact integer_row11 j
  · exact integer_row12 j
  · exact integer_row13 j
  · exact integer_row14 j
  · exact integer_row15 j
  · exact integer_row16 j
  · exact integer_row17 j
  · exact integer_row18 j
  · exact integer_row19 j
  · exact integer_row20 j
  · exact integer_row21 j
  · exact integer_row22 j
  · exact integer_row23 j
  · exact integer_row24 j
  · exact integer_row25 j
  · exact integer_row26 j
  · exact integer_row27 j
  · exact integer_row28 j
  · exact integer_row29 j
  · exact integer_row30 j
  · exact integer_row31 j
  · exact integer_row32 j
  · exact integer_row33 j
  · exact integer_row34 j
  · exact integer_row35 j
  · exact integer_row36 j
  · exact integer_row37 j
  · exact integer_row38 j
  · exact integer_row39 j
  · exact integer_row40 j
  · exact integer_row41 j
  · exact integer_row42 j
  · exact integer_row43 j
  · exact integer_row44 j
  · exact integer_row45 j
  · exact integer_row46 j
  · exact integer_row47 j
  · exact integer_row48 j
  · exact integer_row49 j
  · exact integer_row50 j
  · exact integer_row51 j
  · exact integer_row52 j
  · exact integer_row53 j
  · exact integer_row54 j
  · exact integer_row55 j
  · exact integer_row56 j
  · exact integer_row57 j
  · exact integer_row58 j
  · exact integer_row59 j
  · exact integer_row60 j
  · exact integer_row61 j
  · exact integer_row62 j
  · exact integer_row63 j
  · exact integer_row64 j
  · exact integer_row65 j
  · exact integer_row66 j
  · exact integer_row67 j
  · exact integer_row68 j
  · exact integer_row69 j
  · exact integer_row70 j
  · exact integer_row71 j
  · exact integer_row72 j
  · exact integer_row73 j
  · exact integer_row74 j
  · exact integer_row75 j
  · exact integer_row76 j
  · exact integer_row77 j
  · exact integer_row78 j
  · exact integer_row79 j
  · exact integer_row80 j
  · exact integer_row81 j
  · exact integer_row82 j
  · exact integer_row83 j
  · exact integer_row84 j
  · exact integer_row85 j
  · exact integer_row86 j
  · exact integer_row87 j
  · exact integer_row88 j
  · exact integer_row89 j

#print axioms integer_orth_rows_match

end Mub6.Numerical.GraphKernel.TaoCatalogue
