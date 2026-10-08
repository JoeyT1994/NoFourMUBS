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
def state_1495354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 40 else (if j.val < 4 then 102 else 59)))
def hex_1495354 : String := "42444043094109420909090944400A0A0A"
theorem cover_1495354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495354 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1495354)
  decide +kernel
#print axioms cover_1495354

def state_1495374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 85) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 118)))
def hex_1495374 : String := "434142094406094244400643060707440640064306410906414207444006430909400A094207440640064341070607"
theorem cover_1495374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495374 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 47) (hex := hex_1495374)
  decide +kernel
#print axioms cover_1495374

def state_1495421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 85) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 118)))
def hex_1495421 : String := "4341094209094109420944404309050509"
theorem cover_1495421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495421 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1495421)
  decide +kernel
#print axioms cover_1495421

def state_1495438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 80 else (if j.val < 4 then 102 else 119)))
def hex_1495438 : String := "4043410942070A41094207444007070709"
theorem cover_1495438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495438 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1495438)
  decide +kernel
#print axioms cover_1495438

def state_1495455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 81 else (if j.val < 4 then 102 else 59)))
def hex_1495455 : String := "44404306410A064341444209060944064240060806414442090A42090A44424006430609064240434109064109060940064306410806400A430A410942090A"
theorem cover_1495455 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495455 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1495455)
  decide +kernel
#print axioms cover_1495455

def state_1495519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 40 else (if j.val < 4 then 103 else 59)))
def hex_1495519 : String := "4244404341080808094008064440430A410A4442080A0A4341094442090A094109444209400A094209090A"
theorem cover_1495519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495519 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1495519)
  decide +kernel
#print axioms cover_1495519

def state_1495563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 80 else (if j.val < 4 then 103 else 59)))
def hex_1495563 : String := "4440434142074440074341070505084207444006050708434109420544054043070509414205440508054008430908"
theorem cover_1495563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495563 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_1495563)
  decide +kernel
#print axioms cover_1495563
end Mub6.Numerical.CircleFullD0.Forest
