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
def state_944943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 100 else (if j.val < 4 then 33 else 53)))
def hex_944943 : String := "41444342400944050940444106050644054106054209400944410707094342090609444305420A400A4144054305070543424006094006054209400909"
theorem cover_944943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_944943)
  decide +kernel
#print axioms cover_944943

def state_945007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 101 else (if j.val < 4 then 66 else 106)))
def hex_945007 : String := "40064244050605"
theorem cover_945007 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945007 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_945007)
  decide +kernel
#print axioms cover_945007

def state_945014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 101 else (if j.val < 4 then 67 else 106)))
def hex_945014 : String := "404244414306090A064441060606424441434042070505074305400805414306094305400907444143054008420707054106430540064244050605"
theorem cover_945014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945014 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_945014)
  decide +kernel
#print axioms cover_945014

def state_945073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 84) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 107)))
def hex_945073 : String := "43064006420906"
theorem cover_945073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945073 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_945073)
  decide +kernel
#print axioms cover_945073

def state_945080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 85) else (if j.val < 3 then 101 else (if j.val < 4 then 33 else 53)))
def hex_945080 : String := "44430540420A414405060542050543064006424144430509064405064106440505"
theorem cover_945080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945080 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_945080)
  decide +kernel
#print axioms cover_945080

def state_945114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 100 else (if j.val < 4 then 33 else 53)))
def hex_945114 : String := "41444340420705050743404209410A44050642070A4009074405430540420741090507"
theorem cover_945114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945114 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_945114)
  decide +kernel
#print axioms cover_945114
end Mub6.Numerical.CircleFullD0.Forest
