import CircleFullInterface
import CircleForestAssembly0084
import CircleForestChunk0341
import CircleForestChunk0342
import CircleForestChunk0343
import CircleForestChunk0344
import CircleForestChunk0345
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_157241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
theorem cover_157241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157241 := by
  apply coveredState_split_literal (state := state_157241) 1
    state_157242 state_157309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157242
  · exact cover_157309
#print axioms cover_157241

def state_157097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_157097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157097 := by
  apply coveredState_split_literal (state := state_157097) 3
    state_157098 state_157241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157098
  · exact cover_157241
#print axioms cover_157097

def state_157096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_157096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157096 := by
  apply coveredState_split_literal (state := state_157096) 0
    state_157097 state_157324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157097
  · exact cover_157324
#print axioms cover_157096

def state_157338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 56) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
theorem cover_157338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157338 := by
  apply coveredState_split_literal (state := state_157338) 2
    state_157339 state_157356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157339
  · exact cover_157356
#print axioms cover_157338

def state_157533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 114) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 61)))
theorem cover_157533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157533 := by
  apply coveredState_split_literal (state := state_157533) 2
    state_157534 state_157573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157534
  · exact cover_157573
#print axioms cover_157533

def state_157532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 61)))
theorem cover_157532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157532 := by
  apply coveredState_split_literal (state := state_157532) 1
    state_157533 state_157606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157533
  · exact cover_157606
#print axioms cover_157532

def state_157531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 61)))
theorem cover_157531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157531 := by
  apply coveredState_split_literal (state := state_157531) 0
    state_157532 state_157639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157532
  · exact cover_157639
#print axioms cover_157531

def state_157475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 30)))
theorem cover_157475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157475 := by
  apply coveredState_split_literal (state := state_157475) 4
    state_157476 state_157531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157476
  · exact cover_157531
#print axioms cover_157475

def state_157447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 57 else (if j.val < 4 then 20 else 30)))
theorem cover_157447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157447 := by
  apply coveredState_split_literal (state := state_157447) 3
    state_157448 state_157475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157448
  · exact cover_157475
#print axioms cover_157447

def state_157409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
theorem cover_157409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157409 := by
  apply coveredState_split_literal (state := state_157409) 2
    state_157410 state_157447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157410
  · exact cover_157447
#print axioms cover_157409

def state_157337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
theorem cover_157337 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157337 := by
  apply coveredState_split_literal (state := state_157337) 1
    state_157338 state_157409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157338
  · exact cover_157409
#print axioms cover_157337

def state_157336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 30)))
theorem cover_157336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157336 := by
  apply coveredState_split_literal (state := state_157336) 0
    state_157337 state_157684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157337
  · exact cover_157684
#print axioms cover_157336

def state_157335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 15)))
theorem cover_157335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157335 := by
  apply coveredState_split_literal (state := state_157335) 4
    state_157336 state_157715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157336
  · exact cover_157715
#print axioms cover_157335

def state_157772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 30)))
theorem cover_157772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157772 := by
  apply coveredState_split_literal (state := state_157772) 1
    state_157773 state_157802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157773
  · exact cover_157802
#print axioms cover_157772

def state_157771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 30)))
theorem cover_157771 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157771 := by
  apply coveredState_split_literal (state := state_157771) 0
    state_157772 state_157851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157772
  · exact cover_157851
#print axioms cover_157771

def state_157770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 15)))
theorem cover_157770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157770 := by
  apply coveredState_split_literal (state := state_157770) 4
    state_157771 state_157852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157771
  · exact cover_157852
#print axioms cover_157770

def state_157334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 15)))
theorem cover_157334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157334 := by
  apply coveredState_split_literal (state := state_157334) 2
    state_157335 state_157770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157335
  · exact cover_157770
#print axioms cover_157334

def state_157892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 15)))
theorem cover_157892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157892 := by
  apply coveredState_split_literal (state := state_157892) 4
    state_157893 state_157944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157893
  · exact cover_157944
#print axioms cover_157892

def state_157891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 15)))
theorem cover_157891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157891 := by
  apply coveredState_split_literal (state := state_157891) 2
    state_157892 state_157963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157892
  · exact cover_157963
#print axioms cover_157891

def state_157333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 15)))
theorem cover_157333 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_157333 := by
  apply coveredState_split_literal (state := state_157333) 1
    state_157334 state_157891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_157334
  · exact cover_157891
#print axioms cover_157333

def state_158055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 28 else (if j.val < 4 then 42 else 30)))
theorem cover_158055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158055 := by
  apply coveredState_split_literal (state := state_158055) 2
    state_158056 state_158057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158056
  · exact cover_158057
#print axioms cover_158055

def state_158021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 42 else 30)))
theorem cover_158021 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158021 := by
  apply coveredState_split_literal (state := state_158021) 1
    state_158022 state_158055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158022
  · exact cover_158055
#print axioms cover_158021

def state_158020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 30)))
theorem cover_158020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158020 := by
  apply coveredState_split_literal (state := state_158020) 3
    state_158021 state_158120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158021
  · exact cover_158120
#print axioms cover_158020

def state_158019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 30)))
theorem cover_158019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158019 := by
  apply coveredState_split_literal (state := state_158019) 0
    state_158020 state_158125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158020
  · exact cover_158125
#print axioms cover_158019

def state_158018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 28 else (if j.val < 4 then 21 else 15)))
theorem cover_158018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158018 := by
  apply coveredState_split_literal (state := state_158018) 4
    state_158019 state_158134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158019
  · exact cover_158134
#print axioms cover_158018

def state_158165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 58 else (if j.val < 4 then 42 else 30)))
theorem cover_158165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158165 := by
  apply coveredState_split_literal (state := state_158165) 4
    state_158166 state_158213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158166
  · exact cover_158213
#print axioms cover_158165

def state_158164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 29 else (if j.val < 4 then 42 else 30)))
theorem cover_158164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158164 := by
  apply coveredState_split_literal (state := state_158164) 2
    state_158165 state_158230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158165
  · exact cover_158230
#print axioms cover_158164

def state_158154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 42 else 30)))
theorem cover_158154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158154 := by
  apply coveredState_split_literal (state := state_158154) 1
    state_158155 state_158164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158155
  · exact cover_158164
#print axioms cover_158154

def state_158153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 30)))
theorem cover_158153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158153 := by
  apply coveredState_split_literal (state := state_158153) 3
    state_158154 state_158239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158154
  · exact cover_158239
#print axioms cover_158153

def state_158152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 30)))
theorem cover_158152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158152 := by
  apply coveredState_split_literal (state := state_158152) 0
    state_158153 state_158250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158153
  · exact cover_158250
#print axioms cover_158152

def state_158151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 15)))
theorem cover_158151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158151 := by
  apply coveredState_split_literal (state := state_158151) 4
    state_158152 state_158275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158152
  · exact cover_158275
#print axioms cover_158151

def state_158017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 15)))
theorem cover_158017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_158017 := by
  apply coveredState_split_literal (state := state_158017) 2
    state_158018 state_158151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_158018
  · exact cover_158151
#print axioms cover_158017
end Mub6.Numerical.CircleFullPrototype.Forest
