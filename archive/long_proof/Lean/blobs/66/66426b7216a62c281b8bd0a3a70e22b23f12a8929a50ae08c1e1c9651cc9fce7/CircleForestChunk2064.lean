import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2575794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 11 else 10)))
def hex_2575794 : String := "43404441420543050506064405054044414243054007054340414405060605400741070742064306400641070641070644410542050541074205430507"
theorem cover_2575794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2575794)
  decide +kernel
#print axioms cover_2575794

def state_2575855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 11)))
def hex_2575855 : String := "4142074344400641070606074206430607"
theorem cover_2575855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2575855)
  decide +kernel
#print axioms cover_2575855

def state_2575873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_2575873 : String := "4344064041064406424340414442080607440842070A41060840410644060706434041060A060606440606"
theorem cover_2575873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 43) (hex := hex_2575873)
  decide +kernel
#print axioms cover_2575873

def state_2575917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_2575917 : String := "440606"
theorem cover_2575917 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575917 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2575917)
  decide +kernel
#print axioms cover_2575917

def state_2575922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
def hex_2575922 : String := "4142064306444042060A424306414443064006420641440706060606430A41440742430640060A0A0A40064206430641444206430640060A060606"
theorem cover_2575922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575922 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 59) (hex := hex_2575922)
  decide +kernel
#print axioms cover_2575922

def state_2575983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
def hex_2575983 : String := "430544430540410506054305400605"
theorem cover_2575983 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575983 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_2575983)
  decide +kernel
#print axioms cover_2575983

def state_2575999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 4)))
def hex_2575999 : String := "444205074205400605"
theorem cover_2575999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2575999 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2575999)
  decide +kernel
#print axioms cover_2575999

def state_2576010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 8)))
def hex_2576010 : String := "4340410505054041444305420505430542050544430642060A06410505"
theorem cover_2576010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_2576010)
  decide +kernel
#print axioms cover_2576010
end Mub6.Numerical.CircleFullD0.Forest
