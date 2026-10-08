import CoreCentreRows00
import CoreCentreRows04
import CoreCentreRows08
import CoreCentreRows12
import CoreCentreRows16
import CoreCentreRows20
import CoreCentreRows24
import CoreCentreRows28
import CoreCentreRows32
import CoreCentreRows36
import CoreCentreRows40
import CoreCentreRows44
import Mathlib.Tactic.FinCases

set_option autoImplicit false

namespace Seed0024PhaseCoreBridge20261007

theorem all_centre_entries_eq (k : Fin 48) (i : Fin 5) :
    Seed0024PhaseCore20261007.centreEntry k i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates k i := by
  fin_cases k
  · exact centre_row_00 i
  · exact centre_row_01 i
  · exact centre_row_02 i
  · exact centre_row_03 i
  · exact centre_row_04 i
  · exact centre_row_05 i
  · exact centre_row_06 i
  · exact centre_row_07 i
  · exact centre_row_08 i
  · exact centre_row_09 i
  · exact centre_row_10 i
  · exact centre_row_11 i
  · exact centre_row_12 i
  · exact centre_row_13 i
  · exact centre_row_14 i
  · exact centre_row_15 i
  · exact centre_row_16 i
  · exact centre_row_17 i
  · exact centre_row_18 i
  · exact centre_row_19 i
  · exact centre_row_20 i
  · exact centre_row_21 i
  · exact centre_row_22 i
  · exact centre_row_23 i
  · exact centre_row_24 i
  · exact centre_row_25 i
  · exact centre_row_26 i
  · exact centre_row_27 i
  · exact centre_row_28 i
  · exact centre_row_29 i
  · exact centre_row_30 i
  · exact centre_row_31 i
  · exact centre_row_32 i
  · exact centre_row_33 i
  · exact centre_row_34 i
  · exact centre_row_35 i
  · exact centre_row_36 i
  · exact centre_row_37 i
  · exact centre_row_38 i
  · exact centre_row_39 i
  · exact centre_row_40 i
  · exact centre_row_41 i
  · exact centre_row_42 i
  · exact centre_row_43 i
  · exact centre_row_44 i
  · exact centre_row_45 i
  · exact centre_row_46 i
  · exact centre_row_47 i

theorem centreEntry_eq (k : Fin 48) (i : Fin 5) :
    Seed0024PhaseCore20261007.centreEntry k i =
      Seed0024ClusterTube20261007.roundedCentreCoordinates k i :=
  all_centre_entries_eq k i

end Seed0024PhaseCoreBridge20261007

#print axioms Seed0024PhaseCoreBridge20261007.all_centre_entries_eq
#print axioms Seed0024PhaseCoreBridge20261007.centreEntry_eq
