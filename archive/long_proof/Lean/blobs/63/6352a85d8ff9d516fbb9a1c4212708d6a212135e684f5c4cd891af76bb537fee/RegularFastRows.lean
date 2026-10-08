import RegularFastRows00
import RegularFastRows05
import RegularFastRows10
import RegularFastRows15
import RegularFastRows20
import RegularFastRows25
import RegularFastRows30
import RegularFastRows35
import RegularFastRows40
import RegularFastRows45

namespace Mub6.Numerical.GraphKernel.RegularCatalogue

theorem fast_orth_rows_match : ∀ i j : Fin 48,
    IntegerIntervals.orthPossible 32 (zBoxesFast i) (zBoxesFast j) = O i j := by
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

#print axioms fast_orth_rows_match

end Mub6.Numerical.GraphKernel.RegularCatalogue
