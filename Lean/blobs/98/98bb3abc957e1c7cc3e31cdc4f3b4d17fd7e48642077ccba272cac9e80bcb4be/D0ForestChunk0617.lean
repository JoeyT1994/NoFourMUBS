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
def state_1336906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
def hex_1336906 : String := "44054005410542434405080505"
theorem cover_1336906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336906 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1336906)
  decide +kernel
#print axioms cover_1336906

def state_1336919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
def hex_1336919 : String := "4243440608084344400A06084408400842084344080808"
theorem cover_1336919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 23) (hex := hex_1336919)
  decide +kernel
#print axioms cover_1336919

def state_1336944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
def hex_1336944 : String := "43440641440640420843084144070808420643060706440741074344060807"
theorem cover_1336944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336944 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1336944)
  decide +kernel
#print axioms cover_1336944

def state_1336977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
def hex_1336977 : String := "414206400A0906"
theorem cover_1336977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336977 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1336977)
  decide +kernel
#print axioms cover_1336977

def state_1336989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 10)))
def hex_1336989 : String := "41420644064043414244064008064440050640054341420644064043C805060641420605060641424405400506054206050606"
theorem cover_1336989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 51) (hex := hex_1336989)
  decide +kernel
#print axioms cover_1336989

def state_1337040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 10)))
def hex_1337040 : String := "414207440540050742064406400506"
theorem cover_1337040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337040 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1337040)
  decide +kernel
#print axioms cover_1337040

def state_1337055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
def hex_1337055 : String := "06"
theorem cover_1337055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337055 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1337055)
  decide +kernel
#print axioms cover_1337055

def state_1337061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 20 else (if j.val < 4 then 8 else 22)))
def hex_1337061 : String := "40084306410706"
theorem cover_1337061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337061 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1337061)
  decide +kernel
#print axioms cover_1337061

def state_1337072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 44)))
def hex_1337072 : String := "420840094341444208400943C84144420640050642084005430941074405084406080908414442094005434144054205054405420605050944420640050608"
theorem cover_1337072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337072 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 63) (hex := hex_1337072)
  decide +kernel
#print axioms cover_1337072

def state_1337135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 45)))
def hex_1337135 : String := "09"
theorem cover_1337135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337135 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1337135)
  decide +kernel
#print axioms cover_1337135

def state_1337136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 49) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
def hex_1337136 : String := "08"
theorem cover_1337136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337136 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1337136)
  decide +kernel
#print axioms cover_1337136

def state_1337137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 22)))
def hex_1337137 : String := "414442090542084005430905444208400543080508"
theorem cover_1337137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337137 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 21) (hex := hex_1337137)
  decide +kernel
#print axioms cover_1337137

def state_1337162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 42 else (if j.val < 4 then 16 else 44)))
def hex_1337162 : String := "06"
theorem cover_1337162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337162 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1337162)
  decide +kernel
#print axioms cover_1337162
end Mub6.Numerical.CircleFullD0.Forest
