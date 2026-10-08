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
def state_954710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
def hex_954710 : String := "4142054306054243444041050A414205430605420A0A0505434440064106070644400541050A05"
theorem cover_954710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954710 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_954710)
  decide +kernel
#print axioms cover_954710

def state_954751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 27)))
def hex_954751 : String := "434440420505420541054344404205054205410544434008420808050505050505"
theorem cover_954751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954751 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 33) (hex := hex_954751)
  decide +kernel
#print axioms cover_954751

def state_954787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_954787 : String := "41064243060506"
theorem cover_954787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954787 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_954787)
  decide +kernel
#print axioms cover_954787

def state_954795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_954795 : String := "42434440050A0505430605"
theorem cover_954795 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954795 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_954795)
  decide +kernel
#print axioms cover_954795

def state_954806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 54)))
def hex_954806 : String := "424344404106424408050641420A0A424443400809080A440906064440054105420505054344400641060606444041064208064142050A4244080544080605"
theorem cover_954806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954806 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_954806)
  decide +kernel
#print axioms cover_954806

def state_954869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 36 else 55)))
def hex_954869 : String := "4005410506"
theorem cover_954869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954869 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_954869)
  decide +kernel
#print axioms cover_954869

def state_954874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 37 else 27)))
def hex_954874 : String := "444005410542050505"
theorem cover_954874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954874 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_954874)
  decide +kernel
#print axioms cover_954874

def state_954887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 54)))
def hex_954887 : String := "414243444005420505050543444041050841420544080542C708050542C743440A40064142050642C707440A05"
theorem cover_954887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954887 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_954887)
  decide +kernel
#print axioms cover_954887

def state_954934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 36 else 54)))
def hex_954934 : String := "434440424105C74105C7424105C74144434005070505C70505"
theorem cover_954934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954934 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_954934)
  decide +kernel
#print axioms cover_954934
end Mub6.Numerical.CircleFullD0.Forest
