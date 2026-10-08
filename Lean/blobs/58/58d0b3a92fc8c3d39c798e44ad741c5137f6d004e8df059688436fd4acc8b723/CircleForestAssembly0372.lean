import CircleFullInterface
import CircleForestAssembly0370
import CircleForestAssembly0371
import CircleForestChunk1450
import CircleForestChunk1451
import CircleForestChunk1452
import CircleForestChunk1453
import CircleForestChunk1454
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1648978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 43)))
theorem cover_1648978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648978 := by
  apply coveredState_split_literal (state := state_1648978) 1
    state_1648979 state_1649040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648979
  · exact cover_1649040
#print axioms cover_1648978

def state_1648936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 43)))
theorem cover_1648936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648936 := by
  apply coveredState_split_literal (state := state_1648936) 2
    state_1648937 state_1648978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648937
  · exact cover_1648978
#print axioms cover_1648936

def state_1648774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 53 else 21)))
theorem cover_1648774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648774 := by
  apply coveredState_split_literal (state := state_1648774) 4
    state_1648775 state_1648936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648775
  · exact cover_1648936
#print axioms cover_1648774

def state_1648428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1648428 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648428 := by
  apply coveredState_split_literal (state := state_1648428) 3
    state_1648429 state_1648774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648429
  · exact cover_1648774
#print axioms cover_1648428

def state_1648344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1648344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648344 := by
  apply coveredState_split_literal (state := state_1648344) 0
    state_1648345 state_1648428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648345
  · exact cover_1648428
#print axioms cover_1648344

def state_1648343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 21)))
theorem cover_1648343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648343 := by
  apply coveredState_split_literal (state := state_1648343) 1
    state_1648344 state_1649051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648344
  · exact cover_1649051
#print axioms cover_1648343

def state_1648247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 21)))
theorem cover_1648247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1648247 := by
  apply coveredState_split_literal (state := state_1648247) 2
    state_1648248 state_1648343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1648248
  · exact cover_1648343
#print axioms cover_1648247

def state_1646753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1646753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646753 := by
  apply coveredState_split_literal (state := state_1646753) 4
    state_1646754 state_1648247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646754
  · exact cover_1648247
#print axioms cover_1646753

def state_1649120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 21)))
theorem cover_1649120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649120 := by
  apply coveredState_split_literal (state := state_1649120) 2
    state_1649121 state_1649130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649121
  · exact cover_1649130
#print axioms cover_1649120

def state_1649106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 10)))
theorem cover_1649106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649106 := by
  apply coveredState_split_literal (state := state_1649106) 4
    state_1649107 state_1649120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649107
  · exact cover_1649120
#print axioms cover_1649106

def state_1646752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1646752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646752 := by
  apply coveredState_split_literal (state := state_1646752) 3
    state_1646753 state_1649106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646753
  · exact cover_1649106
#print axioms cover_1646752

def state_1646650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1646650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646650 := by
  apply coveredState_split_literal (state := state_1646650) 0
    state_1646651 state_1646752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1646651
  · exact cover_1646752
#print axioms cover_1646650

def state_1645082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1645082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645082 := by
  apply coveredState_split_literal (state := state_1645082) 1
    state_1645083 state_1646650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645083
  · exact cover_1646650
#print axioms cover_1645082

def state_1649352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 104 else 41)))
theorem cover_1649352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649352 := by
  apply coveredState_split_literal (state := state_1649352) 4
    state_1649353 state_1649410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649353
  · exact cover_1649410
#print axioms cover_1649352

def state_1649351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1649351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649351 := by
  apply coveredState_split_literal (state := state_1649351) 3
    state_1649352 state_1649449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649352
  · exact cover_1649449
#print axioms cover_1649351

def state_1649309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1649309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649309 := by
  apply coveredState_split_literal (state := state_1649309) 0
    state_1649310 state_1649351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649310
  · exact cover_1649351
#print axioms cover_1649309

def state_1649273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1649273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649273 := by
  apply coveredState_split_literal (state := state_1649273) 1
    state_1649274 state_1649309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649274
  · exact cover_1649309
#print axioms cover_1649273

def state_1649527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 82)))
theorem cover_1649527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649527 := by
  apply coveredState_split_literal (state := state_1649527) 1
    state_1649528 state_1649535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649528
  · exact cover_1649535
#print axioms cover_1649527

def state_1649526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 82)))
theorem cover_1649526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649526 := by
  apply coveredState_split_literal (state := state_1649526) 2
    state_1649527 state_1649598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649527
  · exact cover_1649598
#print axioms cover_1649526

def state_1649525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 41)))
theorem cover_1649525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649525 := by
  apply coveredState_split_literal (state := state_1649525) 4
    state_1649526 state_1649607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649526
  · exact cover_1649607
#print axioms cover_1649525

def state_1649524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1649524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649524 := by
  apply coveredState_split_literal (state := state_1649524) 3
    state_1649525 state_1649628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649525
  · exact cover_1649628
#print axioms cover_1649524

def state_1649518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1649518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649518 := by
  apply coveredState_split_literal (state := state_1649518) 0
    state_1649519 state_1649524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649519
  · exact cover_1649524
#print axioms cover_1649518

def state_1649510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1649510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649510 := by
  apply coveredState_split_literal (state := state_1649510) 1
    state_1649511 state_1649518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649511
  · exact cover_1649518
#print axioms cover_1649510

def state_1649272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 41)))
theorem cover_1649272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649272 := by
  apply coveredState_split_literal (state := state_1649272) 2
    state_1649273 state_1649510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649273
  · exact cover_1649510
#print axioms cover_1649272

def state_1649220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 20)))
theorem cover_1649220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649220 := by
  apply coveredState_split_literal (state := state_1649220) 4
    state_1649221 state_1649272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649221
  · exact cover_1649272
#print axioms cover_1649220

def state_1649219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1649219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649219 := by
  apply coveredState_split_literal (state := state_1649219) 3
    state_1649220 state_1649649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649220
  · exact cover_1649649
#print axioms cover_1649219

def state_1649203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1649203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649203 := by
  apply coveredState_split_literal (state := state_1649203) 0
    state_1649204 state_1649219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649204
  · exact cover_1649219
#print axioms cover_1649203

def state_1649195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1649195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649195 := by
  apply coveredState_split_literal (state := state_1649195) 1
    state_1649196 state_1649203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649196
  · exact cover_1649203
#print axioms cover_1649195

def state_1649194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 20)))
theorem cover_1649194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649194 := by
  apply coveredState_split_literal (state := state_1649194) 2
    state_1649195 state_1649662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649195
  · exact cover_1649662
#print axioms cover_1649194

def state_1649777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 120 else (if j.val < 4 then 105 else 84)))
theorem cover_1649777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649777 := by
  apply coveredState_split_literal (state := state_1649777) 1
    state_1649778 state_1649809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649778
  · exact cover_1649809
#print axioms cover_1649777

def state_1649776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 84)))
theorem cover_1649776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649776 := by
  apply coveredState_split_literal (state := state_1649776) 2
    state_1649777 state_1649872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649777
  · exact cover_1649872
#print axioms cover_1649776

def state_1649775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 42)))
theorem cover_1649775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649775 := by
  apply coveredState_split_literal (state := state_1649775) 4
    state_1649776 state_1649909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649776
  · exact cover_1649909
#print axioms cover_1649775
end Mub6.Numerical.CircleFullD0.Forest
