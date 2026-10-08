import CircleFullInterface
import CircleForestAssembly0205
import CircleForestChunk0776
import CircleForestChunk0777
import CircleForestChunk0778
import CircleForestChunk0779
import CircleForestChunk0780
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1487167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 13)))
theorem cover_1487167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487167 := by
  apply coveredState_split_literal (state := state_1487167) 4
    state_1487168 state_1487195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487168
  · exact cover_1487195
#print axioms cover_1487167

def state_1487166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 13)))
theorem cover_1487166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487166 := by
  apply coveredState_split_literal (state := state_1487166) 3
    state_1487167 state_1487270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487167
  · exact cover_1487270
#print axioms cover_1487166

def state_1487165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_1487165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487165 := by
  apply coveredState_split_literal (state := state_1487165) 2
    state_1487166 state_1487281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487166
  · exact cover_1487281
#print axioms cover_1487165

def state_1487164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_1487164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487164 := by
  apply coveredState_split_literal (state := state_1487164) 0
    state_1487165 state_1487290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487165
  · exact cover_1487290
#print axioms cover_1487164

def state_1487380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487380 := by
  apply coveredState_split_literal (state := state_1487380) 3
    state_1487381 state_1487442
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487381
  · exact cover_1487442
#print axioms cover_1487380

def state_1487545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 55)))
theorem cover_1487545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487545 := by
  apply coveredState_split_literal (state := state_1487545) 0
    state_1487546 state_1487597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487546
  · exact cover_1487597
#print axioms cover_1487545

def state_1487515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 37) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 27)))
theorem cover_1487515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487515 := by
  apply coveredState_split_literal (state := state_1487515) 4
    state_1487516 state_1487545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487516
  · exact cover_1487545
#print axioms cover_1487515

def state_1487514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 37) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 27)))
theorem cover_1487514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487514 := by
  apply coveredState_split_literal (state := state_1487514) 2
    state_1487515 state_1487620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487515
  · exact cover_1487620
#print axioms cover_1487514

def state_1487460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 27)))
theorem cover_1487460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487460 := by
  apply coveredState_split_literal (state := state_1487460) 1
    state_1487461 state_1487514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487461
  · exact cover_1487514
#print axioms cover_1487460

def state_1487459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487459 := by
  apply coveredState_split_literal (state := state_1487459) 3
    state_1487460 state_1487625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487460
  · exact cover_1487625
#print axioms cover_1487459

def state_1487379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487379 := by
  apply coveredState_split_literal (state := state_1487379) 0
    state_1487380 state_1487459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487380
  · exact cover_1487459
#print axioms cover_1487379

def state_1487673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487673 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487673 := by
  apply coveredState_split_literal (state := state_1487673) 3
    state_1487674 state_1487725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487674
  · exact cover_1487725
#print axioms cover_1487673

def state_1487740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 38) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 27)))
theorem cover_1487740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487740 := by
  apply coveredState_split_literal (state := state_1487740) 2
    state_1487741 state_1487802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487741
  · exact cover_1487802
#print axioms cover_1487740

def state_1487739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 27)))
theorem cover_1487739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487739 := by
  apply coveredState_split_literal (state := state_1487739) 1
    state_1487740 state_1487809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487740
  · exact cover_1487809
#print axioms cover_1487739

def state_1487738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487738 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487738 := by
  apply coveredState_split_literal (state := state_1487738) 3
    state_1487739 state_1487822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487739
  · exact cover_1487822
#print axioms cover_1487738

def state_1487672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487672 := by
  apply coveredState_split_literal (state := state_1487672) 0
    state_1487673 state_1487738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487673
  · exact cover_1487738
#print axioms cover_1487672

def state_1487378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487378 := by
  apply coveredState_split_literal (state := state_1487378) 1
    state_1487379 state_1487672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487379
  · exact cover_1487672
#print axioms cover_1487378

def state_1487340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 13)))
theorem cover_1487340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487340 := by
  apply coveredState_split_literal (state := state_1487340) 4
    state_1487341 state_1487378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487341
  · exact cover_1487378
#print axioms cover_1487340

def state_1487339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 13)))
theorem cover_1487339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487339 := by
  apply coveredState_split_literal (state := state_1487339) 3
    state_1487340 state_1487851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487340
  · exact cover_1487851
#print axioms cover_1487339

def state_1487338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_1487338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487338 := by
  apply coveredState_split_literal (state := state_1487338) 2
    state_1487339 state_1487892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487339
  · exact cover_1487892
#print axioms cover_1487338

def state_1487936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487936 := by
  apply coveredState_split_literal (state := state_1487936) 0
    state_1487937 state_1487988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487937
  · exact cover_1487988
#print axioms cover_1487936

def state_1488003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1488003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488003 := by
  apply coveredState_split_literal (state := state_1488003) 0
    state_1488004 state_1488057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488004
  · exact cover_1488057
#print axioms cover_1488003

def state_1487935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 27)))
theorem cover_1487935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487935 := by
  apply coveredState_split_literal (state := state_1487935) 1
    state_1487936 state_1488003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487936
  · exact cover_1488003
#print axioms cover_1487935

def state_1487915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 13)))
theorem cover_1487915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487915 := by
  apply coveredState_split_literal (state := state_1487915) 4
    state_1487916 state_1487935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487916
  · exact cover_1487935
#print axioms cover_1487915

def state_1487914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 13)))
theorem cover_1487914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487914 := by
  apply coveredState_split_literal (state := state_1487914) 3
    state_1487915 state_1488076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487915
  · exact cover_1488076
#print axioms cover_1487914

def state_1487913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_1487913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487913 := by
  apply coveredState_split_literal (state := state_1487913) 2
    state_1487914 state_1488111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487914
  · exact cover_1488111
#print axioms cover_1487913

def state_1487337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_1487337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487337 := by
  apply coveredState_split_literal (state := state_1487337) 0
    state_1487338 state_1487913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487338
  · exact cover_1487913
#print axioms cover_1487337

def state_1487163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 13)))
theorem cover_1487163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487163 := by
  apply coveredState_split_literal (state := state_1487163) 1
    state_1487164 state_1487337
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487164
  · exact cover_1487337
#print axioms cover_1487163

def state_1487143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
theorem cover_1487143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1487143 := by
  apply coveredState_split_literal (state := state_1487143) 4
    state_1487144 state_1487163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1487144
  · exact cover_1487163
#print axioms cover_1487143

def state_1486777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_1486777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486777 := by
  apply coveredState_split_literal (state := state_1486777) 3
    state_1486778 state_1487143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486778
  · exact cover_1487143
#print axioms cover_1486777

def state_1486776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1486776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486776 := by
  apply coveredState_split_literal (state := state_1486776) 2
    state_1486777 state_1488132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486777
  · exact cover_1488132
#print axioms cover_1486776

def state_1488155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1488155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488155 := by
  apply coveredState_split_literal (state := state_1488155) 2
    state_1488156 state_1488211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488156
  · exact cover_1488211
#print axioms cover_1488155
end Mub6.Numerical.CircleFullD0.Forest
