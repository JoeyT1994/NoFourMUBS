import CircleFullInterface
import CircleForestAssembly0007
import CircleForestChunk0031
import CircleForestChunk0032
import CircleForestChunk0033
import CircleForestChunk0034
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_7369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 17)))
theorem cover_7369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7369 := by
  apply coveredState_split_literal (state := state_7369) 4
    state_7370 state_7397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7370
  · exact cover_7397
#print axioms cover_7369

def state_7317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 17 else 17)))
theorem cover_7317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7317 := by
  apply coveredState_split_literal (state := state_7317) 3
    state_7318 state_7369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7318
  · exact cover_7369
#print axioms cover_7317

def state_7316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_7316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7316 := by
  apply coveredState_split_literal (state := state_7316) 2
    state_7317 state_7450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7317
  · exact cover_7450
#print axioms cover_7316

def state_7315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_7315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7315 := by
  apply coveredState_split_literal (state := state_7315) 1
    state_7316 state_7455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7316
  · exact cover_7455
#print axioms cover_7315

def state_7301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_7301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7301 := by
  apply coveredState_split_literal (state := state_7301) 0
    state_7302 state_7315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7302
  · exact cover_7315
#print axioms cover_7301

def state_7287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 8)))
theorem cover_7287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7287 := by
  apply coveredState_split_literal (state := state_7287) 4
    state_7288 state_7301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7288
  · exact cover_7301
#print axioms cover_7287

def state_7271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 8)))
theorem cover_7271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7271 := by
  apply coveredState_split_literal (state := state_7271) 3
    state_7272 state_7287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7272
  · exact cover_7287
#print axioms cover_7271

def state_7570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 108) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 35)))
theorem cover_7570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7570 := by
  apply coveredState_split_literal (state := state_7570) 2
    state_7571 state_7608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7571
  · exact cover_7608
#print axioms cover_7570

def state_7569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 35)))
theorem cover_7569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7569 := by
  apply coveredState_split_literal (state := state_7569) 1
    state_7570 state_7635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7570
  · exact cover_7635
#print axioms cover_7569

def state_7638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 35)))
theorem cover_7638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7638 := by
  apply coveredState_split_literal (state := state_7638) 1
    state_7639 state_7684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7639
  · exact cover_7684
#print axioms cover_7638

def state_7568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 35)))
theorem cover_7568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7568 := by
  apply coveredState_split_literal (state := state_7568) 0
    state_7569 state_7638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7569
  · exact cover_7638
#print axioms cover_7568

def state_7516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 34 else 17)))
theorem cover_7516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7516 := by
  apply coveredState_split_literal (state := state_7516) 4
    state_7517 state_7568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7517
  · exact cover_7568
#print axioms cover_7516

def state_7705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 34)))
theorem cover_7705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7705 := by
  apply coveredState_split_literal (state := state_7705) 1
    state_7706 state_7743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7706
  · exact cover_7743
#print axioms cover_7705

def state_7704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 34)))
theorem cover_7704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7704 := by
  apply coveredState_split_literal (state := state_7704) 0
    state_7705 state_7772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7705
  · exact cover_7772
#print axioms cover_7704

def state_7703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 35 else 17)))
theorem cover_7703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7703 := by
  apply coveredState_split_literal (state := state_7703) 4
    state_7704 state_7831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7704
  · exact cover_7831
#print axioms cover_7703

def state_7515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 17 else 17)))
theorem cover_7515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7515 := by
  apply coveredState_split_literal (state := state_7515) 3
    state_7516 state_7703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7516
  · exact cover_7703
#print axioms cover_7515

def state_7514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_7514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7514 := by
  apply coveredState_split_literal (state := state_7514) 2
    state_7515 state_7832
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7515
  · exact cover_7832
#print axioms cover_7514

def state_7513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_7513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7513 := by
  apply coveredState_split_literal (state := state_7513) 1
    state_7514 state_7865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7514
  · exact cover_7865
#print axioms cover_7513

def state_7902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 54 else (if j.val < 4 then 17 else 17)))
theorem cover_7902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7902 := by
  apply coveredState_split_literal (state := state_7902) 3
    state_7903 state_7920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7903
  · exact cover_7920
#print axioms cover_7902

def state_7901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 54) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_7901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7901 := by
  apply coveredState_split_literal (state := state_7901) 2
    state_7902 state_7977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7902
  · exact cover_7977
#print axioms cover_7901

def state_7900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_7900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7900 := by
  apply coveredState_split_literal (state := state_7900) 1
    state_7901 state_7994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7901
  · exact cover_7994
#print axioms cover_7900

def state_7512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 17)))
theorem cover_7512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7512 := by
  apply coveredState_split_literal (state := state_7512) 0
    state_7513 state_7900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7513
  · exact cover_7900
#print axioms cover_7512

def state_7488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 8)))
theorem cover_7488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7488 := by
  apply coveredState_split_literal (state := state_7488) 4
    state_7489 state_7512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7489
  · exact cover_7512
#print axioms cover_7488

def state_7462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 8)))
theorem cover_7462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7462 := by
  apply coveredState_split_literal (state := state_7462) 3
    state_7463 state_7488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7463
  · exact cover_7488
#print axioms cover_7462

def state_7270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 8)))
theorem cover_7270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_7270 := by
  apply coveredState_split_literal (state := state_7270) 0
    state_7271 state_7462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_7271
  · exact cover_7462
#print axioms cover_7270

def state_6886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_6886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6886 := by
  apply coveredState_split_literal (state := state_6886) 2
    state_6887 state_7270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6887
  · exact cover_7270
#print axioms cover_6886

def state_6108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 8)))
theorem cover_6108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_6108 := by
  apply coveredState_split_literal (state := state_6108) 1
    state_6109 state_6886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_6109
  · exact cover_6886
#print axioms cover_6108

def state_8145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
theorem cover_8145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8145 := by
  apply coveredState_split_literal (state := state_8145) 0
    state_8146 state_8209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8146
  · exact cover_8209
#print axioms cover_8145

def state_8131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 17 else 18)))
theorem cover_8131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8131 := by
  apply coveredState_split_literal (state := state_8131) 1
    state_8132 state_8145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8132
  · exact cover_8145
#print axioms cover_8131

def state_8119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 18)))
theorem cover_8119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8119 := by
  apply coveredState_split_literal (state := state_8119) 3
    state_8120 state_8131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8120
  · exact cover_8131
#print axioms cover_8119

def state_8118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 9)))
theorem cover_8118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8118 := by
  apply coveredState_split_literal (state := state_8118) 4
    state_8119 state_8232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8119
  · exact cover_8232
#print axioms cover_8118

def state_8058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 27 else (if j.val < 4 then 8 else 9)))
theorem cover_8058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_8058 := by
  apply coveredState_split_literal (state := state_8058) 0
    state_8059 state_8118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_8059
  · exact cover_8118
#print axioms cover_8058
end Mub6.Numerical.CircleFullPrototype.Forest
