import CircleFullInterface
import CircleForestAssembly0346
import CircleForestChunk1341
import CircleForestChunk1342
import CircleForestChunk1343
import CircleForestChunk1344
import CircleForestChunk1345
import CircleForestChunk1346
import CircleForestChunk1347
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1622733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 66)))
theorem cover_1622733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622733 := by
  apply coveredState_split_literal (state := state_1622733) 3
    state_1622734 state_1622775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622734
  · exact cover_1622775
#print axioms cover_1622733

def state_1622732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
theorem cover_1622732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622732 := by
  apply coveredState_split_literal (state := state_1622732) 4
    state_1622733 state_1623006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622733
  · exact cover_1623006
#print axioms cover_1622732

def state_1622412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 33)))
theorem cover_1622412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622412 := by
  apply coveredState_split_literal (state := state_1622412) 0
    state_1622413 state_1622732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622413
  · exact cover_1622732
#print axioms cover_1622412

def state_1623058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 66)))
theorem cover_1623058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623058 := by
  apply coveredState_split_literal (state := state_1623058) 2
    state_1623059 state_1623120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623059
  · exact cover_1623120
#print axioms cover_1623058

def state_1623057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 66)))
theorem cover_1623057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623057 := by
  apply coveredState_split_literal (state := state_1623057) 1
    state_1623058 state_1623129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623058
  · exact cover_1623129
#print axioms cover_1623057

def state_1623033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 66)))
theorem cover_1623033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623033 := by
  apply coveredState_split_literal (state := state_1623033) 3
    state_1623034 state_1623057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623034
  · exact cover_1623057
#print axioms cover_1623033

def state_1623032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
theorem cover_1623032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623032 := by
  apply coveredState_split_literal (state := state_1623032) 4
    state_1623033 state_1623142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623033
  · exact cover_1623142
#print axioms cover_1623032

def state_1623217 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 206) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 66)))
theorem cover_1623217 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623217 := by
  apply coveredState_split_literal (state := state_1623217) 4
    state_1623218 state_1623251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623218
  · exact cover_1623251
#print axioms cover_1623217

def state_1623216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 66)))
theorem cover_1623216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623216 := by
  apply coveredState_split_literal (state := state_1623216) 0
    state_1623217 state_1623306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623217
  · exact cover_1623306
#print axioms cover_1623216

def state_1623215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 66)))
theorem cover_1623215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623215 := by
  apply coveredState_split_literal (state := state_1623215) 2
    state_1623216 state_1623345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623216
  · exact cover_1623345
#print axioms cover_1623215

def state_1623370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 207) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 66)))
theorem cover_1623370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623370 := by
  apply coveredState_split_literal (state := state_1623370) 4
    state_1623371 state_1623416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623371
  · exact cover_1623416
#print axioms cover_1623370

def state_1623369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 210 else (if j.val < 4 then 193 else 66)))
theorem cover_1623369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623369 := by
  apply coveredState_split_literal (state := state_1623369) 0
    state_1623370 state_1623453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623370
  · exact cover_1623453
#print axioms cover_1623369

def state_1623368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 66)))
theorem cover_1623368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623368 := by
  apply coveredState_split_literal (state := state_1623368) 2
    state_1623369 state_1623476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623369
  · exact cover_1623476
#print axioms cover_1623368

def state_1623214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 66)))
theorem cover_1623214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623214 := by
  apply coveredState_split_literal (state := state_1623214) 1
    state_1623215 state_1623368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623215
  · exact cover_1623368
#print axioms cover_1623214

def state_1623180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 66)))
theorem cover_1623180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623180 := by
  apply coveredState_split_literal (state := state_1623180) 3
    state_1623181 state_1623214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623181
  · exact cover_1623214
#print axioms cover_1623180

def state_1623520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 67)))
theorem cover_1623520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623520 := by
  apply coveredState_split_literal (state := state_1623520) 2
    state_1623521 state_1623582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623521
  · exact cover_1623582
#print axioms cover_1623520

