import CircleFullInterface
import CircleForestAssembly0033
import CircleForestChunk0132
import CircleForestChunk0133
import CircleForestChunk0134
import CircleForestChunk0135
import CircleForestChunk0136
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_53168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_53168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53168 := by
  apply coveredState_split_literal (state := state_53168) 0
    state_53169 state_53172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53169
  · exact cover_53172
#print axioms cover_53168

def state_53167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_53167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53167 := by
  apply coveredState_split_literal (state := state_53167) 4
    state_53168 state_53317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53168
  · exact cover_53317
#print axioms cover_53167

def state_53166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_53166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53166 := by
  apply coveredState_split_literal (state := state_53166) 3
    state_53167 state_53318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53167
  · exact cover_53318
#print axioms cover_53166

def state_53329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 10)))
theorem cover_53329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53329 := by
  apply coveredState_split_literal (state := state_53329) 0
    state_53330 state_53335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53330
  · exact cover_53335
#print axioms cover_53329

def state_53328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 5)))
theorem cover_53328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53328 := by
  apply coveredState_split_literal (state := state_53328) 4
    state_53329 state_53396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53329
  · exact cover_53396
#print axioms cover_53328

def state_53327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 5)))
theorem cover_53327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53327 := by
  apply coveredState_split_literal (state := state_53327) 3
    state_53328 state_53403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53328
  · exact cover_53403
#print axioms cover_53327

def state_53165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_53165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53165 := by
  apply coveredState_split_literal (state := state_53165) 2
    state_53166 state_53327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53166
  · exact cover_53327
#print axioms cover_53165

def state_53164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_53164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53164 := by
  apply coveredState_split_literal (state := state_53164) 1
    state_53165 state_53408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53165
  · exact cover_53408
#print axioms cover_53164

def state_53142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_53142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53142 := by
  apply coveredState_split_literal (state := state_53142) 4
    state_53143 state_53164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53143
  · exact cover_53164
#print axioms cover_53142

def state_53141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_53141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53141 := by
  apply coveredState_split_literal (state := state_53141) 3
    state_53142 state_53431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53142
  · exact cover_53431
#print axioms cover_53141

def state_53097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_53097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53097 := by
  apply coveredState_split_literal (state := state_53097) 2
    state_53098 state_53141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53098
  · exact cover_53141
#print axioms cover_53097

def state_51369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_51369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_51369 := by
  apply coveredState_split_literal (state := state_51369) 1
    state_51370 state_53097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_51370
  · exact cover_53097
#print axioms cover_51369

def state_53515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 20 else (if j.val < 4 then 24 else 10)))
theorem cover_53515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53515 := by
  apply coveredState_split_literal (state := state_53515) 4
    state_53516 state_53553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53516
  · exact cover_53553
#print axioms cover_53515

def state_53514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_53514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53514 := by
  apply coveredState_split_literal (state := state_53514) 2
    state_53515 state_53594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53515
  · exact cover_53594
#print axioms cover_53514

def state_53513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_53513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53513 := by
  apply coveredState_split_literal (state := state_53513) 0
    state_53514 state_53639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53514
  · exact cover_53639
#print axioms cover_53513

def state_53512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_53512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53512 := by
  apply coveredState_split_literal (state := state_53512) 3
    state_53513 state_53644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53513
  · exact cover_53644
#print axioms cover_53512

def state_53508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_53508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53508 := by
  apply coveredState_split_literal (state := state_53508) 1
    state_53509 state_53512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53509
  · exact cover_53512
#print axioms cover_53508

def state_53653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 11)))
theorem cover_53653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53653 := by
  apply coveredState_split_literal (state := state_53653) 1
    state_53654 state_53659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53654
  · exact cover_53659
#print axioms cover_53653

def state_53507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_53507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53507 := by
  apply coveredState_split_literal (state := state_53507) 4
    state_53508 state_53653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53508
  · exact cover_53653
#print axioms cover_53507

def state_53506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_53506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53506 := by
  apply coveredState_split_literal (state := state_53506) 3
    state_53507 state_53720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53507
  · exact cover_53720
#print axioms cover_53506

def state_53505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_53505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53505 := by
  apply coveredState_split_literal (state := state_53505) 2
    state_53506 state_53731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53506
  · exact cover_53731
#print axioms cover_53505

def state_53504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_53504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53504 := by
  apply coveredState_split_literal (state := state_53504) 0
    state_53505 state_53742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53505
  · exact cover_53742
#print axioms cover_53504

def state_53472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_53472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53472 := by
  apply coveredState_split_literal (state := state_53472) 4
    state_53473 state_53504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53473
  · exact cover_53504
#print axioms cover_53472

def state_53471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_53471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53471 := by
  apply coveredState_split_literal (state := state_53471) 3
    state_53472 state_53759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53472
  · exact cover_53759
#print axioms cover_53471

def state_53437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_53437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53437 := by
  apply coveredState_split_literal (state := state_53437) 2
    state_53438 state_53471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53438
  · exact cover_53471
#print axioms cover_53437

def state_53891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 10)))
theorem cover_53891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53891 := by
  apply coveredState_split_literal (state := state_53891) 4
    state_53892 state_53909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53892
  · exact cover_53909
#print axioms cover_53891

def state_53871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_53871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53871 := by
  apply coveredState_split_literal (state := state_53871) 2
    state_53872 state_53891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53872
  · exact cover_53891
#print axioms cover_53871

def state_53870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_53870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53870 := by
  apply coveredState_split_literal (state := state_53870) 1
    state_53871 state_53956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53871
  · exact cover_53956
#print axioms cover_53870

def state_53869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_53869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53869 := by
  apply coveredState_split_literal (state := state_53869) 0
    state_53870 state_53973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53870
  · exact cover_53973
#print axioms cover_53869

def state_53868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_53868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53868 := by
  apply coveredState_split_literal (state := state_53868) 3
    state_53869 state_53990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53869
  · exact cover_53990
#print axioms cover_53868

def state_53867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_53867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53867 := by
  apply coveredState_split_literal (state := state_53867) 4
    state_53868 state_54023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53868
  · exact cover_54023
#print axioms cover_53867

def state_53866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_53866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_53866 := by
  apply coveredState_split_literal (state := state_53866) 3
    state_53867 state_54062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_53867
  · exact cover_54062
#print axioms cover_53866
end Mub6.Numerical.CircleFullPrototype.Forest
