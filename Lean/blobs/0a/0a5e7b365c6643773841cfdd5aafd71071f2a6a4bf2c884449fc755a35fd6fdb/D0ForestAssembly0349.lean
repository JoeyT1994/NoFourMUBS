import D0FullInterface
import D0ForestAssembly0348
import D0ForestChunk1351
import D0ForestChunk1352
import D0ForestChunk1353
import D0ForestChunk1354
import D0ForestChunk1355
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1624815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 17)))
theorem cover_1624815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624815 := by
  apply coveredState_split_literal (state := state_1624815) 4
    state_1624816 state_1625037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624816
  · exact cover_1625037
#print axioms cover_1624815

def state_1625079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 34)))
theorem cover_1625079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625079 := by
  apply coveredState_split_literal (state := state_1625079) 2
    state_1625080 state_1625087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625080
  · exact cover_1625087
#print axioms cover_1625079

def state_1625065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 34)))
theorem cover_1625065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625065 := by
  apply coveredState_split_literal (state := state_1625065) 1
    state_1625066 state_1625079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625066
  · exact cover_1625079
#print axioms cover_1625065

def state_1625059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 34)))
theorem cover_1625059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625059 := by
  apply coveredState_split_literal (state := state_1625059) 3
    state_1625060 state_1625065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625060
  · exact cover_1625065
#print axioms cover_1625059

def state_1625058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 17)))
theorem cover_1625058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625058 := by
  apply coveredState_split_literal (state := state_1625058) 4
    state_1625059 state_1625148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625059
  · exact cover_1625148
#print axioms cover_1625058

def state_1624814 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 17)))
theorem cover_1624814 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1624814 := by
  apply coveredState_split_literal (state := state_1624814) 0
    state_1624815 state_1625058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1624815
  · exact cover_1625058
#print axioms cover_1624814

def state_1625164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 96 else 34)))
theorem cover_1625164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625164 := by
  apply coveredState_split_literal (state := state_1625164) 1
    state_1625165 state_1625192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625165
  · exact cover_1625192
#print axioms cover_1625164

def state_1625231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
theorem cover_1625231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625231 := by
  apply coveredState_split_literal (state := state_1625231) 0
    state_1625232 state_1625245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625232
  · exact cover_1625245
#print axioms cover_1625231

def state_1625230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
theorem cover_1625230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625230 := by
  apply coveredState_split_literal (state := state_1625230) 2
    state_1625231 state_1625302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625231
  · exact cover_1625302
#print axioms cover_1625230

def state_1625336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 194 else 68)))
theorem cover_1625336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625336 := by
  apply coveredState_split_literal (state := state_1625336) 1
    state_1625337 state_1625386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625337
  · exact cover_1625386
#print axioms cover_1625336

def state_1625335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 68)))
theorem cover_1625335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625335 := by
  apply coveredState_split_literal (state := state_1625335) 3
    state_1625336 state_1625405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625336
  · exact cover_1625405
#print axioms cover_1625335

def state_1625334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
theorem cover_1625334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625334 := by
  apply coveredState_split_literal (state := state_1625334) 4
    state_1625335 state_1625420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625335
  · exact cover_1625420
#print axioms cover_1625334

def state_1625326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
theorem cover_1625326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625326 := by
  apply coveredState_split_literal (state := state_1625326) 0
    state_1625327 state_1625334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625327
  · exact cover_1625334
#print axioms cover_1625326

def state_1625325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
theorem cover_1625325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625325 := by
  apply coveredState_split_literal (state := state_1625325) 2
    state_1625326 state_1625443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625326
  · exact cover_1625443
#print axioms cover_1625325

def state_1625229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
theorem cover_1625229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625229 := by
  apply coveredState_split_literal (state := state_1625229) 1
    state_1625230 state_1625325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625230
  · exact cover_1625325
#print axioms cover_1625229

