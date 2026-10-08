import CircleFullInterface
import CircleForestAssembly0108
import CircleForestAssembly0110
import CircleForestAssembly0113
import CircleForestChunk0449
import CircleForestChunk0450
import CircleForestChunk0451
import CircleForestChunk0452
import CircleForestChunk0453
import CircleForestChunk0454
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_179192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_179192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_179192 := by
  apply coveredState_split_literal (state := state_179192) 3
    state_179193 state_180972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_179193
  · exact cover_180972
#print axioms cover_179192

def state_178952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_178952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178952 := by
  apply coveredState_split_literal (state := state_178952) 0
    state_178953 state_179192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178953
  · exact cover_179192
#print axioms cover_178952

def state_183627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 7)))
theorem cover_183627 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183627 := by
  apply coveredState_split_literal (state := state_183627) 3
    state_183628 state_183673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183628
  · exact cover_183673
#print axioms cover_183627

def state_183615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 7)))
theorem cover_183615 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183615 := by
  apply coveredState_split_literal (state := state_183615) 0
    state_183616 state_183627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183616
  · exact cover_183627
#print axioms cover_183615

def state_178951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_178951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178951 := by
  apply coveredState_split_literal (state := state_178951) 2
    state_178952 state_183615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178952
  · exact cover_183615
#print axioms cover_178951

def state_183767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 7)))
theorem cover_183767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183767 := by
  apply coveredState_split_literal (state := state_183767) 4
    state_183768 state_183797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183768
  · exact cover_183797
#print axioms cover_183767

def state_183739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_183739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183739 := by
  apply coveredState_split_literal (state := state_183739) 3
    state_183740 state_183767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183740
  · exact cover_183767
#print axioms cover_183739

def state_183725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_183725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183725 := by
  apply coveredState_split_literal (state := state_183725) 0
    state_183726 state_183739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183726
  · exact cover_183739
#print axioms cover_183725

def state_183724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_183724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183724 := by
  apply coveredState_split_literal (state := state_183724) 2
    state_183725 state_183838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183725
  · exact cover_183838
#print axioms cover_183724

def state_178950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 7)))
theorem cover_178950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178950 := by
  apply coveredState_split_literal (state := state_178950) 1
    state_178951 state_183724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178951
  · exact cover_183724
#print axioms cover_178950

def state_178876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_178876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178876 := by
  apply coveredState_split_literal (state := state_178876) 4
    state_178877 state_178950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178877
  · exact cover_178950
#print axioms cover_178876

def state_178798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_178798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178798 := by
  apply coveredState_split_literal (state := state_178798) 3
    state_178799 state_178876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178799
  · exact cover_178876
#print axioms cover_178798

def state_178797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_178797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178797 := by
  apply coveredState_split_literal (state := state_178797) 2
    state_178798 state_183841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178798
  · exact cover_183841
#print axioms cover_178797

def state_178796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_178796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_178796 := by
  apply coveredState_split_literal (state := state_178796) 1
    state_178797 state_183880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_178797
  · exact cover_183880
#print axioms cover_178796

def state_184003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 7)))
theorem cover_184003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184003 := by
  apply coveredState_split_literal (state := state_184003) 4
    state_184004 state_184065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184004
  · exact cover_184065
#print axioms cover_184003

def state_184295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
theorem cover_184295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184295 := by
  apply coveredState_split_literal (state := state_184295) 0
    state_184296 state_184353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184296
  · exact cover_184353
#print axioms cover_184295

def state_184294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
theorem cover_184294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184294 := by
  apply coveredState_split_literal (state := state_184294) 2
    state_184295 state_184360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184295
  · exact cover_184360
#print axioms cover_184294

def state_184293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
theorem cover_184293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184293 := by
  apply coveredState_split_literal (state := state_184293) 1
    state_184294 state_184387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184294
  · exact cover_184387
#print axioms cover_184293

def state_184418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 31)))
theorem cover_184418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184418 := by
  apply coveredState_split_literal (state := state_184418) 1
    state_184419 state_184474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184419
  · exact cover_184474
#print axioms cover_184418

def state_184292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 15)))
theorem cover_184292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184292 := by
  apply coveredState_split_literal (state := state_184292) 4
    state_184293 state_184418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184293
  · exact cover_184418
#print axioms cover_184292

def state_184512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 30)))
theorem cover_184512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184512 := by
  apply coveredState_split_literal (state := state_184512) 2
    state_184513 state_184562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184513
  · exact cover_184562
#print axioms cover_184512

def state_184504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 30)))
theorem cover_184504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184504 := by
  apply coveredState_split_literal (state := state_184504) 1
    state_184505 state_184512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184505
  · exact cover_184512
#print axioms cover_184504

def state_184503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 15)))
theorem cover_184503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184503 := by
  apply coveredState_split_literal (state := state_184503) 4
    state_184504 state_184587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184504
  · exact cover_184587
#print axioms cover_184503

def state_184291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
theorem cover_184291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184291 := by
  apply coveredState_split_literal (state := state_184291) 3
    state_184292 state_184503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184292
  · exact cover_184503
#print axioms cover_184291

def state_184290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
theorem cover_184290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184290 := by
  apply coveredState_split_literal (state := state_184290) 0
    state_184291 state_184616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184291
  · exact cover_184616
#print axioms cover_184290

def state_184254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
theorem cover_184254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184254 := by
  apply coveredState_split_literal (state := state_184254) 2
    state_184255 state_184290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184255
  · exact cover_184290
#print axioms cover_184254

def state_184192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
theorem cover_184192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184192 := by
  apply coveredState_split_literal (state := state_184192) 1
    state_184193 state_184254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184193
  · exact cover_184254
#print axioms cover_184192

def state_184128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 7)))
theorem cover_184128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184128 := by
  apply coveredState_split_literal (state := state_184128) 4
    state_184129 state_184192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184129
  · exact cover_184192
#print axioms cover_184128

def state_184002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 7)))
theorem cover_184002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184002 := by
  apply coveredState_split_literal (state := state_184002) 3
    state_184003 state_184128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184003
  · exact cover_184128
#print axioms cover_184002

def state_184661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 15)))
theorem cover_184661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184661 := by
  apply coveredState_split_literal (state := state_184661) 1
    state_184662 state_184679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184662
  · exact cover_184679
#print axioms cover_184661

def state_184659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 7)))
theorem cover_184659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184659 := by
  apply coveredState_split_literal (state := state_184659) 4
    state_184660 state_184661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184660
  · exact cover_184661
#print axioms cover_184659

def state_184635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 7)))
theorem cover_184635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184635 := by
  apply coveredState_split_literal (state := state_184635) 3
    state_184636 state_184659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184636
  · exact cover_184659
#print axioms cover_184635
end Mub6.Numerical.CircleFullPrototype.Forest
