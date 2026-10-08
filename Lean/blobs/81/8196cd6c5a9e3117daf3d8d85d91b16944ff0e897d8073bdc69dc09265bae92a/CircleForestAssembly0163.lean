import CircleFullInterface
import CircleForestAssembly0162
import CircleForestChunk0634
import CircleForestChunk0635
import CircleForestChunk0636
import CircleForestChunk0637
import CircleForestChunk0638
import CircleForestChunk0639
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_391241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 48)))
theorem cover_391241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391241 := by
  apply coveredState_split_literal (state := state_391241) 0
    state_391242 state_391397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391242
  · exact cover_391397
#print axioms cover_391241

def state_391240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 24)))
theorem cover_391240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391240 := by
  apply coveredState_split_literal (state := state_391240) 4
    state_391241 state_391420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391241
  · exact cover_391420
#print axioms cover_391240

def state_391216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 24)))
theorem cover_391216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391216 := by
  apply coveredState_split_literal (state := state_391216) 2
    state_391217 state_391240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391217
  · exact cover_391240
#print axioms cover_391216

def state_391215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
theorem cover_391215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391215 := by
  apply coveredState_split_literal (state := state_391215) 3
    state_391216 state_391431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391216
  · exact cover_391431
#print axioms cover_391215

def state_391214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
theorem cover_391214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391214 := by
  apply coveredState_split_literal (state := state_391214) 1
    state_391215 state_391448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391215
  · exact cover_391448
#print axioms cover_391214

def state_391213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 12)))
theorem cover_391213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391213 := by
  apply coveredState_split_literal (state := state_391213) 4
    state_391214 state_391489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391214
  · exact cover_391489
#print axioms cover_391213

def state_391505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
theorem cover_391505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391505 := by
  apply coveredState_split_literal (state := state_391505) 2
    state_391506 state_391561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391506
  · exact cover_391561
#print axioms cover_391505

def state_391504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
theorem cover_391504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391504 := by
  apply coveredState_split_literal (state := state_391504) 0
    state_391505 state_391584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391505
  · exact cover_391584
#print axioms cover_391504

def state_391503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
theorem cover_391503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391503 := by
  apply coveredState_split_literal (state := state_391503) 4
    state_391504 state_391607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391504
  · exact cover_391607
#print axioms cover_391503

def state_391633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 48)))
theorem cover_391633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391633 := by
  apply coveredState_split_literal (state := state_391633) 0
    state_391634 state_391679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391634
  · exact cover_391679
#print axioms cover_391633

def state_391632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 24)))
theorem cover_391632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391632 := by
  apply coveredState_split_literal (state := state_391632) 4
    state_391633 state_391708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391633
  · exact cover_391708
#print axioms cover_391632

def state_391502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_391502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391502 := by
  apply coveredState_split_literal (state := state_391502) 3
    state_391503 state_391632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391503
  · exact cover_391632
#print axioms cover_391502

def state_391716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
theorem cover_391716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391716 := by
  apply coveredState_split_literal (state := state_391716) 2
    state_391717 state_391756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391717
  · exact cover_391756
#print axioms cover_391716

def state_391715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
theorem cover_391715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391715 := by
  apply coveredState_split_literal (state := state_391715) 0
    state_391716 state_391783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391716
  · exact cover_391783
#print axioms cover_391715

def state_391714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
theorem cover_391714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391714 := by
  apply coveredState_split_literal (state := state_391714) 4
    state_391715 state_391784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391715
  · exact cover_391784
#print axioms cover_391714

def state_391790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 48)))
theorem cover_391790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391790 := by
  apply coveredState_split_literal (state := state_391790) 0
    state_391791 state_391854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391791
  · exact cover_391854
#print axioms cover_391790

def state_391789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 24)))
theorem cover_391789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391789 := by
  apply coveredState_split_literal (state := state_391789) 4
    state_391790 state_391897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391790
  · exact cover_391897
#print axioms cover_391789

def state_391713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_391713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391713 := by
  apply coveredState_split_literal (state := state_391713) 3
    state_391714 state_391789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391714
  · exact cover_391789
#print axioms cover_391713

def state_391501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_391501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391501 := by
  apply coveredState_split_literal (state := state_391501) 1
    state_391502 state_391713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391502
  · exact cover_391713
#print axioms cover_391501

def state_391500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
theorem cover_391500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391500 := by
  apply coveredState_split_literal (state := state_391500) 4
    state_391501 state_391934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391501
  · exact cover_391934
#print axioms cover_391500

def state_391212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_391212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391212 := by
  apply coveredState_split_literal (state := state_391212) 2
    state_391213 state_391500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391213
  · exact cover_391500
#print axioms cover_391212

def state_390792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_390792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390792 := by
  apply coveredState_split_literal (state := state_390792) 0
    state_390793 state_391212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390793
  · exact cover_391212
#print axioms cover_390792

def state_390791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_390791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390791 := by
  apply coveredState_split_literal (state := state_390791) 3
    state_390792 state_391959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390792
  · exact cover_391959
#print axioms cover_390791

def state_390790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_390790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390790 := by
  apply coveredState_split_literal (state := state_390790) 1
    state_390791 state_391992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390791
  · exact cover_391992
#print axioms cover_390790

def state_390789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_390789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390789 := by
  apply coveredState_split_literal (state := state_390789) 4
    state_390790 state_392029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390790
  · exact cover_392029
#print axioms cover_390789

def state_392053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_392053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392053 := by
  apply coveredState_split_literal (state := state_392053) 0
    state_392054 state_392099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392054
  · exact cover_392099
#print axioms cover_392053

def state_392052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_392052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392052 := by
  apply coveredState_split_literal (state := state_392052) 3
    state_392053 state_392146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392053
  · exact cover_392146
#print axioms cover_392052

def state_392051 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_392051 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392051 := by
  apply coveredState_split_literal (state := state_392051) 1
    state_392052 state_392149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392052
  · exact cover_392149
#print axioms cover_392051

def state_392050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_392050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392050 := by
  apply coveredState_split_literal (state := state_392050) 4
    state_392051 state_392208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392051
  · exact cover_392208
#print axioms cover_392050

def state_390788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_390788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390788 := by
  apply coveredState_split_literal (state := state_390788) 2
    state_390789 state_392050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390789
  · exact cover_392050
#print axioms cover_390788

def state_392215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_392215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392215 := by
  apply coveredState_split_literal (state := state_392215) 2
    state_392216 state_392263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392216
  · exact cover_392263
#print axioms cover_392215

def state_392214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_392214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392214 := by
  apply coveredState_split_literal (state := state_392214) 3
    state_392215 state_392310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_392215
  · exact cover_392310
#print axioms cover_392214
end Mub6.Numerical.CircleFullPrototype.Forest
