import D0FullInterface
import D0ForestAssembly0352
import D0ForestChunk1366
import D0ForestChunk1367
import D0ForestChunk1368
import D0ForestChunk1369
import D0ForestChunk1370
import D0ForestChunk1371
import D0ForestChunk1372
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1628995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 105 else (if j.val < 4 then 96 else 33)))
theorem cover_1628995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628995 := by
  apply coveredState_split_literal (state := state_1628995) 0
    state_1628996 state_1629019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628996
  · exact cover_1629019
#print axioms cover_1628995

def state_1628903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
theorem cover_1628903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628903 := by
  apply coveredState_split_literal (state := state_1628903) 2
    state_1628904 state_1628995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628904
  · exact cover_1628995
#print axioms cover_1628903

def state_1628902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 33)))
theorem cover_1628902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628902 := by
  apply coveredState_split_literal (state := state_1628902) 1
    state_1628903 state_1629090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628903
  · exact cover_1629090
#print axioms cover_1628902

def state_1629102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 104) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
theorem cover_1629102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629102 := by
  apply coveredState_split_literal (state := state_1629102) 2
    state_1629103 state_1629142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629103
  · exact cover_1629142
#print axioms cover_1629102

def state_1629101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 97 else 33)))
theorem cover_1629101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629101 := by
  apply coveredState_split_literal (state := state_1629101) 1
    state_1629102 state_1629187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629102
  · exact cover_1629187
#print axioms cover_1629101

def state_1628901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 33)))
theorem cover_1628901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628901 := by
  apply coveredState_split_literal (state := state_1628901) 3
    state_1628902 state_1629101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628902
  · exact cover_1629101
#print axioms cover_1628901

def state_1628731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1628731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628731 := by
  apply coveredState_split_literal (state := state_1628731) 4
    state_1628732 state_1628901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628732
  · exact cover_1628901
#print axioms cover_1628731

def state_1629248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 33)))
theorem cover_1629248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629248 := by
  apply coveredState_split_literal (state := state_1629248) 3
    state_1629249 state_1629266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629249
  · exact cover_1629266
#print axioms cover_1629248

def state_1629198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1629198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629198 := by
  apply coveredState_split_literal (state := state_1629198) 4
    state_1629199 state_1629248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629199
  · exact cover_1629248
#print axioms cover_1629198

def state_1628730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1628730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628730 := by
  apply coveredState_split_literal (state := state_1628730) 0
    state_1628731 state_1629198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628731
  · exact cover_1629198
#print axioms cover_1628730

def state_1629365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 33)))
theorem cover_1629365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629365 := by
  apply coveredState_split_literal (state := state_1629365) 3
    state_1629366 state_1629393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629366
  · exact cover_1629393
#print axioms cover_1629365

def state_1629347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 16)))
theorem cover_1629347 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629347 := by
  apply coveredState_split_literal (state := state_1629347) 4
    state_1629348 state_1629365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629348
  · exact cover_1629365
#print axioms cover_1629347

def state_1629325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 16)))
theorem cover_1629325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629325 := by
  apply coveredState_split_literal (state := state_1629325) 0
    state_1629326 state_1629347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629326
  · exact cover_1629347
#print axioms cover_1629325

def state_1628729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1628729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628729 := by
  apply coveredState_split_literal (state := state_1628729) 2
    state_1628730 state_1629325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628730
  · exact cover_1629325
#print axioms cover_1628729

def state_1628728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1628728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628728 := by
  apply coveredState_split_literal (state := state_1628728) 1
    state_1628729 state_1629444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628729
  · exact cover_1629444
#print axioms cover_1628728

def state_1628727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 16)))
theorem cover_1628727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628727 := by
  apply coveredState_split_literal (state := state_1628727) 3
    state_1628728 state_1629483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628728
  · exact cover_1629483
#print axioms cover_1628727

def state_1629535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 17)))
theorem cover_1629535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629535 := by
  apply coveredState_split_literal (state := state_1629535) 0
    state_1629536 state_1629587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629536
  · exact cover_1629587
#print axioms cover_1629535

def state_1629617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
theorem cover_1629617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629617 := by
  apply coveredState_split_literal (state := state_1629617) 4
    state_1629618 state_1629677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629618
  · exact cover_1629677
#print axioms cover_1629617

def state_1629705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 97 else 34)))
theorem cover_1629705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629705 := by
  apply coveredState_split_literal (state := state_1629705) 1
    state_1629706 state_1629767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629706
  · exact cover_1629767
#print axioms cover_1629705

def state_1629697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 34)))
theorem cover_1629697 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629697 := by
  apply coveredState_split_literal (state := state_1629697) 3
    state_1629698 state_1629705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629698
  · exact cover_1629705
#print axioms cover_1629697

def state_1629696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
theorem cover_1629696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629696 := by
  apply coveredState_split_literal (state := state_1629696) 4
    state_1629697 state_1629778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629697
  · exact cover_1629778
#print axioms cover_1629696

def state_1629616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 48 else 17)))
theorem cover_1629616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629616 := by
  apply coveredState_split_literal (state := state_1629616) 0
    state_1629617 state_1629696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629617
  · exact cover_1629696
#print axioms cover_1629616

def state_1629534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
theorem cover_1629534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629534 := by
  apply coveredState_split_literal (state := state_1629534) 2
    state_1629535 state_1629616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629535
  · exact cover_1629616
#print axioms cover_1629534

def state_1629533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
theorem cover_1629533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629533 := by
  apply coveredState_split_literal (state := state_1629533) 1
    state_1629534 state_1629797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629534
  · exact cover_1629797
#print axioms cover_1629533

def state_1629891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 17)))
theorem cover_1629891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629891 := by
  apply coveredState_split_literal (state := state_1629891) 4
    state_1629892 state_1629939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629892
  · exact cover_1629939
#print axioms cover_1629891

def state_1629879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 17)))
theorem cover_1629879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629879 := by
  apply coveredState_split_literal (state := state_1629879) 0
    state_1629880 state_1629891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629880
  · exact cover_1629891
#print axioms cover_1629879

def state_1629831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
theorem cover_1629831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629831 := by
  apply coveredState_split_literal (state := state_1629831) 2
    state_1629832 state_1629879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629832
  · exact cover_1629879
#print axioms cover_1629831

def state_1629830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 17)))
theorem cover_1629830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629830 := by
  apply coveredState_split_literal (state := state_1629830) 1
    state_1629831 state_1629982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629831
  · exact cover_1629982
#print axioms cover_1629830

def state_1629532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 17)))
theorem cover_1629532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1629532 := by
  apply coveredState_split_literal (state := state_1629532) 3
    state_1629533 state_1629830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1629533
  · exact cover_1629830
#print axioms cover_1629532

def state_1628726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1628726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628726 := by
  apply coveredState_split_literal (state := state_1628726) 4
    state_1628727 state_1629532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628727
  · exact cover_1629532
#print axioms cover_1628726

def state_1628672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1628672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628672 := by
  apply coveredState_split_literal (state := state_1628672) 0
    state_1628673 state_1628726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628673
  · exact cover_1628726
#print axioms cover_1628672

def state_1630025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 17)))
theorem cover_1630025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630025 := by
  apply coveredState_split_literal (state := state_1630025) 3
    state_1630026 state_1630085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630026
  · exact cover_1630085
#print axioms cover_1630025
end Mub6.Numerical.CircleFullD0.Forest
