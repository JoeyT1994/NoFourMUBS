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
def state_1459601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
def hex_1459601 : String := "400643410A44060A4144060A440642400643060606"
theorem cover_1459601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459601 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_1459601)
  decide +kernel
#print axioms cover_1459601

def state_1459622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 28)))
def hex_1459622 : String := "41444240064305050642400743410707074043060743410944060A07444240064306050642400743410707074006434144064207064406420706410707"
theorem cover_1459622 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459622 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1459622)
  decide +kernel
#print axioms cover_1459622

def state_1459683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 28)))
def hex_1459683 : String := "4006434144060A440642060641440642400643064106060606"
theorem cover_1459683 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459683 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1459683)
  decide +kernel
#print axioms cover_1459683

def state_1459710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 29)))
def hex_1459710 : String := "430A410707"
theorem cover_1459710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459710 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1459710)
  decide +kernel
#print axioms cover_1459710

def state_1459716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 29)))
def hex_1459716 : String := "410A444240430A410707430A410A4442400743860740430A07430A41070742080A0A0A"
theorem cover_1459716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459716 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_1459716)
  decide +kernel
#print axioms cover_1459716

def state_1459751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 29)))
def hex_1459751 : String := "41444240074308070A08444240074341070707400743410A4442074006430A0742070A0742074007430A07"
theorem cover_1459751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459751 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1459751)
  decide +kernel
#print axioms cover_1459751

def state_1459794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 22 else 29)))
def hex_1459794 : String := "400A430A410A444240430606430A410A4406070A0A"
theorem cover_1459794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459794 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_1459794)
  decide +kernel
#print axioms cover_1459794

def state_1459816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 14)))
def hex_1459816 : String := "44424007434407070740434406070743444142070606410942070A44070742074007430A07"
theorem cover_1459816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459816 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1459816)
  decide +kernel
#print axioms cover_1459816
end Mub6.Numerical.CircleFullD0.Forest
