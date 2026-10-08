import RegularIntegerRows00
import RegularIntegerRows05
import RegularIntegerRows10
import RegularIntegerRows15
import RegularIntegerRows20
import RegularIntegerRows25
import RegularIntegerRows30
import RegularIntegerRows35
import RegularIntegerRows40
import RegularIntegerRows45

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

theorem integer_orth_rows_match : ∀ i j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxes i) (zBoxes j) = O i j := by
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

#print axioms integer_orth_rows_match

end Mub6.Numerical.GraphKernel.RegularCatalogue