def state_1623519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 193 else 67)))
theorem cover_1623519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623519 := by
  apply coveredState_split_literal (state := state_1623519) 1
    state_1623520 state_1623639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623520
  · exact cover_1623639
#print axioms cover_1623519

def state_1623499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 67)))
theorem cover_1623499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623499 := by
  apply coveredState_split_literal (state := state_1623499) 3
    state_1623500 state_1623519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623500
  · exact cover_1623519
#print axioms cover_1623499

def state_1623179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
theorem cover_1623179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623179 := by
  apply coveredState_split_literal (state := state_1623179) 4
    state_1623180 state_1623499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623180
  · exact cover_1623499
#print axioms cover_1623179

def state_1623031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
theorem cover_1623031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623031 := by
  apply coveredState_split_literal (state := state_1623031) 0
    state_1623032 state_1623179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623032
  · exact cover_1623179
#print axioms cover_1623031

def state_1622411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
theorem cover_1622411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622411 := by
  apply coveredState_split_literal (state := state_1622411) 2
    state_1622412 state_1623031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622412
  · exact cover_1623031
#print axioms cover_1622411

def state_1622223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
theorem cover_1622223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1622223 := by
  apply coveredState_split_literal (state := state_1622223) 1
    state_1622224 state_1622411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1622224
  · exact cover_1622411
#print axioms cover_1622223

def state_1623741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 33)))
theorem cover_1623741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623741 := by
  apply coveredState_split_literal (state := state_1623741) 4
    state_1623742 state_1623791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623742
  · exact cover_1623791
#print axioms cover_1623741

def state_1623727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 97 else 33)))
theorem cover_1623727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623727 := by
  apply coveredState_split_literal (state := state_1623727) 0
    state_1623728 state_1623741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623728
  · exact cover_1623741
#print axioms cover_1623727

def state_1623838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 194 else 66)))
theorem cover_1623838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623838 := by
  apply coveredState_split_literal (state := state_1623838) 1
    state_1623839 state_1623870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623839
  · exact cover_1623870
#print axioms cover_1623838

def state_1623837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 66)))
theorem cover_1623837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623837 := by
  apply coveredState_split_literal (state := state_1623837) 3
    state_1623838 state_1623911
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623838
  · exact cover_1623911
#print axioms cover_1623837

def state_1623920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 206) else (if j.val < 3 then 105 else (if j.val < 4 then 194 else 67)))
theorem cover_1623920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623920 := by
  apply coveredState_split_literal (state := state_1623920) 2
    state_1623921 state_1623950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623921
  · exact cover_1623950
#print axioms cover_1623920

def state_1623995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 207) else (if j.val < 3 then 105 else (if j.val < 4 then 194 else 67)))
theorem cover_1623995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623995 := by
  apply coveredState_split_literal (state := state_1623995) 2
    state_1623996 state_1624015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623996
  · exact cover_1624015
#print axioms cover_1623995

def state_1623919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 194 else 67)))
theorem cover_1623919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623919 := by
  apply coveredState_split_literal (state := state_1623919) 1
    state_1623920 state_1623995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623920
  · exact cover_1623995
#print axioms cover_1623919

def state_1623918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 67)))
theorem cover_1623918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623918 := by
  apply coveredState_split_literal (state := state_1623918) 3
    state_1623919 state_1624064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623919
  · exact cover_1624064
#print axioms cover_1623918

def state_1623836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 33)))
theorem cover_1623836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623836 := by
  apply coveredState_split_literal (state := state_1623836) 4
    state_1623837 state_1623918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623837
  · exact cover_1623918
#print axioms cover_1623836

def state_1623816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 103) else (if j.val < 3 then 105 else (if j.val < 4 then 97 else 33)))
theorem cover_1623816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1623816 := by
  apply coveredState_split_literal (state := state_1623816) 0
    state_1623817 state_1623836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1623817
  · exact cover_1623836
#print axioms cover_1623816
end Mub6.Numerical.CircleFullD0.Forest
