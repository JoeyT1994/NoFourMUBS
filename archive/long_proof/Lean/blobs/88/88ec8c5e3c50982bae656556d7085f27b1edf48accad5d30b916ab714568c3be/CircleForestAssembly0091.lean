import CircleFullInterface
import CircleForestAssembly0090
import CircleForestChunk0361
import CircleForestChunk0365
import CircleForestChunk0366
import CircleForestChunk0367
import CircleForestChunk0368
import CircleForestChunk0369
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_162364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 13)))
theorem cover_162364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162364 := by
  apply coveredState_split_literal (state := state_162364) 4
    state_162365 state_162542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162365
  · exact cover_162542
#print axioms cover_162364

def state_162166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_162166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162166 := by
  apply coveredState_split_literal (state := state_162166) 3
    state_162167 state_162364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162167
  · exact cover_162364
#print axioms cover_162166

def state_162165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 13)))
theorem cover_162165 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162165 := by
  apply coveredState_split_literal (state := state_162165) 0
    state_162166 state_163153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162166
  · exact cover_163153
#print axioms cover_162165

def state_162164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
theorem cover_162164 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162164 := by
  apply coveredState_split_literal (state := state_162164) 2
    state_162165 state_163198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162165
  · exact cover_163198
#print axioms cover_162164

def state_162163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 13)))
theorem cover_162163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162163 := by
  apply coveredState_split_literal (state := state_162163) 1
    state_162164 state_163219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162164
  · exact cover_163219
#print axioms cover_162163

def state_162123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 6)))
theorem cover_162123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162123 := by
  apply coveredState_split_literal (state := state_162123) 4
    state_162124 state_162163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162124
  · exact cover_162163
#print axioms cover_162123

def state_162079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_162079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162079 := by
  apply coveredState_split_literal (state := state_162079) 3
    state_162080 state_162123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162080
  · exact cover_162123
#print axioms cover_162079

def state_162078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_162078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162078 := by
  apply coveredState_split_literal (state := state_162078) 0
    state_162079 state_163242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162079
  · exact cover_163242
#print axioms cover_162078

def state_163352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 14)))
theorem cover_163352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163352 := by
  apply coveredState_split_literal (state := state_163352) 2
    state_163353 state_163402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163353
  · exact cover_163402
#print axioms cover_163352

def state_163340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 14)))
theorem cover_163340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163340 := by
  apply coveredState_split_literal (state := state_163340) 1
    state_163341 state_163352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163341
  · exact cover_163352
#print axioms cover_163340

def state_163322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 14)))
theorem cover_163322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163322 := by
  apply coveredState_split_literal (state := state_163322) 3
    state_163323 state_163340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163323
  · exact cover_163340
#print axioms cover_163322

def state_163321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 14)))
theorem cover_163321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163321 := by
  apply coveredState_split_literal (state := state_163321) 0
    state_163322 state_163445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163322
  · exact cover_163445
#print axioms cover_163321

def state_163320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 7)))
theorem cover_163320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163320 := by
  apply coveredState_split_literal (state := state_163320) 4
    state_163321 state_163454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163321
  · exact cover_163454
#print axioms cover_163320

def state_163319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 7)))
theorem cover_163319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163319 := by
  apply coveredState_split_literal (state := state_163319) 2
    state_163320 state_163455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163320
  · exact cover_163455
#print axioms cover_163319

def state_163474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 7)))
theorem cover_163474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163474 := by
  apply coveredState_split_literal (state := state_163474) 2
    state_163475 state_163508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163475
  · exact cover_163508
#print axioms cover_163474

def state_163318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 7)))
theorem cover_163318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163318 := by
  apply coveredState_split_literal (state := state_163318) 1
    state_163319 state_163474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163319
  · exact cover_163474
#print axioms cover_163318

def state_163268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_163268 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163268 := by
  apply coveredState_split_literal (state := state_163268) 3
    state_163269 state_163318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163269
  · exact cover_163318
#print axioms cover_163268

def state_163267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 7)))
theorem cover_163267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163267 := by
  apply coveredState_split_literal (state := state_163267) 0
    state_163268 state_163543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163268
  · exact cover_163543
#print axioms cover_163267

def state_162077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_162077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_162077 := by
  apply coveredState_split_literal (state := state_162077) 4
    state_162078 state_163267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_162078
  · exact cover_163267
#print axioms cover_162077

def state_163642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 27)))
theorem cover_163642 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163642 := by
  apply coveredState_split_literal (state := state_163642) 1
    state_163643 state_163700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163643
  · exact cover_163700
#print axioms cover_163642

def state_163622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 13)))
theorem cover_163622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163622 := by
  apply coveredState_split_literal (state := state_163622) 4
    state_163623 state_163642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163623
  · exact cover_163642
#print axioms cover_163622

def state_163621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 13)))
theorem cover_163621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163621 := by
  apply coveredState_split_literal (state := state_163621) 0
    state_163622 state_163745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163622
  · exact cover_163745
#print axioms cover_163621

def state_163620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 13)))
theorem cover_163620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163620 := by
  apply coveredState_split_literal (state := state_163620) 3
    state_163621 state_163754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163621
  · exact cover_163754
#print axioms cover_163620

def state_163619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
theorem cover_163619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163619 := by
  apply coveredState_split_literal (state := state_163619) 2
    state_163620 state_163755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163620
  · exact cover_163755
#print axioms cover_163619

def state_163618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 13)))
theorem cover_163618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163618 := by
  apply coveredState_split_literal (state := state_163618) 1
    state_163619 state_163788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163619
  · exact cover_163788
#print axioms cover_163618

def state_163566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_163566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163566 := by
  apply coveredState_split_literal (state := state_163566) 4
    state_163567 state_163618
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163567
  · exact cover_163618
#print axioms cover_163566

def state_163565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_163565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163565 := by
  apply coveredState_split_literal (state := state_163565) 0
    state_163566 state_163843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163566
  · exact cover_163843
#print axioms cover_163565

def state_163869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 7)))
theorem cover_163869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163869 := by
  apply coveredState_split_literal (state := state_163869) 3
    state_163870 state_163933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163870
  · exact cover_163933
#print axioms cover_163869

def state_163868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 7)))
theorem cover_163868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_163868 := by
  apply coveredState_split_literal (state := state_163868) 2
    state_163869 state_163938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_163869
  · exact cover_163938
#print axioms cover_163868

def state_164011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 14)))
theorem cover_164011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164011 := by
  apply coveredState_split_literal (state := state_164011) 0
    state_164012 state_164049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164012
  · exact cover_164049
#print axioms cover_164011

def state_164010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 7)))
theorem cover_164010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164010 := by
  apply coveredState_split_literal (state := state_164010) 4
    state_164011 state_164078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164011
  · exact cover_164078
#print axioms cover_164010

def state_164009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 7)))
theorem cover_164009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_164009 := by
  apply coveredState_split_literal (state := state_164009) 3
    state_164010 state_164081
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164010
  · exact cover_164081
#print axioms cover_164009
end Mub6.Numerical.CircleFullPrototype.Forest
