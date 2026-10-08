import CircleFullInterface
import CircleForestAssembly0213
import CircleForestAssembly0227
import CircleForestAssembly0237
import CircleForestChunk0905
import CircleForestChunk0906
import CircleForestChunk0907
import CircleForestChunk0908
import CircleForestChunk0909
import CircleForestChunk0910
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1518220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 46) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
theorem cover_1518220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518220 := by
  apply coveredState_split_literal (state := state_1518220) 0
    state_1518221 state_1518288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518221
  · exact cover_1518288
#print axioms cover_1518220

def state_1518219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 31)))
theorem cover_1518219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518219 := by
  apply coveredState_split_literal (state := state_1518219) 1
    state_1518220 state_1518325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518220
  · exact cover_1518325
#print axioms cover_1518219

def state_1518207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 15)))
theorem cover_1518207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518207 := by
  apply coveredState_split_literal (state := state_1518207) 4
    state_1518208 state_1518219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518208
  · exact cover_1518219
#print axioms cover_1518207

def state_1518205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 15)))
theorem cover_1518205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518205 := by
  apply coveredState_split_literal (state := state_1518205) 3
    state_1518206 state_1518207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518206
  · exact cover_1518207
#print axioms cover_1518205

def state_1518204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 15)))
theorem cover_1518204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518204 := by
  apply coveredState_split_literal (state := state_1518204) 2
    state_1518205 state_1518344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518205
  · exact cover_1518344
#print axioms cover_1518204

def state_1518052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 15)))
theorem cover_1518052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518052 := by
  apply coveredState_split_literal (state := state_1518052) 1
    state_1518053 state_1518204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518053
  · exact cover_1518204
#print axioms cover_1518052

def state_1517988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 15)))
theorem cover_1517988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517988 := by
  apply coveredState_split_literal (state := state_1517988) 0
    state_1517989 state_1518052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517989
  · exact cover_1518052
#print axioms cover_1517988

def state_1517958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 7)))
theorem cover_1517958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517958 := by
  apply coveredState_split_literal (state := state_1517958) 4
    state_1517959 state_1517988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517959
  · exact cover_1517988
#print axioms cover_1517958

def state_1517952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 7)))
theorem cover_1517952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1517952 := by
  apply coveredState_split_literal (state := state_1517952) 3
    state_1517953 state_1517958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1517953
  · exact cover_1517958
#print axioms cover_1517952

def state_1507544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1507544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507544 := by
  apply coveredState_split_literal (state := state_1507544) 2
    state_1507545 state_1517952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507545
  · exact cover_1517952
#print axioms cover_1507544

def state_1494038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1494038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494038 := by
  apply coveredState_split_literal (state := state_1494038) 1
    state_1494039 state_1507544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494039
  · exact cover_1507544
#print axioms cover_1494038

def state_1518383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1518383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518383 := by
  apply coveredState_split_literal (state := state_1518383) 1
    state_1518384 state_1518419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518384
  · exact cover_1518419
#print axioms cover_1518383

def state_1518382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1518382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518382 := by
  apply coveredState_split_literal (state := state_1518382) 0
    state_1518383 state_1518452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518383
  · exact cover_1518452
#print axioms cover_1518382

def state_1518381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_1518381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518381 := by
  apply coveredState_split_literal (state := state_1518381) 4
    state_1518382 state_1518467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518382
  · exact cover_1518467
#print axioms cover_1518381

def state_1518347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_1518347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518347 := by
  apply coveredState_split_literal (state := state_1518347) 3
    state_1518348 state_1518381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518348
  · exact cover_1518381
#print axioms cover_1518347

def state_1518346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1518346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518346 := by
  apply coveredState_split_literal (state := state_1518346) 2
    state_1518347 state_1518484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518347
  · exact cover_1518484
#print axioms cover_1518346

def state_1518567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1518567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518567 := by
  apply coveredState_split_literal (state := state_1518567) 0
    state_1518568 state_1518631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518568
  · exact cover_1518631
#print axioms cover_1518567

def state_1518566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1518566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518566 := by
  apply coveredState_split_literal (state := state_1518566) 1
    state_1518567 state_1518636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518567
  · exact cover_1518636
#print axioms cover_1518566

def state_1518554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_1518554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518554 := by
  apply coveredState_split_literal (state := state_1518554) 4
    state_1518555 state_1518566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518555
  · exact cover_1518566
#print axioms cover_1518554

def state_1518536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_1518536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518536 := by
  apply coveredState_split_literal (state := state_1518536) 3
    state_1518537 state_1518554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518537
  · exact cover_1518554
#print axioms cover_1518536

def state_1518535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1518535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518535 := by
  apply coveredState_split_literal (state := state_1518535) 2
    state_1518536 state_1518661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518536
  · exact cover_1518661
#print axioms cover_1518535

def state_1518345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1518345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518345 := by
  apply coveredState_split_literal (state := state_1518345) 1
    state_1518346 state_1518535
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518346
  · exact cover_1518535
#print axioms cover_1518345

def state_1494037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1494037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494037 := by
  apply coveredState_split_literal (state := state_1494037) 0
    state_1494038 state_1518345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494038
  · exact cover_1518345
#print axioms cover_1494037

def state_1493865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1493865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493865 := by
  apply coveredState_split_literal (state := state_1493865) 4
    state_1493866 state_1494037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493866
  · exact cover_1494037
#print axioms cover_1493865

def state_1518753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 14)))
theorem cover_1518753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518753 := by
  apply coveredState_split_literal (state := state_1518753) 0
    state_1518754 state_1518789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518754
  · exact cover_1518789
#print axioms cover_1518753

def state_1518752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 7)))
theorem cover_1518752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518752 := by
  apply coveredState_split_literal (state := state_1518752) 4
    state_1518753 state_1518834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518753
  · exact cover_1518834
#print axioms cover_1518752

def state_1518751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 7)))
theorem cover_1518751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518751 := by
  apply coveredState_split_literal (state := state_1518751) 3
    state_1518752 state_1518865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518752
  · exact cover_1518865
#print axioms cover_1518751

def state_1518873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 7)))
theorem cover_1518873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518873 := by
  apply coveredState_split_literal (state := state_1518873) 4
    state_1518874 state_1518897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518874
  · exact cover_1518897
#print axioms cover_1518873

def state_1518872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 7)))
theorem cover_1518872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518872 := by
  apply coveredState_split_literal (state := state_1518872) 3
    state_1518873 state_1518954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518873
  · exact cover_1518954
#print axioms cover_1518872

def state_1518750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1518750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518750 := by
  apply coveredState_split_literal (state := state_1518750) 2
    state_1518751 state_1518872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518751
  · exact cover_1518872
#print axioms cover_1518750

def state_1519003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 15)))
theorem cover_1519003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1519003 := by
  apply coveredState_split_literal (state := state_1519003) 1
    state_1519004 state_1519047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1519004
  · exact cover_1519047
#print axioms cover_1519003

def state_1518975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 14 else 15)))
theorem cover_1518975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1518975 := by
  apply coveredState_split_literal (state := state_1518975) 0
    state_1518976 state_1519003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1518976
  · exact cover_1519003
#print axioms cover_1518975
end Mub6.Numerical.CircleFullD0.Forest