def state_1625163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 34)))
theorem cover_1625163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625163 := by
  apply coveredState_split_literal (state := state_1625163) 3
    state_1625164 state_1625229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625164
  · exact cover_1625229
#print axioms cover_1625163

def state_1625162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
theorem cover_1625162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625162 := by
  apply coveredState_split_literal (state := state_1625162) 4
    state_1625163 state_1625458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625163
  · exact cover_1625458
#print axioms cover_1625162

def state_1625545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
theorem cover_1625545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625545 := by
  apply coveredState_split_literal (state := state_1625545) 2
    state_1625546 state_1625607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625546
  · exact cover_1625607
#print axioms cover_1625545

def state_1625672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 194 else 68)))
theorem cover_1625672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625672 := by
  apply coveredState_split_literal (state := state_1625672) 1
    state_1625673 state_1625718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625673
  · exact cover_1625718
#print axioms cover_1625672

def state_1625741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 195 else 68)))
theorem cover_1625741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625741 := by
  apply coveredState_split_literal (state := state_1625741) 1
    state_1625742 state_1625775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625742
  · exact cover_1625775
#print axioms cover_1625741

def state_1625671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 68)))
theorem cover_1625671 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625671 := by
  apply coveredState_split_literal (state := state_1625671) 3
    state_1625672 state_1625741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625672
  · exact cover_1625741
#print axioms cover_1625671

def state_1625670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
theorem cover_1625670 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625670 := by
  apply coveredState_split_literal (state := state_1625670) 4
    state_1625671 state_1625806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625671
  · exact cover_1625806
#print axioms cover_1625670

def state_1625669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 106 else (if j.val < 4 then 97 else 34)))
theorem cover_1625669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625669 := by
  apply coveredState_split_literal (state := state_1625669) 0
    state_1625670 state_1625853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625670
  · exact cover_1625853
#print axioms cover_1625669

def state_1625867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 34)))
theorem cover_1625867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625867 := by
  apply coveredState_split_literal (state := state_1625867) 4
    state_1625868 state_1625895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625868
  · exact cover_1625895
#print axioms cover_1625867

def state_1625866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 34)))
theorem cover_1625866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625866 := by
  apply coveredState_split_literal (state := state_1625866) 0
    state_1625867 state_1625954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625867
  · exact cover_1625954
#print axioms cover_1625866

def state_1625668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 103) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
theorem cover_1625668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625668 := by
  apply coveredState_split_literal (state := state_1625668) 2
    state_1625669 state_1625866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625669
  · exact cover_1625866
#print axioms cover_1625668

def state_1625544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
theorem cover_1625544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625544 := by
  apply coveredState_split_literal (state := state_1625544) 1
    state_1625545 state_1625668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625545
  · exact cover_1625668
#print axioms cover_1625544

def state_1625512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 34)))
theorem cover_1625512 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625512 := by
  apply coveredState_split_literal (state := state_1625512) 3
    state_1625513 state_1625544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625513
  · exact cover_1625544
#print axioms cover_1625512

def state_1626016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 107 else (if j.val < 4 then 97 else 35)))
theorem cover_1626016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626016 := by
  apply coveredState_split_literal (state := state_1626016) 0
    state_1626017 state_1626074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626017
  · exact cover_1626074
#print axioms cover_1626016

def state_1626000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 35)))
theorem cover_1626000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626000 := by
  apply coveredState_split_literal (state := state_1626000) 2
    state_1626001 state_1626016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626001
  · exact cover_1626016
#print axioms cover_1626000

def state_1625999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 35)))
theorem cover_1625999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625999 := by
  apply coveredState_split_literal (state := state_1625999) 1
    state_1626000 state_1626091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626000
  · exact cover_1626091
#print axioms cover_1625999

def state_1625987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 35)))
theorem cover_1625987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1625987 := by
  apply coveredState_split_literal (state := state_1625987) 3
    state_1625988 state_1625999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1625988
  · exact cover_1625999
#print axioms cover_1625987
end Mub6.Numerical.CircleFullD0.Forest
