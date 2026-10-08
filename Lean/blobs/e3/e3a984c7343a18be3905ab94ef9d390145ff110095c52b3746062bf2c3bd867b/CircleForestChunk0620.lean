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
def state_1337670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 19 else 23)))
def hex_1337670 : String := "410544420705420805"
theorem cover_1337670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337670 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1337670)
  decide +kernel
#print axioms cover_1337670

def state_1337679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
def hex_1337679 : String := "444240080640434144050808054341440642064008060641440542070544060642084008430844414208050808"
theorem cover_1337679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337679 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1337679)
  decide +kernel
#print axioms cover_1337679

def state_1337725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
def hex_1337725 : String := "41444206404341440505054144064206404341070607060605420A404305410A4442054043054144060A060542050A054406420540430544060805"
theorem cover_1337725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337725 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 59) (hex := hex_1337725)
  decide +kernel
#print axioms cover_1337725

def state_1337786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 22)))
def hex_1337786 : String := "420743404107060607"
theorem cover_1337786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337786 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1337786)
  decide +kernel
#print axioms cover_1337786

def state_1337795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 23)))
def hex_1337795 : String := "420743404144070A44420743404144070A44064206430640080606400707420A434044410A08080A4044410742074308070A0A410744060A400707"
theorem cover_1337795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337795 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 59) (hex := hex_1337795)
  decide +kernel
#print axioms cover_1337795

def state_1337855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 22)))
def hex_1337855 : String := "06"
theorem cover_1337855 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337855 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1337855)
  decide +kernel
#print axioms cover_1337855

def state_1337857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 9 else 23)))
def hex_1337857 : String := "4306400806"
theorem cover_1337857 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337857 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1337857)
  decide +kernel
#print axioms cover_1337857

def state_1337862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 9 else 23)))
def hex_1337862 : String := "4340440641420843084008440608060640444142064340440641070606070641424308074340084441070641070840050742064308084406410706"
theorem cover_1337862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1337862)
  decide +kernel
#print axioms cover_1337862
end Mub6.Numerical.CircleFullD0.Forest
