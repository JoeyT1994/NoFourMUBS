import CircleFullInterface
import CircleForestChunk0247
import CircleForestChunk0248
import CircleForestChunk0249
import CircleForestChunk0250
import CircleForestChunk0251
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_134705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_134705 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134705 := by
  apply coveredState_split_literal (state := state_134705) 0
    state_134706 state_134717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134706
  · exact cover_134717
#print axioms cover_134705

def state_134704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 13)))
theorem cover_134704 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134704 := by
  apply coveredState_split_literal (state := state_134704) 4
    state_134705 state_134776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134705
  · exact cover_134776
#print axioms cover_134704

def state_134703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
theorem cover_134703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134703 := by
  apply coveredState_split_literal (state := state_134703) 3
    state_134704 state_134783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134704
  · exact cover_134783
#print axioms cover_134703

def state_134702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134702 := by
  apply coveredState_split_literal (state := state_134702) 2
    state_134703 state_134802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134703
  · exact cover_134802
#print axioms cover_134702

def state_134701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134701 := by
  apply coveredState_split_literal (state := state_134701) 1
    state_134702 state_134819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134702
  · exact cover_134819
#print axioms cover_134701

def state_134852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_134852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134852 := by
  apply coveredState_split_literal (state := state_134852) 2
    state_134853 state_134906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134853
  · exact cover_134906
#print axioms cover_134852

def state_134987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 26)))
theorem cover_134987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134987 := by
  apply coveredState_split_literal (state := state_134987) 4
    state_134988 state_134997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134988
  · exact cover_134997
#print axioms cover_134987

def state_134971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 26 else 26)))
theorem cover_134971 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134971 := by
  apply coveredState_split_literal (state := state_134971) 3
    state_134972 state_134987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134972
  · exact cover_134987
#print axioms cover_134971

def state_134937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_134937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134937 := by
  apply coveredState_split_literal (state := state_134937) 2
    state_134938 state_134971
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134938
  · exact cover_134971
#print axioms cover_134937

def state_134851 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_134851 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134851 := by
  apply coveredState_split_literal (state := state_134851) 1
    state_134852 state_134937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134852
  · exact cover_134937
#print axioms cover_134851

def state_135061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_135061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135061 := by
  apply coveredState_split_literal (state := state_135061) 2
    state_135062 state_135093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135062
  · exact cover_135093
#print axioms cover_135061

def state_135181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 53)))
theorem cover_135181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135181 := by
  apply coveredState_split_literal (state := state_135181) 1
    state_135182 state_135225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135182
  · exact cover_135225
#print axioms cover_135181

def state_135180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 53)))
theorem cover_135180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135180 := by
  apply coveredState_split_literal (state := state_135180) 0
    state_135181 state_135282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135181
  · exact cover_135282
#print axioms cover_135180

def state_135174 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 26)))
theorem cover_135174 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135174 := by
  apply coveredState_split_literal (state := state_135174) 4
    state_135175 state_135180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135175
  · exact cover_135180
#print axioms cover_135174

def state_135166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 26 else 26)))
theorem cover_135166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135166 := by
  apply coveredState_split_literal (state := state_135166) 3
    state_135167 state_135174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135167
  · exact cover_135174
#print axioms cover_135166

def state_135130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_135130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135130 := by
  apply coveredState_split_literal (state := state_135130) 2
    state_135131 state_135166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135131
  · exact cover_135166
#print axioms cover_135130

def state_135060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_135060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135060 := by
  apply coveredState_split_literal (state := state_135060) 1
    state_135061 state_135130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135061
  · exact cover_135130
#print axioms cover_135060

def state_134850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 26)))
theorem cover_134850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134850 := by
  apply coveredState_split_literal (state := state_134850) 0
    state_134851 state_135060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134851
  · exact cover_135060
#print axioms cover_134850

def state_135404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 54)))
theorem cover_135404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135404 := by
  apply coveredState_split_literal (state := state_135404) 0
    state_135405 state_135430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135405
  · exact cover_135430
#print axioms cover_135404

def state_135403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 27)))
theorem cover_135403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135403 := by
  apply coveredState_split_literal (state := state_135403) 4
    state_135404 state_135489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135404
  · exact cover_135489
#print axioms cover_135403

def state_135401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 26 else 27)))
theorem cover_135401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135401 := by
  apply coveredState_split_literal (state := state_135401) 3
    state_135402 state_135403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135402
  · exact cover_135403
#print axioms cover_135401

def state_135373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 27)))
theorem cover_135373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135373 := by
  apply coveredState_split_literal (state := state_135373) 2
    state_135374 state_135401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135374
  · exact cover_135401
#print axioms cover_135373

def state_135359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 27)))
theorem cover_135359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135359 := by
  apply coveredState_split_literal (state := state_135359) 1
    state_135360 state_135373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135360
  · exact cover_135373
#print axioms cover_135359

def state_135329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 27)))
theorem cover_135329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135329 := by
  apply coveredState_split_literal (state := state_135329) 0
    state_135330 state_135359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135330
  · exact cover_135359
#print axioms cover_135329

def state_134849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 13)))
theorem cover_134849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134849 := by
  apply coveredState_split_literal (state := state_134849) 4
    state_134850 state_135329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134850
  · exact cover_135329
#print axioms cover_134849

def state_135568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 54 else 53)))
theorem cover_135568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135568 := by
  apply coveredState_split_literal (state := state_135568) 0
    state_135569 state_135598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135569
  · exact cover_135598
#print axioms cover_135568

def state_135567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 53)))
theorem cover_135567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135567 := by
  apply coveredState_split_literal (state := state_135567) 3
    state_135568 state_135657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135568
  · exact cover_135657
#print axioms cover_135567

def state_135565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 27 else 26)))
theorem cover_135565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135565 := by
  apply coveredState_split_literal (state := state_135565) 4
    state_135566 state_135567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135566
  · exact cover_135567
#print axioms cover_135565

def state_135563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 26)))
theorem cover_135563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135563 := by
  apply coveredState_split_literal (state := state_135563) 2
    state_135564 state_135565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135564
  · exact cover_135565
#print axioms cover_135563

def state_135525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 26)))
theorem cover_135525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135525 := by
  apply coveredState_split_literal (state := state_135525) 1
    state_135526 state_135563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135526
  · exact cover_135563
#print axioms cover_135525

def state_135495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 26)))
theorem cover_135495 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135495 := by
  apply coveredState_split_literal (state := state_135495) 0
    state_135496 state_135525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135496
  · exact cover_135525
#print axioms cover_135495

def state_135665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 27 else 27)))
theorem cover_135665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135665 := by
  apply coveredState_split_literal (state := state_135665) 1
    state_135666 state_135715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_135666
  · exact cover_135715
#print axioms cover_135665
end Mub6.Numerical.CircleFullPrototype.Forest
