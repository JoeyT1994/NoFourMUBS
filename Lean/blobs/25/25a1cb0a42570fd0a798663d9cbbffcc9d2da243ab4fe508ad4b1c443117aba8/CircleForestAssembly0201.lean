import CircleFullInterface
import CircleForestAssembly0200
import CircleForestChunk0753
import CircleForestChunk0757
import CircleForestChunk0758
import CircleForestChunk0759
import CircleForestChunk0760
import CircleForestChunk0761
import CircleForestChunk0762
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1482644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 105)))
theorem cover_1482644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482644 := by
  apply coveredState_split_literal (state := state_1482644) 2
    state_1482645 state_1482696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482645
  · exact cover_1482696
#print axioms cover_1482644

def state_1482340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 52)))
theorem cover_1482340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482340 := by
  apply coveredState_split_literal (state := state_1482340) 4
    state_1482341 state_1482644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482341
  · exact cover_1482644
#print axioms cover_1482340

def state_1482266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1482266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482266 := by
  apply coveredState_split_literal (state := state_1482266) 3
    state_1482267 state_1482340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482267
  · exact cover_1482340
#print axioms cover_1482266

def state_1482881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 52)))
theorem cover_1482881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482881 := by
  apply coveredState_split_literal (state := state_1482881) 4
    state_1482882 state_1482927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482882
  · exact cover_1482927
#print axioms cover_1482881

def state_1482875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1482875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482875 := by
  apply coveredState_split_literal (state := state_1482875) 3
    state_1482876 state_1482881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482876
  · exact cover_1482881
#print axioms cover_1482875

def state_1482265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1482265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482265 := by
  apply coveredState_split_literal (state := state_1482265) 0
    state_1482266 state_1482875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482266
  · exact cover_1482875
#print axioms cover_1482265

def state_1481823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1481823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481823 := by
  apply coveredState_split_literal (state := state_1481823) 1
    state_1481824 state_1482265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481824
  · exact cover_1482265
#print axioms cover_1481823

def state_1481822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 52)))
theorem cover_1481822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481822 := by
  apply coveredState_split_literal (state := state_1481822) 2
    state_1481823 state_1482990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481823
  · exact cover_1482990
#print axioms cover_1481822

def state_1481821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 26)))
theorem cover_1481821 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481821 := by
  apply coveredState_split_literal (state := state_1481821) 4
    state_1481822 state_1483031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481822
  · exact cover_1483031
#print axioms cover_1481821

def state_1481791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1481791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481791 := by
  apply coveredState_split_literal (state := state_1481791) 3
    state_1481792 state_1481821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481792
  · exact cover_1481821
#print axioms cover_1481791

def state_1481790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1481790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481790 := by
  apply coveredState_split_literal (state := state_1481790) 0
    state_1481791 state_1483088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481791
  · exact cover_1483088
#print axioms cover_1481790

def state_1483184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1483184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483184 := by
  apply coveredState_split_literal (state := state_1483184) 3
    state_1483185 state_1483210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483185
  · exact cover_1483210
#print axioms cover_1483184

def state_1483267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1483267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483267 := by
  apply coveredState_split_literal (state := state_1483267) 3
    state_1483268 state_1483291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483268
  · exact cover_1483291
#print axioms cover_1483267

def state_1483183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1483183 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483183 := by
  apply coveredState_split_literal (state := state_1483183) 0
    state_1483184 state_1483267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483184
  · exact cover_1483267
#print axioms cover_1483183

def state_1483182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1483182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483182 := by
  apply coveredState_split_literal (state := state_1483182) 1
    state_1483183 state_1483344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483183
  · exact cover_1483344
#print axioms cover_1483182

def state_1483181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 52)))
theorem cover_1483181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483181 := by
  apply coveredState_split_literal (state := state_1483181) 2
    state_1483182 state_1483345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483182
  · exact cover_1483345
#print axioms cover_1483181

def state_1483394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 53)))
theorem cover_1483394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483394 := by
  apply coveredState_split_literal (state := state_1483394) 0
    state_1483395 state_1483454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483395
  · exact cover_1483454
#print axioms cover_1483394

def state_1483393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 53)))
theorem cover_1483393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483393 := by
  apply coveredState_split_literal (state := state_1483393) 1
    state_1483394 state_1483499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483394
  · exact cover_1483499
#print axioms cover_1483393

def state_1483569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
theorem cover_1483569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483569 := by
  apply coveredState_split_literal (state := state_1483569) 3
    state_1483570 state_1483581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483570
  · exact cover_1483581
#print axioms cover_1483569

def state_1483555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
theorem cover_1483555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483555 := by
  apply coveredState_split_literal (state := state_1483555) 0
    state_1483556 state_1483569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483556
  · exact cover_1483569
#print axioms cover_1483555

def state_1483676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 103 else 53)))
theorem cover_1483676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483676 := by
  apply coveredState_split_literal (state := state_1483676) 4
    state_1483677 state_1483706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483677
  · exact cover_1483706
#print axioms cover_1483676

def state_1483660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
theorem cover_1483660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483660 := by
  apply coveredState_split_literal (state := state_1483660) 3
    state_1483661 state_1483676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483661
  · exact cover_1483676
#print axioms cover_1483660

def state_1483634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
theorem cover_1483634 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483634 := by
  apply coveredState_split_literal (state := state_1483634) 0
    state_1483635 state_1483660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483635
  · exact cover_1483660
#print axioms cover_1483634

def state_1483554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
theorem cover_1483554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483554 := by
  apply coveredState_split_literal (state := state_1483554) 1
    state_1483555 state_1483634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483555
  · exact cover_1483634
#print axioms cover_1483554

def state_1483392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 53)))
theorem cover_1483392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483392 := by
  apply coveredState_split_literal (state := state_1483392) 2
    state_1483393 state_1483554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483393
  · exact cover_1483554
#print axioms cover_1483392

def state_1483180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 26)))
theorem cover_1483180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483180 := by
  apply coveredState_split_literal (state := state_1483180) 4
    state_1483181 state_1483392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483181
  · exact cover_1483392
#print axioms cover_1483180

def state_1483124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1483124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483124 := by
  apply coveredState_split_literal (state := state_1483124) 3
    state_1483125 state_1483180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483125
  · exact cover_1483180
#print axioms cover_1483124

def state_1483791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 53)))
theorem cover_1483791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483791 := by
  apply coveredState_split_literal (state := state_1483791) 1
    state_1483792 state_1483817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483792
  · exact cover_1483817
#print axioms cover_1483791

def state_1483781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 53)))
theorem cover_1483781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483781 := by
  apply coveredState_split_literal (state := state_1483781) 2
    state_1483782 state_1483791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483782
  · exact cover_1483791
#print axioms cover_1483781

def state_1483765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 26)))
theorem cover_1483765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483765 := by
  apply coveredState_split_literal (state := state_1483765) 4
    state_1483766 state_1483781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483766
  · exact cover_1483781
#print axioms cover_1483765

def state_1483759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1483759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483759 := by
  apply coveredState_split_literal (state := state_1483759) 3
    state_1483760 state_1483765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483760
  · exact cover_1483765
#print axioms cover_1483759

def state_1483123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1483123 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483123 := by
  apply coveredState_split_literal (state := state_1483123) 0
    state_1483124 state_1483759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1483124
  · exact cover_1483759
#print axioms cover_1483123
end Mub6.Numerical.CircleFullD0.Forest
