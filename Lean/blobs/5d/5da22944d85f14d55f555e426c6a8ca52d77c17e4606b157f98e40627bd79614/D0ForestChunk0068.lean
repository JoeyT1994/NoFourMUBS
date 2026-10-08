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
def state_953713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
def hex_953713 : String := "42414443404207070707430A40420707074443090643404241440707440707410909420709404207410707074144090A4409430940424144070A090909"
theorem cover_953713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953713 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 61) (hex := hex_953713)
  decide +kernel
#print axioms cover_953713

def state_953774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
def hex_953774 : String := "42410707410909"
theorem cover_953774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953774 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_953774)
  decide +kernel
#print axioms cover_953774

def state_953781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 26)))
def hex_953781 : String := "44094309400909"
theorem cover_953781 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953781 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_953781)
  decide +kernel
#print axioms cover_953781

def state_953788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
def hex_953788 : String := "424405430540414244094340424109050909404206414406070606094244054305060541090609"
theorem cover_953788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953788 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 39) (hex := hex_953788)
  decide +kernel
#print axioms cover_953788

def state_953827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 26)))
def hex_953827 : String := "414244074309070909"
theorem cover_953827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953827 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_953827)
  decide +kernel
#print axioms cover_953827

def state_953837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 16 else 27)))
def hex_953837 : String := "40410A4244050A090A"
theorem cover_953837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953837 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_953837)
  decide +kernel
#print axioms cover_953837

def state_953848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 27)))
def hex_953848 : String := "4244430A4042410A44430A404241074407070A0A0A0A0A0A0A"
theorem cover_953848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953848 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 25) (hex := hex_953848)
  decide +kernel
#print axioms cover_953848

def state_953876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 54)))
def hex_953876 : String := "4041424443054042410A0505050A0A424405430540410A050505410A05"
theorem cover_953876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953876 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_953876)
  decide +kernel
#print axioms cover_953876

def state_953909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 108)))
def hex_953909 : String := "4340424144430A40420707070AC7410AC742410A4405070A4042414407430A07C7414443404207090707430A4042070A07C742074107440607"
theorem cover_953909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_953909 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 57) (hex := hex_953909)
  decide +kernel
#print axioms cover_953909
end Mub6.Numerical.CircleFullD0.Forest
