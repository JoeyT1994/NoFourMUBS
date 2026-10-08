import D0FullInterface
import D0ForestAssembly0208
import D0ForestChunk0788
import D0ForestChunk0789
import D0ForestChunk0790
import D0ForestChunk0791
import D0ForestChunk0792
import D0ForestChunk0793
import D0ForestChunk0794
import D0ForestChunk0795
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1490162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 29)))
theorem cover_1490162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490162 := by
  apply coveredState_split_literal (state := state_1490162) 2
    state_1490163 state_1490258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490163
  · exact cover_1490258
#print axioms cover_1490162

def state_1490100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 49 else 29)))
theorem cover_1490100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490100 := by
  apply coveredState_split_literal (state := state_1490100) 1
    state_1490101 state_1490162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490101
  · exact cover_1490162
#print axioms cover_1490100

def state_1489998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 29)))
theorem cover_1489998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489998 := by
  apply coveredState_split_literal (state := state_1489998) 3
    state_1489999 state_1490100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489999
  · exact cover_1490100
#print axioms cover_1489998

def state_1489934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 29)))
theorem cover_1489934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489934 := by
  apply coveredState_split_literal (state := state_1489934) 0
    state_1489935 state_1489998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489935
  · exact cover_1489998
#print axioms cover_1489934

def state_1489888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 14)))
theorem cover_1489888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489888 := by
  apply coveredState_split_literal (state := state_1489888) 4
    state_1489889 state_1489934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489889
  · exact cover_1489934
#print axioms cover_1489888

def state_1489640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
theorem cover_1489640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489640 := by
  apply coveredState_split_literal (state := state_1489640) 2
    state_1489641 state_1489888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489641
  · exact cover_1489888
#print axioms cover_1489640

def state_1489486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
theorem cover_1489486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489486 := by
  apply coveredState_split_literal (state := state_1489486) 1
    state_1489487 state_1489640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489487
  · exact cover_1489640
#print axioms cover_1489486

def state_1490398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
theorem cover_1490398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490398 := by
  apply coveredState_split_literal (state := state_1490398) 3
    state_1490399 state_1490440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490399
  · exact cover_1490440
#print axioms cover_1490398

def state_1490480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 28)))
theorem cover_1490480 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490480 := by
  apply coveredState_split_literal (state := state_1490480) 2
    state_1490481 state_1490498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490481
  · exact cover_1490498
#print axioms cover_1490480

def state_1490565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 28)))
theorem cover_1490565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490565 := by
  apply coveredState_split_literal (state := state_1490565) 4
    state_1490566 state_1490575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490566
  · exact cover_1490575
#print axioms cover_1490565

def state_1490559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 28)))
theorem cover_1490559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490559 := by
  apply coveredState_split_literal (state := state_1490559) 2
    state_1490560 state_1490565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490560
  · exact cover_1490565
#print axioms cover_1490559

def state_1490479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
theorem cover_1490479 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490479 := by
  apply coveredState_split_literal (state := state_1490479) 3
    state_1490480 state_1490559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490480
  · exact cover_1490559
#print axioms cover_1490479

def state_1490397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 28)))
theorem cover_1490397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490397 := by
  apply coveredState_split_literal (state := state_1490397) 0
    state_1490398 state_1490479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490398
  · exact cover_1490479
#print axioms cover_1490397

def state_1490662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
theorem cover_1490662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490662 := by
  apply coveredState_split_literal (state := state_1490662) 3
    state_1490663 state_1490694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490663
  · exact cover_1490694
#print axioms cover_1490662

def state_1490630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
theorem cover_1490630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490630 := by
  apply coveredState_split_literal (state := state_1490630) 0
    state_1490631 state_1490662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490631
  · exact cover_1490662
#print axioms cover_1490630

def state_1490396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 14)))
theorem cover_1490396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490396 := by
  apply coveredState_split_literal (state := state_1490396) 4
    state_1490397 state_1490630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490397
  · exact cover_1490630
#print axioms cover_1490396

def state_1490376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1490376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490376 := by
  apply coveredState_split_literal (state := state_1490376) 2
    state_1490377 state_1490396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490377
  · exact cover_1490396
#print axioms cover_1490376

def state_1490914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 58)))
theorem cover_1490914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490914 := by
  apply coveredState_split_literal (state := state_1490914) 0
    state_1490915 state_1490970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490915
  · exact cover_1490970
#print axioms cover_1490914

def state_1490913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 29)))
theorem cover_1490913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490913 := by
  apply coveredState_split_literal (state := state_1490913) 4
    state_1490914 state_1491023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490914
  · exact cover_1491023
#print axioms cover_1490913

def state_1490891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 29)))
theorem cover_1490891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490891 := by
  apply coveredState_split_literal (state := state_1490891) 2
    state_1490892 state_1490913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490892
  · exact cover_1490913
#print axioms cover_1490891

def state_1491189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 100 else 59)))
theorem cover_1491189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491189 := by
  apply coveredState_split_literal (state := state_1491189) 1
    state_1491190 state_1491233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491190
  · exact cover_1491233
#print axioms cover_1491189

def state_1491286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 101 else 59)))
theorem cover_1491286 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491286 := by
  apply coveredState_split_literal (state := state_1491286) 1
    state_1491287 state_1491332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491287
  · exact cover_1491332
#print axioms cover_1491286

def state_1491188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 59)))
theorem cover_1491188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491188 := by
  apply coveredState_split_literal (state := state_1491188) 3
    state_1491189 state_1491286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491189
  · exact cover_1491286
#print axioms cover_1491188

def state_1491150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 59)))
theorem cover_1491150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491150 := by
  apply coveredState_split_literal (state := state_1491150) 0
    state_1491151 state_1491188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491151
  · exact cover_1491188
#print axioms cover_1491150

def state_1491104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 29)))
theorem cover_1491104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491104 := by
  apply coveredState_split_literal (state := state_1491104) 4
    state_1491105 state_1491150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491105
  · exact cover_1491150
#print axioms cover_1491104

def state_1491082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 29)))
theorem cover_1491082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491082 := by
  apply coveredState_split_literal (state := state_1491082) 2
    state_1491083 state_1491104
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491083
  · exact cover_1491104
#print axioms cover_1491082

def state_1490890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 29)))
theorem cover_1490890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490890 := by
  apply coveredState_split_literal (state := state_1490890) 1
    state_1490891 state_1491082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490891
  · exact cover_1491082
#print axioms cover_1490890

def state_1491378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 29)))
theorem cover_1491378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491378 := by
  apply coveredState_split_literal (state := state_1491378) 4
    state_1491379 state_1491436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491379
  · exact cover_1491436
#print axioms cover_1491378

def state_1491372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 42) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 29)))
theorem cover_1491372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491372 := by
  apply coveredState_split_literal (state := state_1491372) 2
    state_1491373 state_1491378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491373
  · exact cover_1491378
#print axioms cover_1491372

def state_1491371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 29)))
theorem cover_1491371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491371 := by
  apply coveredState_split_literal (state := state_1491371) 1
    state_1491372 state_1491469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491372
  · exact cover_1491469
#print axioms cover_1491371

def state_1490889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
theorem cover_1490889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490889 := by
  apply coveredState_split_literal (state := state_1490889) 3
    state_1490890 state_1491371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490890
  · exact cover_1491371
#print axioms cover_1490889

def state_1490827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
theorem cover_1490827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490827 := by
  apply coveredState_split_literal (state := state_1490827) 0
    state_1490828 state_1490889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490828
  · exact cover_1490889
#print axioms cover_1490827
end Mub6.Numerical.CircleFullD0.Forest
