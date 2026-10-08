import CircleFullInterface
import CircleForestAssembly0041
import CircleForestChunk0163
import CircleForestChunk0164
import CircleForestChunk0165
import CircleForestChunk0166
import CircleForestChunk0167
import CircleForestChunk0168
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_60775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_60775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60775 := by
  apply coveredState_split_literal (state := state_60775) 2
    state_60776 state_60799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60776
  · exact cover_60799
#print axioms cover_60775

def state_60725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_60725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60725 := by
  apply coveredState_split_literal (state := state_60725) 1
    state_60726 state_60775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60726
  · exact cover_60775
#print axioms cover_60725

def state_60872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_60872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60872 := by
  apply coveredState_split_literal (state := state_60872) 1
    state_60873 state_60918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60873
  · exact cover_60918
#print axioms cover_60872

def state_60724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_60724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60724 := by
  apply coveredState_split_literal (state := state_60724) 0
    state_60725 state_60872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60725
  · exact cover_60872
#print axioms cover_60724

def state_60723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 17)))
theorem cover_60723 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60723 := by
  apply coveredState_split_literal (state := state_60723) 3
    state_60724 state_60977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60724
  · exact cover_60977
#print axioms cover_60723

def state_60695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_60695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60695 := by
  apply coveredState_split_literal (state := state_60695) 4
    state_60696 state_60723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60696
  · exact cover_60723
#print axioms cover_60695

def state_60671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_60671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60671 := by
  apply coveredState_split_literal (state := state_60671) 1
    state_60672 state_60695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60672
  · exact cover_60695
#print axioms cover_60671

def state_60607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_60607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60607 := by
  apply coveredState_split_literal (state := state_60607) 0
    state_60608 state_60671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60608
  · exact cover_60671
#print axioms cover_60607

def state_60513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_60513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60513 := by
  apply coveredState_split_literal (state := state_60513) 2
    state_60514 state_60607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60514
  · exact cover_60607
#print axioms cover_60513

def state_60512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_60512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60512 := by
  apply coveredState_split_literal (state := state_60512) 3
    state_60513 state_61006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_60513
  · exact cover_61006
#print axioms cover_60512

def state_61041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
theorem cover_61041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61041 := by
  apply coveredState_split_literal (state := state_61041) 4
    state_61042 state_61101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61042
  · exact cover_61101
#print axioms cover_61041

def state_61031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
theorem cover_61031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61031 := by
  apply coveredState_split_literal (state := state_61031) 1
    state_61032 state_61041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61032
  · exact cover_61041
#print axioms cover_61031

def state_61011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
theorem cover_61011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61011 := by
  apply coveredState_split_literal (state := state_61011) 0
    state_61012 state_61031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61012
  · exact cover_61031
#print axioms cover_61011

def state_61205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
theorem cover_61205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61205 := by
  apply coveredState_split_literal (state := state_61205) 1
    state_61206 state_61213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61206
  · exact cover_61213
#print axioms cover_61205

def state_61195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
theorem cover_61195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61195 := by
  apply coveredState_split_literal (state := state_61195) 0
    state_61196 state_61205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61196
  · exact cover_61205
#print axioms cover_61195

def state_61194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 48 else 36)))
theorem cover_61194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61194 := by
  apply coveredState_split_literal (state := state_61194) 3
    state_61195 state_61274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61195
  · exact cover_61274
#print axioms cover_61194

def state_61193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 36)))
theorem cover_61193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61193 := by
  apply coveredState_split_literal (state := state_61193) 2
    state_61194 state_61293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61194
  · exact cover_61293
#print axioms cover_61193

def state_61192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
theorem cover_61192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61192 := by
  apply coveredState_split_literal (state := state_61192) 4
    state_61193 state_61308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61193
  · exact cover_61308
#print axioms cover_61192

def state_61330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
theorem cover_61330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61330 := by
  apply coveredState_split_literal (state := state_61330) 1
    state_61331 state_61392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61331
  · exact cover_61392
#print axioms cover_61330

def state_61314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 96 else 36)))
theorem cover_61314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61314 := by
  apply coveredState_split_literal (state := state_61314) 0
    state_61315 state_61330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61315
  · exact cover_61330
#print axioms cover_61314

def state_61313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 48 else 36)))
theorem cover_61313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61313 := by
  apply coveredState_split_literal (state := state_61313) 3
    state_61314 state_61407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61314
  · exact cover_61407
#print axioms cover_61313

def state_61312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 36)))
theorem cover_61312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61312 := by
  apply coveredState_split_literal (state := state_61312) 2
    state_61313 state_61454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61313
  · exact cover_61454
#print axioms cover_61312

def state_61311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
theorem cover_61311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61311 := by
  apply coveredState_split_literal (state := state_61311) 4
    state_61312 state_61477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61312
  · exact cover_61477
#print axioms cover_61311

def state_61191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
theorem cover_61191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61191 := by
  apply coveredState_split_literal (state := state_61191) 1
    state_61192 state_61311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61192
  · exact cover_61311
#print axioms cover_61191

def state_61499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
theorem cover_61499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61499 := by
  apply coveredState_split_literal (state := state_61499) 4
    state_61500 state_61559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61500
  · exact cover_61559
#print axioms cover_61499

def state_61570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 48 else 36)))
theorem cover_61570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61570 := by
  apply coveredState_split_literal (state := state_61570) 3
    state_61571 state_61608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61571
  · exact cover_61608
#print axioms cover_61570

def state_61651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 55 else (if j.val < 4 then 48 else 36)))
theorem cover_61651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61651 := by
  apply coveredState_split_literal (state := state_61651) 3
    state_61652 state_61693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61652
  · exact cover_61693
#print axioms cover_61651

def state_61569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 36)))
theorem cover_61569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61569 := by
  apply coveredState_split_literal (state := state_61569) 2
    state_61570 state_61651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61570
  · exact cover_61651
#print axioms cover_61569

def state_61568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
theorem cover_61568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61568 := by
  apply coveredState_split_literal (state := state_61568) 4
    state_61569 state_61730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61569
  · exact cover_61730
#print axioms cover_61568

def state_61498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
theorem cover_61498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61498 := by
  apply coveredState_split_literal (state := state_61498) 1
    state_61499 state_61568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61499
  · exact cover_61568
#print axioms cover_61498

def state_61190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
theorem cover_61190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61190 := by
  apply coveredState_split_literal (state := state_61190) 0
    state_61191 state_61498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61191
  · exact cover_61498
#print axioms cover_61190

def state_61751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_61751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_61751 := by
  apply coveredState_split_literal (state := state_61751) 0
    state_61752 state_61789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_61752
  · exact cover_61789
#print axioms cover_61751
end Mub6.Numerical.CircleFullPrototype.Forest
