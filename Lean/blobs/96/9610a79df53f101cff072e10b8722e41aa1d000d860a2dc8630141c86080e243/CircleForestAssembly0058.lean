import CircleFullInterface
import CircleForestAssembly0053
import CircleForestAssembly0054
import CircleForestAssembly0057
import CircleForestChunk0229
import CircleForestChunk0230
import CircleForestChunk0231
import CircleForestChunk0232
import CircleForestChunk0233
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_72952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_72952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72952 := by
  apply coveredState_split_literal (state := state_72952) 3
    state_72953 state_76496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72953
  · exact cover_76496
#print axioms cover_72952

def state_72692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_72692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72692 := by
  apply coveredState_split_literal (state := state_72692) 2
    state_72693 state_72952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72693
  · exact cover_72952
#print axioms cover_72692

def state_76600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_76600 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76600 := by
  apply coveredState_split_literal (state := state_76600) 2
    state_76601 state_76620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76601
  · exact cover_76620
#print axioms cover_76600

def state_76582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_76582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76582 := by
  apply coveredState_split_literal (state := state_76582) 0
    state_76583 state_76600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76583
  · exact cover_76600
#print axioms cover_76582

def state_76554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_76554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76554 := by
  apply coveredState_split_literal (state := state_76554) 4
    state_76555 state_76582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76555
  · exact cover_76582
#print axioms cover_76554

def state_76553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_76553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76553 := by
  apply coveredState_split_literal (state := state_76553) 3
    state_76554 state_76667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76554
  · exact cover_76667
#print axioms cover_76553

def state_76527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_76527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76527 := by
  apply coveredState_split_literal (state := state_76527) 2
    state_76528 state_76553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76528
  · exact cover_76553
#print axioms cover_76527

def state_72691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_72691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72691 := by
  apply coveredState_split_literal (state := state_72691) 1
    state_72692 state_76527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72692
  · exact cover_76527
#print axioms cover_72691

def state_76762 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_76762 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76762 := by
  apply coveredState_split_literal (state := state_76762) 2
    state_76763 state_76804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76763
  · exact cover_76804
#print axioms cover_76762

def state_76744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_76744 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76744 := by
  apply coveredState_split_literal (state := state_76744) 1
    state_76745 state_76762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76745
  · exact cover_76762
#print axioms cover_76744

def state_76742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_76742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76742 := by
  apply coveredState_split_literal (state := state_76742) 4
    state_76743 state_76744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76743
  · exact cover_76744
#print axioms cover_76742

def state_76741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_76741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76741 := by
  apply coveredState_split_literal (state := state_76741) 3
    state_76742 state_76829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76742
  · exact cover_76829
#print axioms cover_76741

def state_76683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_76683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76683 := by
  apply coveredState_split_literal (state := state_76683) 2
    state_76684 state_76741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76684
  · exact cover_76741
#print axioms cover_76683

def state_76878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_76878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76878 := by
  apply coveredState_split_literal (state := state_76878) 3
    state_76879 state_76922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76879
  · exact cover_76922
#print axioms cover_76878

def state_76846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_76846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76846 := by
  apply coveredState_split_literal (state := state_76846) 2
    state_76847 state_76878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76847
  · exact cover_76878
#print axioms cover_76846

def state_76682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_76682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76682 := by
  apply coveredState_split_literal (state := state_76682) 1
    state_76683 state_76846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76683
  · exact cover_76846
#print axioms cover_76682

def state_72690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_72690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72690 := by
  apply coveredState_split_literal (state := state_72690) 0
    state_72691 state_76682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72691
  · exact cover_76682
#print axioms cover_72690

def state_76980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_76980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76980 := by
  apply coveredState_split_literal (state := state_76980) 4
    state_76981 state_77038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76981
  · exact cover_77038
#print axioms cover_76980

def state_76979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_76979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76979 := by
  apply coveredState_split_literal (state := state_76979) 3
    state_76980 state_77051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76980
  · exact cover_77051
#print axioms cover_76979

def state_76965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_76965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76965 := by
  apply coveredState_split_literal (state := state_76965) 2
    state_76966 state_76979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76966
  · exact cover_76979
#print axioms cover_76965

def state_76964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_76964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76964 := by
  apply coveredState_split_literal (state := state_76964) 1
    state_76965 state_77062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76965
  · exact cover_77062
#print axioms cover_76964

def state_77107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_77107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77107 := by
  apply coveredState_split_literal (state := state_77107) 4
    state_77108 state_77167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77108
  · exact cover_77167
#print axioms cover_77107

def state_77106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_77106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77106 := by
  apply coveredState_split_literal (state := state_77106) 3
    state_77107 state_77176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77107
  · exact cover_77176
#print axioms cover_77106

def state_77088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_77088 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77088 := by
  apply coveredState_split_literal (state := state_77088) 2
    state_77089 state_77106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77089
  · exact cover_77106
#print axioms cover_77088

def state_77087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_77087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77087 := by
  apply coveredState_split_literal (state := state_77087) 1
    state_77088 state_77195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77088
  · exact cover_77195
#print axioms cover_77087

def state_76963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_76963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_76963 := by
  apply coveredState_split_literal (state := state_76963) 0
    state_76964 state_77087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_76964
  · exact cover_77087
#print axioms cover_76963

def state_72689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_72689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72689 := by
  apply coveredState_split_literal (state := state_72689) 4
    state_72690 state_76963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72690
  · exact cover_76963
#print axioms cover_72689

def state_68777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_68777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68777 := by
  apply coveredState_split_literal (state := state_68777) 3
    state_68778 state_72689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68778
  · exact cover_72689
#print axioms cover_68777

def state_77237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_77237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77237 := by
  apply coveredState_split_literal (state := state_77237) 1
    state_77238 state_77293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77238
  · exact cover_77293
#print axioms cover_77237

def state_77321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_77321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77321 := by
  apply coveredState_split_literal (state := state_77321) 4
    state_77322 state_77347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77322
  · exact cover_77347
#print axioms cover_77321

def state_77320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_77320 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77320 := by
  apply coveredState_split_literal (state := state_77320) 3
    state_77321 state_77390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77321
  · exact cover_77390
#print axioms cover_77320

def state_77319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_77319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_77319 := by
  apply coveredState_split_literal (state := state_77319) 2
    state_77320 state_77415
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_77320
  · exact cover_77415
#print axioms cover_77319
end Mub6.Numerical.CircleFullPrototype.Forest
