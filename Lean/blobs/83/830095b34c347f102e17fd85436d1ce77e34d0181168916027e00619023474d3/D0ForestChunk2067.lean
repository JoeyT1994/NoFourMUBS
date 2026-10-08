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
def state_2576503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
def hex_2576503 : String := "4344404142090642444309404106440609060944060809094440410642434406404106050706064106424344060706064041080509"
theorem cover_2576503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576503 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_2576503)
  decide +kernel
#print axioms cover_2576503

def state_2576556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_2576556 : String := "4142430944060743440608444243094407074309444041420743090742060909404107060942090842434409074407074309444142060942060609"
theorem cover_2576556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576556 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_2576556)
  decide +kernel
#print axioms cover_2576556

def state_2576619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_2576619 : String := "4344404341084206440806080840060708"
theorem cover_2576619 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576619 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 17) (hex := hex_2576619)
  decide +kernel
#print axioms cover_2576619

def state_2576640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 4)))
def hex_2576640 : String := "43414440430908080A444043420609420809434208410A44434006054009084306084208410844080840430609434206410806084108444042084309050808"
theorem cover_2576640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576640 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_2576640)
  decide +kernel
#print axioms cover_2576640

def state_2576705 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
def hex_2576705 : String := "444042430909430A05420A430A0640420943090542430A0843440A0A440909"
theorem cover_2576705 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576705 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 31) (hex := hex_2576705)
  decide +kernel
#print axioms cover_2576705
end Mub6.Numerical.CircleFullD0.Forest
