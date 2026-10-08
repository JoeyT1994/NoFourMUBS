import CircleFullInterface
import CircleForestAssembly0179
import CircleForestAssembly0180
import CircleForestChunk0678
import CircleForestChunk0681
import CircleForestChunk0682
import CircleForestChunk0683
import CircleForestChunk0684
import CircleForestChunk0685
import CircleForestChunk0686
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1463622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1463622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463622 := by
  apply coveredState_split_literal (state := state_1463622) 0
    state_1463623 state_1463984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463623
  · exact cover_1463984
#print axioms cover_1463622

def state_1463602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1463602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463602 := by
  apply coveredState_split_literal (state := state_1463602) 4
    state_1463603 state_1463622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463603
  · exact cover_1463622
#print axioms cover_1463602

def state_1463590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1463590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463590 := by
  apply coveredState_split_literal (state := state_1463590) 3
    state_1463591 state_1463602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463591
  · exact cover_1463602
#print axioms cover_1463590

def state_1463572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1463572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463572 := by
  apply coveredState_split_literal (state := state_1463572) 2
    state_1463573 state_1463590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463573
  · exact cover_1463590
#print axioms cover_1463572

def state_1463571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1463571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463571 := by
  apply coveredState_split_literal (state := state_1463571) 1
    state_1463572 state_1464391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463572
  · exact cover_1464391
#print axioms cover_1463571

def state_1463471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1463471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463471 := by
  apply coveredState_split_literal (state := state_1463471) 0
    state_1463472 state_1463571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463472
  · exact cover_1463571
#print axioms cover_1463471

def state_1464501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1464501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464501 := by
  apply coveredState_split_literal (state := state_1464501) 2
    state_1464502 state_1464525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464502
  · exact cover_1464525
#print axioms cover_1464501

def state_1464500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1464500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464500 := by
  apply coveredState_split_literal (state := state_1464500) 1
    state_1464501 state_1464582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464501
  · exact cover_1464582
#print axioms cover_1464500

def state_1464446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1464446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464446 := by
  apply coveredState_split_literal (state := state_1464446) 0
    state_1464447 state_1464500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464447
  · exact cover_1464500
#print axioms cover_1464446

def state_1463470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1463470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463470 := by
  apply coveredState_split_literal (state := state_1463470) 4
    state_1463471 state_1464446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463471
  · exact cover_1464446
#print axioms cover_1463470

def state_1464638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1464638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464638 := by
  apply coveredState_split_literal (state := state_1464638) 3
    state_1464639 state_1464658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464639
  · exact cover_1464658
#print axioms cover_1464638

def state_1464614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1464614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464614 := by
  apply coveredState_split_literal (state := state_1464614) 2
    state_1464615 state_1464638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464615
  · exact cover_1464638
#print axioms cover_1464614

def state_1464703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1464703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464703 := by
  apply coveredState_split_literal (state := state_1464703) 2
    state_1464704 state_1464725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464704
  · exact cover_1464725
#print axioms cover_1464703

def state_1464613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1464613 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464613 := by
  apply coveredState_split_literal (state := state_1464613) 1
    state_1464614 state_1464703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464614
  · exact cover_1464703
#print axioms cover_1464613

def state_1464786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1464786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464786 := by
  apply coveredState_split_literal (state := state_1464786) 3
    state_1464787 state_1464804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464787
  · exact cover_1464804
#print axioms cover_1464786

def state_1464851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1464851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464851 := by
  apply coveredState_split_literal (state := state_1464851) 3
    state_1464852 state_1464895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464852
  · exact cover_1464895
#print axioms cover_1464851

def state_1464785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1464785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464785 := by
  apply coveredState_split_literal (state := state_1464785) 2
    state_1464786 state_1464851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464786
  · exact cover_1464851
#print axioms cover_1464785

def state_1464965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1464965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464965 := by
  apply coveredState_split_literal (state := state_1464965) 4
    state_1464966 state_1464999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464966
  · exact cover_1464999
#print axioms cover_1464965

def state_1464957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1464957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464957 := by
  apply coveredState_split_literal (state := state_1464957) 3
    state_1464958 state_1464965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464958
  · exact cover_1464965
#print axioms cover_1464957

def state_1465136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
theorem cover_1465136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465136 := by
  apply coveredState_split_literal (state := state_1465136) 3
    state_1465137 state_1465164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465137
  · exact cover_1465164
#print axioms cover_1465136

def state_1465324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 15 else 21)))
theorem cover_1465324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465324 := by
  apply coveredState_split_literal (state := state_1465324) 3
    state_1465325 state_1465354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465325
  · exact cover_1465354
#print axioms cover_1465324

def state_1465529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 63 else (if j.val < 4 then 63 else 43)))
theorem cover_1465529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465529 := by
  apply coveredState_split_literal (state := state_1465529) 0
    state_1465530 state_1465547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465530
  · exact cover_1465547
#print axioms cover_1465529

def state_1465505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 63 else (if j.val < 4 then 31 else 43)))
theorem cover_1465505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465505 := by
  apply coveredState_split_literal (state := state_1465505) 3
    state_1465506 state_1465529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465506
  · exact cover_1465529
#print axioms cover_1465505

def state_1465459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 43)))
theorem cover_1465459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465459 := by
  apply coveredState_split_literal (state := state_1465459) 2
    state_1465460 state_1465505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465460
  · exact cover_1465505
#print axioms cover_1465459

def state_1465457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
theorem cover_1465457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465457 := by
  apply coveredState_split_literal (state := state_1465457) 4
    state_1465458 state_1465459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465458
  · exact cover_1465459
#print axioms cover_1465457

def state_1465455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
theorem cover_1465455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465455 := by
  apply coveredState_split_literal (state := state_1465455) 1
    state_1465456 state_1465457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465456
  · exact cover_1465457
#print axioms cover_1465455

def state_1465431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 31 else 21)))
theorem cover_1465431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465431 := by
  apply coveredState_split_literal (state := state_1465431) 0
    state_1465432 state_1465455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465432
  · exact cover_1465455
#print axioms cover_1465431

def state_1465393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 31 else (if j.val < 4 then 15 else 21)))
theorem cover_1465393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465393 := by
  apply coveredState_split_literal (state := state_1465393) 3
    state_1465394 state_1465431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465394
  · exact cover_1465431
#print axioms cover_1465393

def state_1465323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 21)))
theorem cover_1465323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465323 := by
  apply coveredState_split_literal (state := state_1465323) 2
    state_1465324 state_1465393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465324
  · exact cover_1465393
#print axioms cover_1465323

def state_1465307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
theorem cover_1465307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465307 := by
  apply coveredState_split_literal (state := state_1465307) 4
    state_1465308 state_1465323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465308
  · exact cover_1465323
#print axioms cover_1465307

def state_1465289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
theorem cover_1465289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465289 := by
  apply coveredState_split_literal (state := state_1465289) 1
    state_1465290 state_1465307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465290
  · exact cover_1465307
#print axioms cover_1465289

def state_1465247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 10)))
theorem cover_1465247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1465247 := by
  apply coveredState_split_literal (state := state_1465247) 0
    state_1465248 state_1465289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1465248
  · exact cover_1465289
#print axioms cover_1465247
end Mub6.Numerical.CircleFullD0.Forest
