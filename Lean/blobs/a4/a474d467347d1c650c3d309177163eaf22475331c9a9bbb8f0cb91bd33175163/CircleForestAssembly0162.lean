import CircleFullInterface
import CircleForestAssembly0161
import CircleForestChunk0631
import CircleForestChunk0632
import CircleForestChunk0633
import CircleForestChunk0634
import CircleForestChunk0635
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_390272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_390272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390272 := by
  apply coveredState_split_literal (state := state_390272) 0
    state_390273 state_390450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390273
  · exact cover_390450
#print axioms cover_390272

def state_390271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_390271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390271 := by
  apply coveredState_split_literal (state := state_390271) 4
    state_390272 state_390509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390272
  · exact cover_390509
#print axioms cover_390271

def state_390121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_390121 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390121 := by
  apply coveredState_split_literal (state := state_390121) 3
    state_390122 state_390271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390122
  · exact cover_390271
#print axioms cover_390121

def state_390120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_390120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390120 := by
  apply coveredState_split_literal (state := state_390120) 2
    state_390121 state_390514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390121
  · exact cover_390514
#print axioms cover_390120

def state_390557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_390557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390557 := by
  apply coveredState_split_literal (state := state_390557) 2
    state_390558 state_390619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390558
  · exact cover_390619
#print axioms cover_390557

def state_390556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_390556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390556 := by
  apply coveredState_split_literal (state := state_390556) 0
    state_390557 state_390680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390557
  · exact cover_390680
#print axioms cover_390556

def state_390555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_390555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390555 := by
  apply coveredState_split_literal (state := state_390555) 1
    state_390556 state_390703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390556
  · exact cover_390703
#print axioms cover_390555

def state_390554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_390554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390554 := by
  apply coveredState_split_literal (state := state_390554) 4
    state_390555 state_390708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390555
  · exact cover_390708
#print axioms cover_390554

def state_390542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_390542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390542 := by
  apply coveredState_split_literal (state := state_390542) 3
    state_390543 state_390554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390543
  · exact cover_390554
#print axioms cover_390542

def state_390541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_390541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390541 := by
  apply coveredState_split_literal (state := state_390541) 2
    state_390542 state_390715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390542
  · exact cover_390715
#print axioms cover_390541

def state_390540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_390540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390540 := by
  apply coveredState_split_literal (state := state_390540) 0
    state_390541 state_390768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390541
  · exact cover_390768
#print axioms cover_390540

def state_390539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_390539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390539 := by
  apply coveredState_split_literal (state := state_390539) 4
    state_390540 state_390779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390540
  · exact cover_390779
#print axioms cover_390539

def state_390812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 48)))
theorem cover_390812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390812 := by
  apply coveredState_split_literal (state := state_390812) 1
    state_390813 state_390860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390813
  · exact cover_390860
#print axioms cover_390812

def state_390811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 24)))
theorem cover_390811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390811 := by
  apply coveredState_split_literal (state := state_390811) 4
    state_390812 state_390905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390812
  · exact cover_390905
#print axioms cover_390811

def state_390805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 24)))
theorem cover_390805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390805 := by
  apply coveredState_split_literal (state := state_390805) 2
    state_390806 state_390811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390806
  · exact cover_390811
#print axioms cover_390805

def state_390797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 24)))
theorem cover_390797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390797 := by
  apply coveredState_split_literal (state := state_390797) 0
    state_390798 state_390805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390798
  · exact cover_390805
#print axioms cover_390797

def state_390796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
theorem cover_390796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390796 := by
  apply coveredState_split_literal (state := state_390796) 3
    state_390797 state_390908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390797
  · exact cover_390908
#print axioms cover_390796

def state_390795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
theorem cover_390795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390795 := by
  apply coveredState_split_literal (state := state_390795) 1
    state_390796 state_390917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390796
  · exact cover_390917
#print axioms cover_390795

def state_390794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 12)))
theorem cover_390794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390794 := by
  apply coveredState_split_literal (state := state_390794) 4
    state_390795 state_390928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390795
  · exact cover_390928
#print axioms cover_390794

def state_390959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 48)))
theorem cover_390959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390959 := by
  apply coveredState_split_literal (state := state_390959) 3
    state_390960 state_391015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390960
  · exact cover_391015
#print axioms cover_390959

def state_391030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 57) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 48)))
theorem cover_391030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391030 := by
  apply coveredState_split_literal (state := state_391030) 3
    state_391031 state_391054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391031
  · exact cover_391054
#print axioms cover_391030

def state_390958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 48)))
theorem cover_390958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390958 := by
  apply coveredState_split_literal (state := state_390958) 1
    state_390959 state_391030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390959
  · exact cover_391030
#print axioms cover_390958

def state_390957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 48)))
theorem cover_390957 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390957 := by
  apply coveredState_split_literal (state := state_390957) 2
    state_390958 state_391115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390958
  · exact cover_391115
#print axioms cover_390957

def state_390956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
theorem cover_390956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390956 := by
  apply coveredState_split_literal (state := state_390956) 4
    state_390957 state_391136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390957
  · exact cover_391136
#print axioms cover_390956

def state_390936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
theorem cover_390936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390936 := by
  apply coveredState_split_literal (state := state_390936) 0
    state_390937 state_390956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390937
  · exact cover_390956
#print axioms cover_390936

def state_390935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_390935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390935 := by
  apply coveredState_split_literal (state := state_390935) 3
    state_390936 state_391145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390936
  · exact cover_391145
#print axioms cover_390935

def state_390934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
theorem cover_390934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390934 := by
  apply coveredState_split_literal (state := state_390934) 1
    state_390935 state_391166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390935
  · exact cover_391166
#print axioms cover_390934

def state_390933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
theorem cover_390933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390933 := by
  apply coveredState_split_literal (state := state_390933) 4
    state_390934 state_391203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390934
  · exact cover_391203
#print axioms cover_390933

def state_390793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_390793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_390793 := by
  apply coveredState_split_literal (state := state_390793) 2
    state_390794 state_390933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_390794
  · exact cover_390933
#print axioms cover_390793

def state_391243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 56) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 48)))
theorem cover_391243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391243 := by
  apply coveredState_split_literal (state := state_391243) 3
    state_391244 state_391299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391244
  · exact cover_391299
#print axioms cover_391243

def state_391322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 57) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 48)))
theorem cover_391322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391322 := by
  apply coveredState_split_literal (state := state_391322) 3
    state_391323 state_391338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391323
  · exact cover_391338
#print axioms cover_391322

def state_391242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 28 else 48)))
theorem cover_391242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391242 := by
  apply coveredState_split_literal (state := state_391242) 1
    state_391243 state_391322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_391243
  · exact cover_391322
#print axioms cover_391242
end Mub6.Numerical.CircleFullPrototype.Forest
