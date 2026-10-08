import CircleFullInterface
import CircleForestAssembly0035
import CircleForestChunk0138
import CircleForestChunk0140
import CircleForestChunk0141
import CircleForestChunk0142
import CircleForestChunk0143
import CircleForestChunk0144
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_55241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 27)))
theorem cover_55241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55241 := by
  apply coveredState_split_literal (state := state_55241) 2
    state_55242 state_55301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55242
  · exact cover_55301
#print axioms cover_55241

def state_55117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 27)))
theorem cover_55117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55117 := by
  apply coveredState_split_literal (state := state_55117) 1
    state_55118 state_55241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55118
  · exact cover_55241
#print axioms cover_55117

def state_55330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 77) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
theorem cover_55330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55330 := by
  apply coveredState_split_literal (state := state_55330) 0
    state_55331 state_55392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55331
  · exact cover_55392
#print axioms cover_55330

def state_55314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 96 else 54)))
theorem cover_55314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55314 := by
  apply coveredState_split_literal (state := state_55314) 1
    state_55315 state_55330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55315
  · exact cover_55330
#print axioms cover_55314

def state_55313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 54)))
theorem cover_55313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55313 := by
  apply coveredState_split_literal (state := state_55313) 3
    state_55314 state_55407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55314
  · exact cover_55407
#print axioms cover_55313

def state_55312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 27)))
theorem cover_55312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55312 := by
  apply coveredState_split_literal (state := state_55312) 4
    state_55313 state_55454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55313
  · exact cover_55454
#print axioms cover_55312

def state_55311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 27)))
theorem cover_55311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55311 := by
  apply coveredState_split_literal (state := state_55311) 2
    state_55312 state_55477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55312
  · exact cover_55477
#print axioms cover_55311

def state_55500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 54)))
theorem cover_55500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55500 := by
  apply coveredState_split_literal (state := state_55500) 3
    state_55501 state_55538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55501
  · exact cover_55538
#print axioms cover_55500

def state_55583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 55)))
theorem cover_55583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55583 := by
  apply coveredState_split_literal (state := state_55583) 3
    state_55584 state_55625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55584
  · exact cover_55625
#print axioms cover_55583

def state_55499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 36 else (if j.val < 4 then 48 else 27)))
theorem cover_55499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55499 := by
  apply coveredState_split_literal (state := state_55499) 4
    state_55500 state_55583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55500
  · exact cover_55583
#print axioms cover_55499

def state_55498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 27)))
theorem cover_55498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55498 := by
  apply coveredState_split_literal (state := state_55498) 2
    state_55499 state_55662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55499
  · exact cover_55662
#print axioms cover_55498

def state_55310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 27)))
theorem cover_55310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55310 := by
  apply coveredState_split_literal (state := state_55310) 1
    state_55311 state_55498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55311
  · exact cover_55498
#print axioms cover_55310

def state_55116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 27)))
theorem cover_55116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55116 := by
  apply coveredState_split_literal (state := state_55116) 0
    state_55117 state_55310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55117
  · exact cover_55310
#print axioms cover_55116

def state_55685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 27)))
theorem cover_55685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55685 := by
  apply coveredState_split_literal (state := state_55685) 0
    state_55686 state_55707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55686
  · exact cover_55707
#print axioms cover_55685

def state_55115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 27)))
theorem cover_55115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55115 := by
  apply coveredState_split_literal (state := state_55115) 3
    state_55116 state_55685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55116
  · exact cover_55685
#print axioms cover_55115

def state_55114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
theorem cover_55114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55114 := by
  apply coveredState_split_literal (state := state_55114) 2
    state_55115 state_55766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55115
  · exact cover_55766
#print axioms cover_55114

def state_55068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
theorem cover_55068 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55068 := by
  apply coveredState_split_literal (state := state_55068) 1
    state_55069 state_55114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55069
  · exact cover_55114
#print axioms cover_55068

def state_55034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 27)))
theorem cover_55034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55034 := by
  apply coveredState_split_literal (state := state_55034) 0
    state_55035 state_55068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55035
  · exact cover_55068
#print axioms cover_55034

def state_54938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 13)))
theorem cover_54938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54938 := by
  apply coveredState_split_literal (state := state_54938) 4
    state_54939 state_55034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54939
  · exact cover_55034
#print axioms cover_54938

def state_54937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_54937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54937 := by
  apply coveredState_split_literal (state := state_54937) 3
    state_54938 state_55797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54938
  · exact cover_55797
#print axioms cover_54937

def state_54447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_54447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54447 := by
  apply coveredState_split_literal (state := state_54447) 2
    state_54448 state_54937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54448
  · exact cover_54937
#print axioms cover_54447

def state_54431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_54431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54431 := by
  apply coveredState_split_literal (state := state_54431) 1
    state_54432 state_54447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54432
  · exact cover_54447
#print axioms cover_54431

def state_54411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_54411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54411 := by
  apply coveredState_split_literal (state := state_54411) 0
    state_54412 state_54431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54412
  · exact cover_54431
#print axioms cover_54411

def state_54327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_54327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54327 := by
  apply coveredState_split_literal (state := state_54327) 4
    state_54328 state_54411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54328
  · exact cover_54411
#print axioms cover_54327

def state_54326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_54326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54326 := by
  apply coveredState_split_literal (state := state_54326) 3
    state_54327 state_55850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54327
  · exact cover_55850
#print axioms cover_54326

def state_55894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_55894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55894 := by
  apply coveredState_split_literal (state := state_55894) 2
    state_55895 state_55946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55895
  · exact cover_55946
#print axioms cover_55894

def state_55884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_55884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55884 := by
  apply coveredState_split_literal (state := state_55884) 1
    state_55885 state_55894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55885
  · exact cover_55894
#print axioms cover_55884

def state_55878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_55878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55878 := by
  apply coveredState_split_literal (state := state_55878) 0
    state_55879 state_55884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55879
  · exact cover_55884
#print axioms cover_55878

def state_55877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_55877 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55877 := by
  apply coveredState_split_literal (state := state_55877) 3
    state_55878 state_55985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_55878
  · exact cover_55985
#print axioms cover_55877

def state_54325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_54325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54325 := by
  apply coveredState_split_literal (state := state_54325) 4
    state_54326 state_55877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54326
  · exact cover_55877
#print axioms cover_54325

def state_54324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_54324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54324 := by
  apply coveredState_split_literal (state := state_54324) 3
    state_54325 state_56000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54325
  · exact cover_56000
#print axioms cover_54324

def state_54323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_54323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_54323 := by
  apply coveredState_split_literal (state := state_54323) 2
    state_54324 state_56011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_54324
  · exact cover_56011
#print axioms cover_54323
end Mub6.Numerical.CircleFullPrototype.Forest
