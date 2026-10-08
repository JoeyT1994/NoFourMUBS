import D0FullInterface
import D0ForestAssembly0195
import D0ForestChunk0737
import D0ForestChunk0738
import D0ForestChunk0739
import D0ForestChunk0740
import D0ForestChunk0741
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1477215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
theorem cover_1477215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477215 := by
  apply coveredState_split_literal (state := state_1477215) 4
    state_1477216 state_1477585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477216
  · exact cover_1477585
#print axioms cover_1477215

def state_1477756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
theorem cover_1477756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477756 := by
  apply coveredState_split_literal (state := state_1477756) 4
    state_1477757 state_1477780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477757
  · exact cover_1477780
#print axioms cover_1477756

def state_1477214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
theorem cover_1477214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477214 := by
  apply coveredState_split_literal (state := state_1477214) 1
    state_1477215 state_1477756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477215
  · exact cover_1477756
#print axioms cover_1477214

def state_1477213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 58)))
theorem cover_1477213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477213 := by
  apply coveredState_split_literal (state := state_1477213) 3
    state_1477214 state_1477821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477214
  · exact cover_1477821
#print axioms cover_1477213

def state_1477937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 117)))
theorem cover_1477937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477937 := by
  apply coveredState_split_literal (state := state_1477937) 3
    state_1477938 state_1477969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477938
  · exact cover_1477969
#print axioms cover_1477937

def state_1477936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 67 else (if j.val < 4 then 90 else 117)))
theorem cover_1477936 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477936 := by
  apply coveredState_split_literal (state := state_1477936) 0
    state_1477937 state_1478012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477937
  · exact cover_1478012
#print axioms cover_1477936

def state_1477916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 117)))
theorem cover_1477916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477916 := by
  apply coveredState_split_literal (state := state_1477916) 2
    state_1477917 state_1477936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477917
  · exact cover_1477936
#print axioms cover_1477916

def state_1477854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
theorem cover_1477854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477854 := by
  apply coveredState_split_literal (state := state_1477854) 4
    state_1477855 state_1477916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477855
  · exact cover_1477916
#print axioms cover_1477854

def state_1477853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 90 else 58)))
theorem cover_1477853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477853 := by
  apply coveredState_split_literal (state := state_1477853) 1
    state_1477854 state_1478025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477854
  · exact cover_1478025
#print axioms cover_1477853

def state_1477852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 58)))
theorem cover_1477852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477852 := by
  apply coveredState_split_literal (state := state_1477852) 3
    state_1477853 state_1478062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477853
  · exact cover_1478062
#print axioms cover_1477852

def state_1477212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 58)))
theorem cover_1477212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477212 := by
  apply coveredState_split_literal (state := state_1477212) 0
    state_1477213 state_1477852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477213
  · exact cover_1477852
#print axioms cover_1477212

def state_1477120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 58)))
theorem cover_1477120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477120 := by
  apply coveredState_split_literal (state := state_1477120) 2
    state_1477121 state_1477212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477121
  · exact cover_1477212
#print axioms cover_1477120

def state_1478141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 59)))
theorem cover_1478141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478141 := by
  apply coveredState_split_literal (state := state_1478141) 0
    state_1478142 state_1478189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478142
  · exact cover_1478189
#print axioms cover_1478141

def state_1478117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 59)))
theorem cover_1478117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478117 := by
  apply coveredState_split_literal (state := state_1478117) 2
    state_1478118 state_1478141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478118
  · exact cover_1478141
#print axioms cover_1478117

def state_1477119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
theorem cover_1477119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1477119 := by
  apply coveredState_split_literal (state := state_1477119) 4
    state_1477120 state_1478117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1477120
  · exact cover_1478117
#print axioms cover_1477119

def state_1475275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1475275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475275 := by
  apply coveredState_split_literal (state := state_1475275) 3
    state_1475276 state_1477119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475276
  · exact cover_1477119
#print axioms cover_1475275

def state_1478233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
theorem cover_1478233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478233 := by
  apply coveredState_split_literal (state := state_1478233) 4
    state_1478234 state_1478289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478234
  · exact cover_1478289
#print axioms cover_1478233

def state_1478232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1478232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478232 := by
  apply coveredState_split_literal (state := state_1478232) 3
    state_1478233 state_1478308
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478233
  · exact cover_1478308
#print axioms cover_1478232

def state_1475274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1475274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475274 := by
  apply coveredState_split_literal (state := state_1475274) 1
    state_1475275 state_1478232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475275
  · exact cover_1478232
#print axioms cover_1475274

def state_1478352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1478352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478352 := by
  apply coveredState_split_literal (state := state_1478352) 3
    state_1478353 state_1478382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478353
  · exact cover_1478382
#print axioms cover_1478352

def state_1478351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1478351 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478351 := by
  apply coveredState_split_literal (state := state_1478351) 1
    state_1478352 state_1478417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478352
  · exact cover_1478417
#print axioms cover_1478351

def state_1475273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
theorem cover_1475273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475273 := by
  apply coveredState_split_literal (state := state_1475273) 0
    state_1475274 state_1478351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475274
  · exact cover_1478351
#print axioms cover_1475273

def state_1478439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 17 else (if j.val < 4 then 44 else 29)))
theorem cover_1478439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478439 := by
  apply coveredState_split_literal (state := state_1478439) 4
    state_1478440 state_1478487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478440
  · exact cover_1478487
#print axioms cover_1478439

def state_1478508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 90 else 58)))
theorem cover_1478508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478508 := by
  apply coveredState_split_literal (state := state_1478508) 1
    state_1478509 state_1478562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478509
  · exact cover_1478562
#print axioms cover_1478508

def state_1478577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
theorem cover_1478577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478577 := by
  apply coveredState_split_literal (state := state_1478577) 1
    state_1478578 state_1478637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478578
  · exact cover_1478637
#print axioms cover_1478577

def state_1478507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 58)))
theorem cover_1478507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478507 := by
  apply coveredState_split_literal (state := state_1478507) 3
    state_1478508 state_1478577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478508
  · exact cover_1478577
#print axioms cover_1478507

def state_1478759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 194 else 88) else (if j.val < 3 then 68 else (if j.val < 4 then 91 else 117)))
theorem cover_1478759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478759 := by
  apply coveredState_split_literal (state := state_1478759) 3
    state_1478760 state_1478813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478760
  · exact cover_1478813
#print axioms cover_1478759

def state_1478758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 68 else (if j.val < 4 then 91 else 117)))
theorem cover_1478758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478758 := by
  apply coveredState_split_literal (state := state_1478758) 0
    state_1478759 state_1478836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478759
  · exact cover_1478836
#print axioms cover_1478758

def state_1478757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 117)))
theorem cover_1478757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478757 := by
  apply coveredState_split_literal (state := state_1478757) 2
    state_1478758 state_1478847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478758
  · exact cover_1478847
#print axioms cover_1478757

def state_1478723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 88) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
theorem cover_1478723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478723 := by
  apply coveredState_split_literal (state := state_1478723) 4
    state_1478724 state_1478757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478724
  · exact cover_1478757
#print axioms cover_1478723

def state_1478722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 91 else 58)))
theorem cover_1478722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478722 := by
  apply coveredState_split_literal (state := state_1478722) 1
    state_1478723 state_1478890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478723
  · exact cover_1478890
#print axioms cover_1478722

def state_1478658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 45 else 58)))
theorem cover_1478658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1478658 := by
  apply coveredState_split_literal (state := state_1478658) 3
    state_1478659 state_1478722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1478659
  · exact cover_1478722
#print axioms cover_1478658
end Mub6.Numerical.CircleFullD0.Forest
