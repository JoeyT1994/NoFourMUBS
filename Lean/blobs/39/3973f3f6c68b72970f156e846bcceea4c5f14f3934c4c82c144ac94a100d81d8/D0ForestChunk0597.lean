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
def state_1332045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 61 else (if j.val < 4 then 46 else 49)))
def hex_1332045 : String := "4344064009064440090640410809414243060A0506"
theorem cover_1332045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1332045)
  decide +kernel
#print axioms cover_1332045

def state_1332066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 49)))
def hex_1332066 : String := "4243064440050640050643064406400906"
theorem cover_1332066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332066 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_1332066)
  decide +kernel
#print axioms cover_1332066

def state_1332084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 48)))
def hex_1332084 : String := "4007410707"
theorem cover_1332084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332084 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1332084)
  decide +kernel
#print axioms cover_1332084

def state_1332090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 49)))
def hex_1332090 : String := "41424344070807434407080707"
theorem cover_1332090 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332090 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_1332090)
  decide +kernel
#print axioms cover_1332090

def state_1332104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 49)))
def hex_1332104 : String := "42434440070A4041084205434407400541080507410A420543440A400A0A0A440740070A434440070A40410842434407400741080707430907410A420A0A0A"
theorem cover_1332104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332104 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 63) (hex := hex_1332104)
  decide +kernel
#print axioms cover_1332104

def state_1332167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 49)))
def hex_1332167 : String := "42434407050543440740074142430607060607"
theorem cover_1332167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1332167)
  decide +kernel
#print axioms cover_1332167

def state_1332186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 23 else 24)))
def hex_1332186 : String := "4344094009414243054405400905050644074041424309070507414243440A40410509050A054243440640070607430607"
theorem cover_1332186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332186 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1332186)
  decide +kernel
#print axioms cover_1332186

def state_1332235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 24)))
def hex_1332235 : String := "4243440640050607430907"
theorem cover_1332235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 11) (hex := hex_1332235)
  decide +kernel
#print axioms cover_1332235

def state_1332250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 25)))
def hex_1332250 : String := "4441420808420543094005440905410805"
theorem cover_1332250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332250 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1332250)
  decide +kernel
#print axioms cover_1332250
end Mub6.Numerical.CircleFullD0.Forest
