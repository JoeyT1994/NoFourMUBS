import CircleFullInterface
import CircleForestAssembly0036
import CircleForestAssembly0037
import CircleForestChunk0151
import CircleForestChunk0152
import CircleForestChunk0153
import CircleForestChunk0154
import CircleForestChunk0155
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_973959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 27)))
theorem cover_973959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973959 := by
  apply coveredState_split_literal (state := state_973959) 0
    state_973960 state_974039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973960
  · exact cover_974039
#print axioms cover_973959

def state_973827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 27)))
theorem cover_973827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973827 := by
  apply coveredState_split_literal (state := state_973827) 2
    state_973828 state_973959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973828
  · exact cover_973959
#print axioms cover_973827

def state_973821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 13)))
theorem cover_973821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973821 := by
  apply coveredState_split_literal (state := state_973821) 4
    state_973822 state_973827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973822
  · exact cover_973827
#print axioms cover_973821

def state_973820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
theorem cover_973820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973820 := by
  apply coveredState_split_literal (state := state_973820) 3
    state_973821 state_974058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973821
  · exact cover_974058
#print axioms cover_973820

def state_973819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
theorem cover_973819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973819 := by
  apply coveredState_split_literal (state := state_973819) 1
    state_973820 state_974073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973820
  · exact cover_974073
#print axioms cover_973819

def state_973787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
theorem cover_973787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973787 := by
  apply coveredState_split_literal (state := state_973787) 0
    state_973788 state_973819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973788
  · exact cover_973819
#print axioms cover_973787

def state_973786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 13)))
theorem cover_973786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973786 := by
  apply coveredState_split_literal (state := state_973786) 2
    state_973787 state_974084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973787
  · exact cover_974084
#print axioms cover_973786

def state_973780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 6)))
theorem cover_973780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973780 := by
  apply coveredState_split_literal (state := state_973780) 4
    state_973781 state_973786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973781
  · exact cover_973786
#print axioms cover_973780

def state_973779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_973779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973779 := by
  apply coveredState_split_literal (state := state_973779) 3
    state_973780 state_974147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_973780
  · exact cover_974147
#print axioms cover_973779

def state_972735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_972735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972735 := by
  apply coveredState_split_literal (state := state_972735) 1
    state_972736 state_973779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972736
  · exact cover_973779
#print axioms cover_972735

def state_972663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_972663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972663 := by
  apply coveredState_split_literal (state := state_972663) 0
    state_972664 state_972735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972664
  · exact cover_972735
#print axioms cover_972663

def state_974380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 56)))
theorem cover_974380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974380 := by
  apply coveredState_split_literal (state := state_974380) 1
    state_974381 state_974398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974381
  · exact cover_974398
#print axioms cover_974380

def state_974364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 56)))
theorem cover_974364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974364 := by
  apply coveredState_split_literal (state := state_974364) 0
    state_974365 state_974380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974365
  · exact cover_974380
#print axioms cover_974364

def state_974354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 56)))
theorem cover_974354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974354 := by
  apply coveredState_split_literal (state := state_974354) 3
    state_974355 state_974364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974355
  · exact cover_974364
#print axioms cover_974354

def state_974320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 56)))
theorem cover_974320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974320 := by
  apply coveredState_split_literal (state := state_974320) 2
    state_974321 state_974354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974321
  · exact cover_974354
#print axioms cover_974320

def state_974319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_974319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974319 := by
  apply coveredState_split_literal (state := state_974319) 4
    state_974320 state_974445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974320
  · exact cover_974445
#print axioms cover_974319

def state_974297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_974297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974297 := by
  apply coveredState_split_literal (state := state_974297) 1
    state_974298 state_974319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974298
  · exact cover_974319
#print axioms cover_974297

def state_974453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 56)))
theorem cover_974453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974453 := by
  apply coveredState_split_literal (state := state_974453) 2
    state_974454 state_974469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974454
  · exact cover_974469
#print axioms cover_974453

def state_974452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_974452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974452 := by
  apply coveredState_split_literal (state := state_974452) 4
    state_974453 state_974528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974453
  · exact cover_974528
#print axioms cover_974452

def state_974450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_974450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974450 := by
  apply coveredState_split_literal (state := state_974450) 1
    state_974451 state_974452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974451
  · exact cover_974452
#print axioms cover_974450

def state_974296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_974296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974296 := by
  apply coveredState_split_literal (state := state_974296) 0
    state_974297 state_974450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974297
  · exact cover_974450
#print axioms cover_974296

def state_974295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 14)))
theorem cover_974295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974295 := by
  apply coveredState_split_literal (state := state_974295) 4
    state_974296 state_974531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974296
  · exact cover_974531
#print axioms cover_974295

def state_974267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
theorem cover_974267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974267 := by
  apply coveredState_split_literal (state := state_974267) 2
    state_974268 state_974295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974268
  · exact cover_974295
#print axioms cover_974267

def state_974266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_974266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974266 := by
  apply coveredState_split_literal (state := state_974266) 3
    state_974267 state_974536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974267
  · exact cover_974536
#print axioms cover_974266

def state_974252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_974252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974252 := by
  apply coveredState_split_literal (state := state_974252) 1
    state_974253 state_974266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974253
  · exact cover_974266
#print axioms cover_974252

def state_974198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_974198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974198 := by
  apply coveredState_split_literal (state := state_974198) 0
    state_974199 state_974252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974199
  · exact cover_974252
#print axioms cover_974198

def state_974197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_974197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974197 := by
  apply coveredState_split_literal (state := state_974197) 4
    state_974198 state_974597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974198
  · exact cover_974597
#print axioms cover_974197

def state_974668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 28)))
theorem cover_974668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974668 := by
  apply coveredState_split_literal (state := state_974668) 0
    state_974669 state_974710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974669
  · exact cover_974710
#print axioms cover_974668

def state_974667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 28)))
theorem cover_974667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974667 := by
  apply coveredState_split_literal (state := state_974667) 2
    state_974668 state_974767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974668
  · exact cover_974767
#print axioms cover_974667

def state_974666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 14)))
theorem cover_974666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974666 := by
  apply coveredState_split_literal (state := state_974666) 4
    state_974667 state_974780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974667
  · exact cover_974780
#print axioms cover_974666

def state_974808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 56)))
theorem cover_974808 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974808 := by
  apply coveredState_split_literal (state := state_974808) 2
    state_974809 state_974868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974809
  · exact cover_974868
#print axioms cover_974808

def state_974807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 28)))
theorem cover_974807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974807 := by
  apply coveredState_split_literal (state := state_974807) 4
    state_974808 state_974903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974808
  · exact cover_974903
#print axioms cover_974807
end Mub6.Numerical.CircleFullD0.Forest
