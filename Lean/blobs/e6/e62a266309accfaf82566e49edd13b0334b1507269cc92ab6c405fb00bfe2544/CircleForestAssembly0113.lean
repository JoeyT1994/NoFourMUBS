import CircleFullInterface
import CircleForestAssembly0112
import CircleForestChunk0444
import CircleForestChunk0445
import CircleForestChunk0446
import CircleForestChunk0447
import CircleForestChunk0448
import CircleForestChunk0449
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_182321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 15)))
theorem cover_182321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182321 := by
  apply coveredState_split_literal (state := state_182321) 0
    state_182322 state_182361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182322
  · exact cover_182361
#print axioms cover_182321

def state_182619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
theorem cover_182619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182619 := by
  apply coveredState_split_literal (state := state_182619) 1
    state_182620 state_182681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182620
  · exact cover_182681
#print axioms cover_182619

def state_182618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 15)))
theorem cover_182618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182618 := by
  apply coveredState_split_literal (state := state_182618) 4
    state_182619 state_182688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182619
  · exact cover_182688
#print axioms cover_182618

def state_182617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
theorem cover_182617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182617 := by
  apply coveredState_split_literal (state := state_182617) 3
    state_182618 state_182693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182618
  · exact cover_182693
#print axioms cover_182617

def state_182765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 30)))
theorem cover_182765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182765 := by
  apply coveredState_split_literal (state := state_182765) 4
    state_182766 state_182823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182766
  · exact cover_182823
#print axioms cover_182765

def state_182707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
theorem cover_182707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182707 := by
  apply coveredState_split_literal (state := state_182707) 3
    state_182708 state_182765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182708
  · exact cover_182765
#print axioms cover_182707

def state_182930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 100) else (if j.val < 3 then 101 else (if j.val < 4 then 60 else 61)))
theorem cover_182930 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182930 := by
  apply coveredState_split_literal (state := state_182930) 0
    state_182931 state_182968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182931
  · exact cover_182968
#print axioms cover_182930

def state_182900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 100) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 61)))
theorem cover_182900 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182900 := by
  apply coveredState_split_literal (state := state_182900) 2
    state_182901 state_182930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182901
  · exact cover_182930
#print axioms cover_182900

def state_183005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 101) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 61)))
theorem cover_183005 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183005 := by
  apply coveredState_split_literal (state := state_183005) 2
    state_183006 state_183023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183006
  · exact cover_183023
#print axioms cover_183005

def state_182899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 61)))
theorem cover_182899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182899 := by
  apply coveredState_split_literal (state := state_182899) 1
    state_182900 state_183005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182900
  · exact cover_183005
#print axioms cover_182899

def state_182849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 30)))
theorem cover_182849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182849 := by
  apply coveredState_split_literal (state := state_182849) 4
    state_182850 state_182899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182850
  · exact cover_182899
#print axioms cover_182849

def state_183122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 101) else (if j.val < 3 then 100 else (if j.val < 4 then 61 else 60)))
theorem cover_183122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183122 := by
  apply coveredState_split_literal (state := state_183122) 0
    state_183123 state_183160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183123
  · exact cover_183160
#print axioms cover_183122

def state_183121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 101) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 60)))
theorem cover_183121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183121 := by
  apply coveredState_split_literal (state := state_183121) 2
    state_183122 state_183197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183122
  · exact cover_183197
#print axioms cover_183121

def state_183071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 60)))
theorem cover_183071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183071 := by
  apply coveredState_split_literal (state := state_183071) 1
    state_183072 state_183121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183072
  · exact cover_183121
#print axioms cover_183071

def state_183246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 61)))
theorem cover_183246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183246 := by
  apply coveredState_split_literal (state := state_183246) 1
    state_183247 state_183260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183247
  · exact cover_183260
#print axioms cover_183246

def state_183070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 61 else 30)))
theorem cover_183070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183070 := by
  apply coveredState_split_literal (state := state_183070) 4
    state_183071 state_183246
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183071
  · exact cover_183246
#print axioms cover_183070

def state_182848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
theorem cover_182848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182848 := by
  apply coveredState_split_literal (state := state_182848) 3
    state_182849 state_183070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182849
  · exact cover_183070
#print axioms cover_182848

def state_182706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
theorem cover_182706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182706 := by
  apply coveredState_split_literal (state := state_182706) 0
    state_182707 state_182848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182707
  · exact cover_182848
#print axioms cover_182706

def state_183319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 30)))
theorem cover_183319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183319 := by
  apply coveredState_split_literal (state := state_183319) 0
    state_183320 state_183335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183320
  · exact cover_183335
#print axioms cover_183319

def state_182705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
theorem cover_182705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182705 := by
  apply coveredState_split_literal (state := state_182705) 2
    state_182706 state_183319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182706
  · exact cover_183319
#print axioms cover_182705

def state_183387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
theorem cover_183387 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183387 := by
  apply coveredState_split_literal (state := state_183387) 0
    state_183388 state_183403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183388
  · exact cover_183403
#print axioms cover_183387

def state_183386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
theorem cover_183386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183386 := by
  apply coveredState_split_literal (state := state_183386) 2
    state_183387 state_183454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183387
  · exact cover_183454
#print axioms cover_183386

def state_182704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
theorem cover_182704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182704 := by
  apply coveredState_split_literal (state := state_182704) 1
    state_182705 state_183386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182705
  · exact cover_183386
#print axioms cover_182704

def state_183457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 31)))
theorem cover_183457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183457 := by
  apply coveredState_split_literal (state := state_183457) 1
    state_183458 state_183497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183458
  · exact cover_183497
#print axioms cover_183457

def state_182703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 15)))
theorem cover_182703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182703 := by
  apply coveredState_split_literal (state := state_182703) 4
    state_182704 state_183457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182704
  · exact cover_183457
#print axioms cover_182703

def state_183525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 30)))
theorem cover_183525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183525 := by
  apply coveredState_split_literal (state := state_183525) 1
    state_183526 state_183567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183526
  · exact cover_183567
#print axioms cover_183525

def state_183524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 15)))
theorem cover_183524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_183524 := by
  apply coveredState_split_literal (state := state_183524) 4
    state_183525 state_183594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_183525
  · exact cover_183594
#print axioms cover_183524

def state_182702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
theorem cover_182702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182702 := by
  apply coveredState_split_literal (state := state_182702) 3
    state_182703 state_183524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182703
  · exact cover_183524
#print axioms cover_182702

def state_182616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
theorem cover_182616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182616 := by
  apply coveredState_split_literal (state := state_182616) 0
    state_182617 state_182702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182617
  · exact cover_182702
#print axioms cover_182616

def state_182320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
theorem cover_182320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182320 := by
  apply coveredState_split_literal (state := state_182320) 2
    state_182321 state_182616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182321
  · exact cover_182616
#print axioms cover_182320

def state_181940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
theorem cover_181940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181940 := by
  apply coveredState_split_literal (state := state_181940) 1
    state_181941 state_182320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181941
  · exact cover_182320
#print axioms cover_181940

def state_180972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 7)))
theorem cover_180972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180972 := by
  apply coveredState_split_literal (state := state_180972) 4
    state_180973 state_181940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180973
  · exact cover_181940
#print axioms cover_180972
end Mub6.Numerical.CircleFullPrototype.Forest
