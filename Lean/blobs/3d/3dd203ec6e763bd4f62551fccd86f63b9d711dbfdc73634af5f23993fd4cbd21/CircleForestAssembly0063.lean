import CircleFullInterface
import CircleForestAssembly0062
import CircleForestChunk0251
import CircleForestChunk0252
import CircleForestChunk0253
import CircleForestChunk0254
import CircleForestChunk0255
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_135775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_135775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135775 := by
  apply coveredState_split_literal (state := state_135775) 2
    state_135776 state_135805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135776
  · exact cover_135805
#print axioms cover_135775

def state_135910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 90) else (if j.val < 3 then 90 else (if j.val < 4 then 108 else 54)))
theorem cover_135910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135910 := by
  apply coveredState_split_literal (state := state_135910) 4
    state_135911 state_135974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135911
  · exact cover_135974
#print axioms cover_135910

def state_135909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 90) else (if j.val < 3 then 90 else (if j.val < 4 then 54 else 54)))
theorem cover_135909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135909 := by
  apply coveredState_split_literal (state := state_135909) 3
    state_135910 state_135981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135910
  · exact cover_135981
#print axioms cover_135909

def state_135908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 90) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
theorem cover_135908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135908 := by
  apply coveredState_split_literal (state := state_135908) 2
    state_135909 state_135998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135909
  · exact cover_135998
#print axioms cover_135908

def state_136041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 91) else (if j.val < 3 then 91 else (if j.val < 4 then 54 else 54)))
theorem cover_136041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136041 := by
  apply coveredState_split_literal (state := state_136041) 3
    state_136042 state_136101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136042
  · exact cover_136101
#print axioms cover_136041

def state_136017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 91) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
theorem cover_136017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136017 := by
  apply coveredState_split_literal (state := state_136017) 2
    state_136018 state_136041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136018
  · exact cover_136041
#print axioms cover_136017

def state_135907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
theorem cover_135907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135907 := by
  apply coveredState_split_literal (state := state_135907) 1
    state_135908 state_136017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135908
  · exact cover_136017
#print axioms cover_135907

def state_135906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
theorem cover_135906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135906 := by
  apply coveredState_split_literal (state := state_135906) 0
    state_135907 state_136116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135907
  · exact cover_136116
#print axioms cover_135906

def state_135905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 27)))
theorem cover_135905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135905 := by
  apply coveredState_split_literal (state := state_135905) 4
    state_135906 state_136117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135906
  · exact cover_136117
#print axioms cover_135905

def state_135904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 27)))
theorem cover_135904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135904 := by
  apply coveredState_split_literal (state := state_135904) 3
    state_135905 state_136148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135905
  · exact cover_136148
#print axioms cover_135904

def state_135854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_135854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135854 := by
  apply coveredState_split_literal (state := state_135854) 2
    state_135855 state_135904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135855
  · exact cover_135904
#print axioms cover_135854

def state_135774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_135774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135774 := by
  apply coveredState_split_literal (state := state_135774) 1
    state_135775 state_135854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135775
  · exact cover_135854
#print axioms cover_135774

def state_135664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_135664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135664 := by
  apply coveredState_split_literal (state := state_135664) 0
    state_135665 state_135774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135665
  · exact cover_135774
#print axioms cover_135664

def state_135494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 13)))
theorem cover_135494 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135494 := by
  apply coveredState_split_literal (state := state_135494) 4
    state_135495 state_135664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135495
  · exact cover_135664
#print axioms cover_135494

def state_134848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
theorem cover_134848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134848 := by
  apply coveredState_split_literal (state := state_134848) 3
    state_134849 state_135494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134849
  · exact cover_135494
#print axioms cover_134848

def state_136189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 26)))
theorem cover_136189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136189 := by
  apply coveredState_split_literal (state := state_136189) 0
    state_136190 state_136215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136190
  · exact cover_136215
#print axioms cover_136189

def state_136188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 13)))
theorem cover_136188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136188 := by
  apply coveredState_split_literal (state := state_136188) 4
    state_136189 state_136266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136189
  · exact cover_136266
#print axioms cover_136188

def state_136352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 54)))
theorem cover_136352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136352 := by
  apply coveredState_split_literal (state := state_136352) 0
    state_136353 state_136368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136353
  · exact cover_136368
#print axioms cover_136352

def state_136351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 54 else 27)))
theorem cover_136351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136351 := by
  apply coveredState_split_literal (state := state_136351) 4
    state_136352 state_136419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136352
  · exact cover_136419
#print axioms cover_136351

def state_136350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
theorem cover_136350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136350 := by
  apply coveredState_split_literal (state := state_136350) 3
    state_136351 state_136440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136351
  · exact cover_136440
#print axioms cover_136350

def state_136342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 46 else (if j.val < 4 then 27 else 27)))
theorem cover_136342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136342 := by
  apply coveredState_split_literal (state := state_136342) 1
    state_136343 state_136350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136343
  · exact cover_136350
#print axioms cover_136342

def state_136341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_136341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136341 := by
  apply coveredState_split_literal (state := state_136341) 2
    state_136342 state_136449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136342
  · exact cover_136449
#print axioms cover_136341

def state_136327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 27)))
theorem cover_136327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136327 := by
  apply coveredState_split_literal (state := state_136327) 0
    state_136328 state_136341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136328
  · exact cover_136341
#print axioms cover_136327

def state_136299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 13)))
theorem cover_136299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136299 := by
  apply coveredState_split_literal (state := state_136299) 4
    state_136300 state_136327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136300
  · exact cover_136327
#print axioms cover_136299

def state_136187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 23 else (if j.val < 4 then 13 else 13)))
theorem cover_136187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136187 := by
  apply coveredState_split_literal (state := state_136187) 3
    state_136188 state_136299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136188
  · exact cover_136299
#print axioms cover_136187

def state_134847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134847 := by
  apply coveredState_split_literal (state := state_134847) 2
    state_134848 state_136187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134848
  · exact cover_136187
#print axioms cover_134847

def state_136459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_136459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136459 := by
  apply coveredState_split_literal (state := state_136459) 0
    state_136460 state_136485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136460
  · exact cover_136485
#print axioms cover_136459

def state_136458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 13)))
theorem cover_136458 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136458 := by
  apply coveredState_split_literal (state := state_136458) 4
    state_136459 state_136538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136459
  · exact cover_136538
#print axioms cover_136458

def state_136626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 54)))
theorem cover_136626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136626 := by
  apply coveredState_split_literal (state := state_136626) 0
    state_136627 state_136642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136627
  · exact cover_136642
#print axioms cover_136626

def state_136625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 27)))
theorem cover_136625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136625 := by
  apply coveredState_split_literal (state := state_136625) 4
    state_136626 state_136693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136626
  · exact cover_136693
#print axioms cover_136625

def state_136624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 27)))
theorem cover_136624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136624 := by
  apply coveredState_split_literal (state := state_136624) 3
    state_136625 state_136694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136625
  · exact cover_136694
#print axioms cover_136624

def state_136614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 46) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_136614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_136614 := by
  apply coveredState_split_literal (state := state_136614) 2
    state_136615 state_136624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_136615
  · exact cover_136624
#print axioms cover_136614
end Mub6.Numerical.CircleFullPrototype.Forest
