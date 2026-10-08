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
def state_1656281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 27 else 21)))
def hex_1656281 : String := "4044434207410540050705434241404405070740440743420741070807074140054405074044434207050543080644070807440707"
theorem cover_1656281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656281 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1656281)
  decide +kernel
#print axioms cover_1656281

def state_1656334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 21)))
def hex_1656334 : String := "414005440543080540444342410506050543424140054405054006444308050806054443420741070707430807"
theorem cover_1656334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 45) (hex := hex_1656334)
  decide +kernel
#print axioms cover_1656334

def state_1656387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 40)))
def hex_1656387 : String := "414043440942094140A009090909404344094209090909"
theorem cover_1656387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656387 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1656387)
  decide +kernel
#print axioms cover_1656387

def state_1656414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 80)))
def hex_1656414 : String := "42094140060906"
theorem cover_1656414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656414 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1656414)
  decide +kernel
#print axioms cover_1656414

def state_1656423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 200) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 81)))
def hex_1656423 : String := "4043444209414006090642414043440A0A4406420906430A0940434406070609414006430A4406064006434406070644064209064344094209410A0909"
theorem cover_1656423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656423 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 61) (hex := hex_1656423)
  decide +kernel
#print axioms cover_1656423

def state_1656484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 201) else (if j.val < 3 then 122 else (if j.val < 4 then 104 else 81)))
def hex_1656484 : String := "40434409424140060909060609"
theorem cover_1656484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1656484)
  decide +kernel
#print axioms cover_1656484

def state_1656497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 123 else (if j.val < 4 then 104 else 81)))
def hex_1656497 : String := "414043440606064344420906424140430A060940430806084140060A06094006434406424109050606"
theorem cover_1656497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656497 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_1656497)
  decide +kernel
#print axioms cover_1656497

def state_1656538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 105 else 40)))
def hex_1656538 : String := "4406420906"
theorem cover_1656538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1656538 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1656538)
  decide +kernel
#print axioms cover_1656538
end Mub6.Numerical.CircleFullD0.Forest
