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
def state_1335679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
def hex_1335679 : String := "43444042430508434441400509050544410840070909420943090909444042084408080A09"
theorem cover_1335679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335679 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1335679)
  decide +kernel
#print axioms cover_1335679

def state_1335722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 12)))
def hex_1335722 : String := "42400843444241084344070507410843440A4006090A420808440A0640430806434441084243440A40060A0A0A08440806"
theorem cover_1335722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335722 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 49) (hex := hex_1335722)
  decide +kernel
#print axioms cover_1335722

def state_1335772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 12)))
def hex_1335772 : String := "40430507434441420543440740050707054142054305400509054407410905"
theorem cover_1335772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335772 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_1335772)
  decide +kernel
#print axioms cover_1335772

def state_1335804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 12)))
def hex_1335804 : String := "43440741424006430606070707"
theorem cover_1335804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335804 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1335804)
  decide +kernel
#print axioms cover_1335804

def state_1335819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 15 else (if j.val < 4 then 24 else 24)))
def hex_1335819 : String := "4142434407400707070707"
theorem cover_1335819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335819 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1335819)
  decide +kernel
#print axioms cover_1335819

def state_1335832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 24 else 25)))
def hex_1335832 : String := "4340444106070644414243090643440A080A42054344074007410905074108420543400509094006440706"
theorem cover_1335832 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335832 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1335832)
  decide +kernel
#print axioms cover_1335832

def state_1335877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 48 else 25)))
def hex_1335877 : String := "444107074106420643400644060606"
theorem cover_1335877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335877 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 15) (hex := hex_1335877)
  decide +kernel
#print axioms cover_1335877

def state_1335893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 31 else (if j.val < 4 then 48 else 50)))
def hex_1335893 : String := "410A424344074007410A070743440740070A07"
theorem cover_1335893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335893 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 19) (hex := hex_1335893)
  decide +kernel
#print axioms cover_1335893

def state_1335913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 31 else (if j.val < 4 then 48 else 51)))
def hex_1335913 : String := "08"
theorem cover_1335913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1335913 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1335913)
  decide +kernel
#print axioms cover_1335913
end Mub6.Numerical.CircleFullD0.Forest
