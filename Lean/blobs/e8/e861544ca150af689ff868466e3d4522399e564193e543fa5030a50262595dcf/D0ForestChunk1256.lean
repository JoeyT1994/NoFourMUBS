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
def state_1601902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 105 else (if j.val < 4 then 59 else 99)))
def hex_1601902 : String := "43410A44400A0640429F0A06414440050940090A4440424105430644059F0542060A40429F0A429F0A"
theorem cover_1601902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601902 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1601902)
  decide +kernel
#print axioms cover_1601902

def state_1601943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 49)))
def hex_1601943 : String := "4341080A4105440540050A"
theorem cover_1601943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601943 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1601943)
  decide +kernel
#print axioms cover_1601943

def state_1601954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
def hex_1601954 : String := "430909"
theorem cover_1601954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601954 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1601954)
  decide +kernel
#print axioms cover_1601954

def state_1601960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 48)))
def hex_1601960 : String := "4041420609420643064409410909410606"
theorem cover_1601960 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601960 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1601960)
  decide +kernel
#print axioms cover_1601960

def state_1601977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 49)))
def hex_1601977 : String := "40414243064442064009064240410606064041090706430944094009094243064406410606430644410940080641400742060740074206074142060A06"
theorem cover_1601977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_1601977)
  decide +kernel
#print axioms cover_1601977

def state_1602040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 48)))
def hex_1602040 : String := "4142434405420840054105050805420843440541050808"
theorem cover_1602040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602040 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1602040)
  decide +kernel
#print axioms cover_1602040

def state_1602063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 48)))
def hex_1602063 : String := "41424306444005064042084105050643440540050A440540050542430608434440410506064041420605060644400541050640410508414206054206430605"
theorem cover_1602063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602063 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1602063)
  decide +kernel
#print axioms cover_1602063
end Mub6.Numerical.CircleFullD0.Forest
