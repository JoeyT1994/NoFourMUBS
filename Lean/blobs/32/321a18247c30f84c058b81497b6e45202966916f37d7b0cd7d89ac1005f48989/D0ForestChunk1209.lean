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
def state_1590582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
def hex_1590582 : String := "41444243400A0540444142094309090909440505430A40440A0644080A424309090A44424305404109050543074007054243070907"
theorem cover_1590582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590582 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_1590582)
  decide +kernel
#print axioms cover_1590582

def state_1590636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_1590636 : String := "444240434441420906090606434405094441420506050640064344084106060606"
theorem cover_1590636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590636 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1590636)
  decide +kernel
#print axioms cover_1590636

def state_1590669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 7)))
def hex_1590669 : String := "4442404309090540434144424305060606074106444205060643414405050541440505054209400609"
theorem cover_1590669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590669 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1590669)
  decide +kernel
#print axioms cover_1590669

def state_1590710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
def hex_1590710 : String := "43410A074144400608064440424307060642430A41064405050A06"
theorem cover_1590710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1590710)
  decide +kernel
#print axioms cover_1590710

def state_1590737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
def hex_1590737 : String := "4243414405400A05054144404205080540420943080608440505430A410844404243050508050A"
theorem cover_1590737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590737 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_1590737)
  decide +kernel
#print axioms cover_1590737

def state_1590784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 24)))
def hex_1590784 : String := "404341420A0942444307070A44094309094109420A094307410742074407400907"
theorem cover_1590784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590784 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 33) (hex := hex_1590784)
  decide +kernel
#print axioms cover_1590784
end Mub6.Numerical.CircleFullD0.Forest
