import CircleFullInterface
import CircleForestAssembly0222
import CircleForestAssembly0223
import CircleForestChunk0842
import CircleForestChunk0846
import CircleForestChunk0847
import CircleForestChunk0848
import CircleForestChunk0849
import CircleForestChunk0850
import CircleForestChunk0851
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1504077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 59)))
theorem cover_1504077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504077 := by
  apply coveredState_split_literal (state := state_1504077) 4
    state_1504078 state_1504089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504078
  · exact cover_1504089
#print axioms cover_1504077

def state_1503783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1503783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503783 := by
  apply coveredState_split_literal (state := state_1503783) 3
    state_1503784 state_1504077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503784
  · exact cover_1504077
#print axioms cover_1503783

def state_1503782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1503782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503782 := by
  apply coveredState_split_literal (state := state_1503782) 1
    state_1503783 state_1504212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503783
  · exact cover_1504212
#print axioms cover_1503782

def state_1503781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 59)))
theorem cover_1503781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503781 := by
  apply coveredState_split_literal (state := state_1503781) 0
    state_1503782 state_1504239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503782
  · exact cover_1504239
#print axioms cover_1503781

def state_1503731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 59)))
theorem cover_1503731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503731 := by
  apply coveredState_split_literal (state := state_1503731) 2
    state_1503732 state_1503781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503732
  · exact cover_1503781
#print axioms cover_1503731

def state_1503717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 29)))
theorem cover_1503717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503717 := by
  apply coveredState_split_literal (state := state_1503717) 4
    state_1503718 state_1503731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503718
  · exact cover_1503731
#print axioms cover_1503717

def state_1503716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1503716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1503716 := by
  apply coveredState_split_literal (state := state_1503716) 3
    state_1503717 state_1504284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1503717
  · exact cover_1504284
#print axioms cover_1503716

def state_1502934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1502934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502934 := by
  apply coveredState_split_literal (state := state_1502934) 1
    state_1502935 state_1503716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502935
  · exact cover_1503716
#print axioms cover_1502934

def state_1502933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1502933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502933 := by
  apply coveredState_split_literal (state := state_1502933) 0
    state_1502934 state_1504317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502934
  · exact cover_1504317
#print axioms cover_1502933

def state_1502927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1502927 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502927 := by
  apply coveredState_split_literal (state := state_1502927) 4
    state_1502928 state_1502933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502928
  · exact cover_1502933
#print axioms cover_1502927

def state_1502926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1502926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502926 := by
  apply coveredState_split_literal (state := state_1502926) 3
    state_1502927 state_1504356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502927
  · exact cover_1504356
#print axioms cover_1502926

def state_1504391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 29)))
theorem cover_1504391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504391 := by
  apply coveredState_split_literal (state := state_1504391) 3
    state_1504392 state_1504423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504392
  · exact cover_1504423
#print axioms cover_1504391

def state_1504390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 42) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
theorem cover_1504390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504390 := by
  apply coveredState_split_literal (state := state_1504390) 2
    state_1504391 state_1504482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504391
  · exact cover_1504482
#print axioms cover_1504390

def state_1504530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 29)))
theorem cover_1504530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504530 := by
  apply coveredState_split_literal (state := state_1504530) 4
    state_1504531 state_1504536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504531
  · exact cover_1504536
#print axioms cover_1504530

def state_1504488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 29)))
theorem cover_1504488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504488 := by
  apply coveredState_split_literal (state := state_1504488) 3
    state_1504489 state_1504530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504489
  · exact cover_1504530
#print axioms cover_1504488

def state_1504487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 43) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
theorem cover_1504487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504487 := by
  apply coveredState_split_literal (state := state_1504487) 2
    state_1504488 state_1504597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504488
  · exact cover_1504597
#print axioms cover_1504487

def state_1504389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
theorem cover_1504389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504389 := by
  apply coveredState_split_literal (state := state_1504389) 1
    state_1504390 state_1504487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504390
  · exact cover_1504487
#print axioms cover_1504389

def state_1504388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 29)))
theorem cover_1504388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504388 := by
  apply coveredState_split_literal (state := state_1504388) 0
    state_1504389 state_1504604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504389
  · exact cover_1504604
#print axioms cover_1504388

def state_1504374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 14)))
theorem cover_1504374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504374 := by
  apply coveredState_split_literal (state := state_1504374) 4
    state_1504375 state_1504388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504375
  · exact cover_1504388
#print axioms cover_1504374

def state_1504659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 29)))
theorem cover_1504659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504659 := by
  apply coveredState_split_literal (state := state_1504659) 0
    state_1504660 state_1504721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504660
  · exact cover_1504721
#print axioms cover_1504659

def state_1504647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 14)))
theorem cover_1504647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504647 := by
  apply coveredState_split_literal (state := state_1504647) 4
    state_1504648 state_1504659
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504648
  · exact cover_1504659
#print axioms cover_1504647

def state_1504373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 14)))
theorem cover_1504373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504373 := by
  apply coveredState_split_literal (state := state_1504373) 3
    state_1504374 state_1504647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504374
  · exact cover_1504647
#print axioms cover_1504373

def state_1502925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1502925 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502925 := by
  apply coveredState_split_literal (state := state_1502925) 2
    state_1502926 state_1504373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502926
  · exact cover_1504373
#print axioms cover_1502925

def state_1502247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1502247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502247 := by
  apply coveredState_split_literal (state := state_1502247) 1
    state_1502248 state_1502925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502248
  · exact cover_1502925
#print axioms cover_1502247

def state_1499659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1499659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499659 := by
  apply coveredState_split_literal (state := state_1499659) 0
    state_1499660 state_1502247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499660
  · exact cover_1502247
#print axioms cover_1499659

def state_1504871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 86) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1504871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504871 := by
  apply coveredState_split_literal (state := state_1504871) 3
    state_1504872 state_1504917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504872
  · exact cover_1504917
#print axioms cover_1504871

def state_1505000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 60)))
theorem cover_1505000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505000 := by
  apply coveredState_split_literal (state := state_1505000) 2
    state_1505001 state_1505012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505001
  · exact cover_1505012
#print axioms cover_1505000

def state_1504952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 87) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1504952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504952 := by
  apply coveredState_split_literal (state := state_1504952) 3
    state_1504953 state_1505000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504953
  · exact cover_1505000
#print axioms cover_1504952

def state_1504870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1504870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504870 := by
  apply coveredState_split_literal (state := state_1504870) 1
    state_1504871 state_1504952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504871
  · exact cover_1504952
#print axioms cover_1504870

def state_1504840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
theorem cover_1504840 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504840 := by
  apply coveredState_split_literal (state := state_1504840) 0
    state_1504841 state_1504870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504841
  · exact cover_1504870
#print axioms cover_1504840

def state_1504839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 30)))
theorem cover_1504839 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504839 := by
  apply coveredState_split_literal (state := state_1504839) 4
    state_1504840 state_1505069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504840
  · exact cover_1505069
#print axioms cover_1504839

def state_1504807 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 30)))
theorem cover_1504807 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504807 := by
  apply coveredState_split_literal (state := state_1504807) 2
    state_1504808 state_1504839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504808
  · exact cover_1504839
#print axioms cover_1504807
end Mub6.Numerical.CircleFullD0.Forest
