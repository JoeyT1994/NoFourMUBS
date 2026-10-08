import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1476117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 89) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 117)))
def hex_1476117 : String := "42404143448605444206400506054305090640414305050541434442060505444206400506064305440A05"
theorem cover_1476117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476117 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 43) (hex := hex_1476117)
  decide +kernel
#print axioms cover_1476117

def state_1476160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 58)))
def hex_1476160 : String := "41434442404106060640410707070644424043060606404341094408064109440A06430909064344424041060606070644420A4041434408060A0A0A06"
theorem cover_1476160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476160 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1476160)
  decide +kernel
#print axioms cover_1476160

def state_1476224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 33 else (if j.val < 4 then 88 else 58)))
def hex_1476224 : String := "444240410A4305444240050805054143074407074307440707400A07424005410A0505"
theorem cover_1476224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476224 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 35) (hex := hex_1476224)
  decide +kernel
#print axioms cover_1476224

def state_1476263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 178 else 116)))
def hex_1476263 : String := "41444240430A41060643410A08414442400608060A44084240050805400643084106064240050A0544424043054105054308414408050840050805"
theorem cover_1476263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476263 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 59) (hex := hex_1476263)
  decide +kernel
#print axioms cover_1476263
end Mub6.Numerical.CircleFullD0.Forest
