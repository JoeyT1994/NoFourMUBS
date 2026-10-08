import CircleFullInterface
import CircleForestAssembly0310
import CircleForestAssembly0311
import CircleForestChunk1201
import CircleForestChunk1203
import CircleForestChunk1204
import CircleForestChunk1205
import CircleForestChunk1206
import CircleForestChunk1207
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1588897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
theorem cover_1588897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588897 := by
  apply coveredState_split_literal (state := state_1588897) 2
    state_1588898 state_1589225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588898
  · exact cover_1589225
#print axioms cover_1588897

def state_1589251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 50)))
theorem cover_1589251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589251 := by
  apply coveredState_split_literal (state := state_1589251) 0
    state_1589252 state_1589301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589252
  · exact cover_1589301
#print axioms cover_1589251

def state_1589250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 50)))
theorem cover_1589250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589250 := by
  apply coveredState_split_literal (state := state_1589250) 1
    state_1589251 state_1589328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589251
  · exact cover_1589328
#print axioms cover_1589250

def state_1589364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 38) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
theorem cover_1589364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589364 := by
  apply coveredState_split_literal (state := state_1589364) 0
    state_1589365 state_1589410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589365
  · exact cover_1589410
#print axioms cover_1589364

def state_1589363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
theorem cover_1589363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589363 := by
  apply coveredState_split_literal (state := state_1589363) 1
    state_1589364 state_1589457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589364
  · exact cover_1589457
#print axioms cover_1589363

def state_1589249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 25)))
theorem cover_1589249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589249 := by
  apply coveredState_split_literal (state := state_1589249) 4
    state_1589250 state_1589363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589250
  · exact cover_1589363
#print axioms cover_1589249

def state_1589476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 27 else 25)))
theorem cover_1589476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589476 := by
  apply coveredState_split_literal (state := state_1589476) 4
    state_1589477 state_1589518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589477
  · exact cover_1589518
#print axioms cover_1589476

def state_1589248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
theorem cover_1589248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589248 := by
  apply coveredState_split_literal (state := state_1589248) 2
    state_1589249 state_1589476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589249
  · exact cover_1589476
#print axioms cover_1589248

def state_1588896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 25)))
theorem cover_1588896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588896 := by
  apply coveredState_split_literal (state := state_1588896) 1
    state_1588897 state_1589248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588897
  · exact cover_1589248
#print axioms cover_1588896

def state_1588846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
theorem cover_1588846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588846 := by
  apply coveredState_split_literal (state := state_1588846) 3
    state_1588847 state_1588896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588847
  · exact cover_1588896
#print axioms cover_1588846

def state_1588845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
theorem cover_1588845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588845 := by
  apply coveredState_split_literal (state := state_1588845) 0
    state_1588846 state_1589563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588846
  · exact cover_1589563
#print axioms cover_1588845

def state_1588789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 12)))
theorem cover_1588789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588789 := by
  apply coveredState_split_literal (state := state_1588789) 4
    state_1588790 state_1588845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588790
  · exact cover_1588845
#print axioms cover_1588789

def state_1587881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1587881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587881 := by
  apply coveredState_split_literal (state := state_1587881) 2
    state_1587882 state_1588789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587882
  · exact cover_1588789
#print axioms cover_1587881

def state_1587241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1587241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587241 := by
  apply coveredState_split_literal (state := state_1587241) 1
    state_1587242 state_1587881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587242
  · exact cover_1587881
#print axioms cover_1587241

def state_1589667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1589667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589667 := by
  apply coveredState_split_literal (state := state_1589667) 2
    state_1589668 state_1589683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589668
  · exact cover_1589683
#print axioms cover_1589667

def state_1589617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1589617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589617 := by
  apply coveredState_split_literal (state := state_1589617) 1
    state_1589618 state_1589667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589618
  · exact cover_1589667
#print axioms cover_1589617

def state_1589616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 13)))
theorem cover_1589616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589616 := by
  apply coveredState_split_literal (state := state_1589616) 4
    state_1589617 state_1589736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589617
  · exact cover_1589736
#print axioms cover_1589616

def state_1589838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 26)))
theorem cover_1589838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589838 := by
  apply coveredState_split_literal (state := state_1589838) 4
    state_1589839 state_1589896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589839
  · exact cover_1589896
#print axioms cover_1589838

def state_1589810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1589810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589810 := by
  apply coveredState_split_literal (state := state_1589810) 2
    state_1589811 state_1589838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589811
  · exact cover_1589838
#print axioms cover_1589810

def state_1589772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1589772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589772 := by
  apply coveredState_split_literal (state := state_1589772) 1
    state_1589773 state_1589810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589773
  · exact cover_1589810
#print axioms cover_1589772

def state_1589771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 13)))
theorem cover_1589771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589771 := by
  apply coveredState_split_literal (state := state_1589771) 4
    state_1589772 state_1589909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589772
  · exact cover_1589909
#print axioms cover_1589771

def state_1589615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
theorem cover_1589615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589615 := by
  apply coveredState_split_literal (state := state_1589615) 3
    state_1589616 state_1589771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589616
  · exact cover_1589771
#print axioms cover_1589615

def state_1589614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
theorem cover_1589614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589614 := by
  apply coveredState_split_literal (state := state_1589614) 0
    state_1589615 state_1589922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589615
  · exact cover_1589922
#print axioms cover_1589614

def state_1589613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1589613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589613 := by
  apply coveredState_split_literal (state := state_1589613) 2
    state_1589614 state_1589941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589614
  · exact cover_1589941
#print axioms cover_1589613

def state_1590026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 26)))
theorem cover_1590026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590026 := by
  apply coveredState_split_literal (state := state_1590026) 4
    state_1590027 state_1590086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590027
  · exact cover_1590086
#print axioms cover_1590026

def state_1590016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1590016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590016 := by
  apply coveredState_split_literal (state := state_1590016) 2
    state_1590017 state_1590026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590017
  · exact cover_1590026
#print axioms cover_1590016

def state_1590015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 26)))
theorem cover_1590015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590015 := by
  apply coveredState_split_literal (state := state_1590015) 1
    state_1590016 state_1590093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590016
  · exact cover_1590093
#print axioms cover_1590015

def state_1590014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 13)))
theorem cover_1590014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590014 := by
  apply coveredState_split_literal (state := state_1590014) 4
    state_1590015 state_1590098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590015
  · exact cover_1590098
#print axioms cover_1590014

def state_1589994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
theorem cover_1589994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589994 := by
  apply coveredState_split_literal (state := state_1589994) 3
    state_1589995 state_1590014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589995
  · exact cover_1590014
#print axioms cover_1589994

def state_1589993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
theorem cover_1589993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589993 := by
  apply coveredState_split_literal (state := state_1589993) 0
    state_1589994 state_1590107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589994
  · exact cover_1590107
#print axioms cover_1589993

def state_1590175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 52)))
theorem cover_1590175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590175 := by
  apply coveredState_split_literal (state := state_1590175) 1
    state_1590176 state_1590209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590176
  · exact cover_1590209
#print axioms cover_1590175

def state_1590174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 26)))
theorem cover_1590174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590174 := by
  apply coveredState_split_literal (state := state_1590174) 4
    state_1590175 state_1590244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590175
  · exact cover_1590244
#print axioms cover_1590174
end Mub6.Numerical.CircleFullD0.Forest
