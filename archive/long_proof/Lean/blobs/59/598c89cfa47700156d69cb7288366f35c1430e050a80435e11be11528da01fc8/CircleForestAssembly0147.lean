import CircleFullInterface
import CircleForestAssembly0144
import CircleForestAssembly0146
import CircleForestChunk0573
import CircleForestChunk0574
import CircleForestChunk0575
import CircleForestChunk0576
import CircleForestChunk0577
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_376740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_376740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376740 := by
  apply coveredState_split_literal (state := state_376740) 3
    state_376741 state_376772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376741
  · exact cover_376772
#print axioms cover_376740

def state_376700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_376700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376700 := by
  apply coveredState_split_literal (state := state_376700) 1
    state_376701 state_376740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376701
  · exact cover_376740
#print axioms cover_376700

def state_376694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_376694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376694 := by
  apply coveredState_split_literal (state := state_376694) 2
    state_376695 state_376700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376695
  · exact cover_376700
#print axioms cover_376694

def state_376693 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_376693 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376693 := by
  apply coveredState_split_literal (state := state_376693) 4
    state_376694 state_376857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376694
  · exact cover_376857
#print axioms cover_376693

def state_376685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_376685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376685 := by
  apply coveredState_split_literal (state := state_376685) 3
    state_376686 state_376693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376686
  · exact cover_376693
#print axioms cover_376685

def state_376653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_376653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376653 := by
  apply coveredState_split_literal (state := state_376653) 1
    state_376654 state_376685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376654
  · exact cover_376685
#print axioms cover_376653

def state_376652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_376652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376652 := by
  apply coveredState_split_literal (state := state_376652) 0
    state_376653 state_376858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376653
  · exact cover_376858
#print axioms cover_376652

def state_376651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_376651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376651 := by
  apply coveredState_split_literal (state := state_376651) 4
    state_376652 state_376865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376652
  · exact cover_376865
#print axioms cover_376651

def state_376637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_376637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376637 := by
  apply coveredState_split_literal (state := state_376637) 3
    state_376638 state_376651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376638
  · exact cover_376651
#print axioms cover_376637

def state_376980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 46) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_376980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376980 := by
  apply coveredState_split_literal (state := state_376980) 3
    state_376981 state_377020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376981
  · exact cover_377020
#print axioms cover_376980

def state_376979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 20 else (if j.val < 4 then 23 else 24)))
theorem cover_376979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376979 := by
  apply coveredState_split_literal (state := state_376979) 1
    state_376980 state_377049
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376980
  · exact cover_377049
#print axioms cover_376979

def state_376978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
theorem cover_376978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376978 := by
  apply coveredState_split_literal (state := state_376978) 2
    state_376979 state_377092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376979
  · exact cover_377092
#print axioms cover_376978

def state_376977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 24)))
theorem cover_376977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376977 := by
  apply coveredState_split_literal (state := state_376977) 0
    state_376978 state_377105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376978
  · exact cover_377105
#print axioms cover_376977

def state_376976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 12)))
theorem cover_376976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376976 := by
  apply coveredState_split_literal (state := state_376976) 4
    state_376977 state_377120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376977
  · exact cover_377120
#print axioms cover_376976

def state_376948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_376948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376948 := by
  apply coveredState_split_literal (state := state_376948) 3
    state_376949 state_376976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376949
  · exact cover_376976
#print axioms cover_376948

def state_376920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_376920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376920 := by
  apply coveredState_split_literal (state := state_376920) 1
    state_376921 state_376948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376921
  · exact cover_376948
#print axioms cover_376920

def state_376919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
theorem cover_376919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376919 := by
  apply coveredState_split_literal (state := state_376919) 4
    state_376920 state_377149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376920
  · exact cover_377149
#print axioms cover_376919

def state_376907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_376907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376907 := by
  apply coveredState_split_literal (state := state_376907) 3
    state_376908 state_376919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376908
  · exact cover_376919
#print axioms cover_376907

def state_376906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_376906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376906 := by
  apply coveredState_split_literal (state := state_376906) 2
    state_376907 state_377156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376907
  · exact cover_377156
#print axioms cover_376906

def state_376892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_376892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376892 := by
  apply coveredState_split_literal (state := state_376892) 1
    state_376893 state_376906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376893
  · exact cover_376906
#print axioms cover_376892

def state_376891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_376891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376891 := by
  apply coveredState_split_literal (state := state_376891) 0
    state_376892 state_377161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376892
  · exact cover_377161
#print axioms cover_376891

def state_376890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_376890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376890 := by
  apply coveredState_split_literal (state := state_376890) 4
    state_376891 state_377170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376891
  · exact cover_377170
#print axioms cover_376890

def state_376878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_376878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376878 := by
  apply coveredState_split_literal (state := state_376878) 3
    state_376879 state_376890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376879
  · exact cover_376890
#print axioms cover_376878

def state_376636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_376636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376636 := by
  apply coveredState_split_literal (state := state_376636) 2
    state_376637 state_376878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376637
  · exact cover_376878
#print axioms cover_376636

def state_376566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_376566 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376566 := by
  apply coveredState_split_literal (state := state_376566) 1
    state_376567 state_376636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376567
  · exact cover_376636
#print axioms cover_376566

def state_374714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_374714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_374714 := by
  apply coveredState_split_literal (state := state_374714) 0
    state_374715 state_376566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_374715
  · exact cover_376566
#print axioms cover_374714

def state_371976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_371976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371976 := by
  apply coveredState_split_literal (state := state_371976) 4
    state_371977 state_374714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371977
  · exact cover_374714
#print axioms cover_371976

def state_377180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_377180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377180 := by
  apply coveredState_split_literal (state := state_377180) 2
    state_377181 state_377236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377181
  · exact cover_377236
#print axioms cover_377180

def state_377287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_377287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377287 := by
  apply coveredState_split_literal (state := state_377287) 2
    state_377288 state_377351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377288
  · exact cover_377351
#print axioms cover_377287

def state_377179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_377179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377179 := by
  apply coveredState_split_literal (state := state_377179) 1
    state_377180 state_377287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377180
  · exact cover_377287
#print axioms cover_377179

def state_377438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_377438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377438 := by
  apply coveredState_split_literal (state := state_377438) 4
    state_377439 state_377454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377439
  · exact cover_377454
#print axioms cover_377438

def state_377437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_377437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_377437 := by
  apply coveredState_split_literal (state := state_377437) 3
    state_377438 state_377513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_377438
  · exact cover_377513
#print axioms cover_377437
end Mub6.Numerical.CircleFullPrototype.Forest
