import CircleFullInterface
import CircleForestAssembly0301
import CircleForestChunk1159
import CircleForestChunk1160
import CircleForestChunk1161
import CircleForestChunk1162
import CircleForestChunk1163
import CircleForestChunk1164
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1578750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 102)))
theorem cover_1578750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578750 := by
  apply coveredState_split_literal (state := state_1578750) 0
    state_1578751 state_1578802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578751
  · exact cover_1578802
#print axioms cover_1578750

def state_1578674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 102)))
theorem cover_1578674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578674 := by
  apply coveredState_split_literal (state := state_1578674) 3
    state_1578675 state_1578750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578675
  · exact cover_1578750
#print axioms cover_1578674

def state_1578894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 153 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 206)))
theorem cover_1578894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578894 := by
  apply coveredState_split_literal (state := state_1578894) 1
    state_1578895 state_1578954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578895
  · exact cover_1578954
#print axioms cover_1578894

def state_1578886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 209 else 206)))
theorem cover_1578886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578886 := by
  apply coveredState_split_literal (state := state_1578886) 0
    state_1578887 state_1578894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578887
  · exact cover_1578894
#print axioms cover_1578886

def state_1578866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 206)))
theorem cover_1578866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578866 := by
  apply coveredState_split_literal (state := state_1578866) 3
    state_1578867 state_1578886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578867
  · exact cover_1578886
#print axioms cover_1578866

def state_1578963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 207)))
theorem cover_1578963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578963 := by
  apply coveredState_split_literal (state := state_1578963) 3
    state_1578964 state_1578989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578964
  · exact cover_1578989
#print axioms cover_1578963

def state_1578865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 192 else (if j.val < 4 then 104 else 103)))
theorem cover_1578865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578865 := by
  apply coveredState_split_literal (state := state_1578865) 4
    state_1578866 state_1578963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578866
  · exact cover_1578963
#print axioms cover_1578865

def state_1579039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 206)))
theorem cover_1579039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579039 := by
  apply coveredState_split_literal (state := state_1579039) 3
    state_1579040 state_1579061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579040
  · exact cover_1579061
#print axioms cover_1579039

def state_1579038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 103)))
theorem cover_1579038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579038 := by
  apply coveredState_split_literal (state := state_1579038) 4
    state_1579039 state_1579124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579039
  · exact cover_1579124
#print axioms cover_1579038

def state_1578864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1578864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578864 := by
  apply coveredState_split_literal (state := state_1578864) 2
    state_1578865 state_1579038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578865
  · exact cover_1579038
#print axioms cover_1578864

def state_1578863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1578863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578863 := by
  apply coveredState_split_literal (state := state_1578863) 1
    state_1578864 state_1579161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578864
  · exact cover_1579161
#print axioms cover_1578863

def state_1579241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 206)))
theorem cover_1579241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579241 := by
  apply coveredState_split_literal (state := state_1579241) 1
    state_1579242 state_1579297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579242
  · exact cover_1579297
#print axioms cover_1579241

def state_1579240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 206)))
theorem cover_1579240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579240 := by
  apply coveredState_split_literal (state := state_1579240) 0
    state_1579241 state_1579326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579241
  · exact cover_1579326
#print axioms cover_1579240

def state_1579226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 206)))
theorem cover_1579226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579226 := by
  apply coveredState_split_literal (state := state_1579226) 3
    state_1579227 state_1579240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579227
  · exact cover_1579240
#print axioms cover_1579226

def state_1579363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 132) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
theorem cover_1579363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579363 := by
  apply coveredState_split_literal (state := state_1579363) 2
    state_1579364 state_1579407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579364
  · exact cover_1579407
#print axioms cover_1579363

def state_1579362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
theorem cover_1579362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579362 := by
  apply coveredState_split_literal (state := state_1579362) 1
    state_1579363 state_1579436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579363
  · exact cover_1579436
#print axioms cover_1579362

def state_1579361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
theorem cover_1579361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579361 := by
  apply coveredState_split_literal (state := state_1579361) 0
    state_1579362 state_1579449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579362
  · exact cover_1579449
#print axioms cover_1579361

def state_1579339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 207)))
theorem cover_1579339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579339 := by
  apply coveredState_split_literal (state := state_1579339) 3
    state_1579340 state_1579361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579340
  · exact cover_1579361
#print axioms cover_1579339

def state_1579225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 104 else 103)))
theorem cover_1579225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579225 := by
  apply coveredState_split_literal (state := state_1579225) 4
    state_1579226 state_1579339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579226
  · exact cover_1579339
#print axioms cover_1579225

def state_1579183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1579183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579183 := by
  apply coveredState_split_literal (state := state_1579183) 2
    state_1579184 state_1579225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579184
  · exact cover_1579225
#print axioms cover_1579183

def state_1579182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1579182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579182 := by
  apply coveredState_split_literal (state := state_1579182) 1
    state_1579183 state_1579456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579183
  · exact cover_1579456
#print axioms cover_1579182

def state_1578862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 104 else 103)))
theorem cover_1578862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578862 := by
  apply coveredState_split_literal (state := state_1578862) 0
    state_1578863 state_1579182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578863
  · exact cover_1579182
#print axioms cover_1578862

def state_1579508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 206)))
theorem cover_1579508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579508 := by
  apply coveredState_split_literal (state := state_1579508) 3
    state_1579509 state_1579570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579509
  · exact cover_1579570
#print axioms cover_1579508

def state_1579507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 103)))
theorem cover_1579507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579507 := by
  apply coveredState_split_literal (state := state_1579507) 4
    state_1579508 state_1579579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579508
  · exact cover_1579579
#print axioms cover_1579507

def state_1579483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 66) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
theorem cover_1579483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579483 := by
  apply coveredState_split_literal (state := state_1579483) 2
    state_1579484 state_1579507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579484
  · exact cover_1579507
#print axioms cover_1579483

def state_1579482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
theorem cover_1579482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579482 := by
  apply coveredState_split_literal (state := state_1579482) 1
    state_1579483 state_1579592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579483
  · exact cover_1579592
#print axioms cover_1579482

def state_1579667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 206)))
theorem cover_1579667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579667 := by
  apply coveredState_split_literal (state := state_1579667) 1
    state_1579668 state_1579701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579668
  · exact cover_1579701
#print axioms cover_1579667

def state_1579666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 206)))
theorem cover_1579666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579666 := by
  apply coveredState_split_literal (state := state_1579666) 0
    state_1579667 state_1579756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579667
  · exact cover_1579756
#print axioms cover_1579666

def state_1579665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 206)))
theorem cover_1579665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579665 := by
  apply coveredState_split_literal (state := state_1579665) 3
    state_1579666 state_1579795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579666
  · exact cover_1579795
#print axioms cover_1579665

def state_1579820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 207)))
theorem cover_1579820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579820 := by
  apply coveredState_split_literal (state := state_1579820) 1
    state_1579821 state_1579866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579821
  · exact cover_1579866
#print axioms cover_1579820

def state_1579819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 210 else 207)))
theorem cover_1579819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579819 := by
  apply coveredState_split_literal (state := state_1579819) 0
    state_1579820 state_1579903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579820
  · exact cover_1579903
#print axioms cover_1579819

def state_1579818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 66) else (if j.val < 3 then 193 else (if j.val < 4 then 105 else 207)))
theorem cover_1579818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1579818 := by
  apply coveredState_split_literal (state := state_1579818) 3
    state_1579819 state_1579926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1579819
  · exact cover_1579926
#print axioms cover_1579818
end Mub6.Numerical.CircleFullD0.Forest
