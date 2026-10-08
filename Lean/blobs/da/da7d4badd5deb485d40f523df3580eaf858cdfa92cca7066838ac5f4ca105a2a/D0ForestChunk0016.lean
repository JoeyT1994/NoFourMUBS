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
def state_941361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 12)))
def hex_941361 : String := "424407410743404207440707070744410743090741430A0543404244074107430A0744090A42070940420744070707"
theorem cover_941361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941361 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 47) (hex := hex_941361)
  decide +kernel
#print axioms cover_941361

def state_941408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 12)))
def hex_941408 : String := "404244070544084105434005050507"
theorem cover_941408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941408 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_941408)
  decide +kernel
#print axioms cover_941408

def state_941424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
def hex_941424 : String := "05"
theorem cover_941424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941424 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_941424)
  decide +kernel
#print axioms cover_941424

def state_941428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 8 else 13)))
def hex_941428 : String := "44410543424009444105090940444105434205060505444105434240090740444105430A050A0A4205050A0509"
theorem cover_941428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941428 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 45) (hex := hex_941428)
  decide +kernel
#print axioms cover_941428

def state_941473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
def hex_941473 : String := "4441430505434042444105430605050642444105430A40050A0A0A40054205444105430505054105430605"
theorem cover_941473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941473 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_941473)
  decide +kernel
#print axioms cover_941473

def state_941516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
def hex_941516 : String := "424441430A05434042070A07070A44410A430A40424405050A0A0A"
theorem cover_941516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941516 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_941516)
  decide +kernel
#print axioms cover_941516

def state_941543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 13)))
def hex_941543 : String := "4005420505"
theorem cover_941543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941543 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_941543)
  decide +kernel
#print axioms cover_941543

def state_941550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 12)))
def hex_941550 : String := "4340440842080644080A400807"
theorem cover_941550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_941550 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_941550)
  decide +kernel
#print axioms cover_941550
end Mub6.Numerical.CircleFullD0.Forest
