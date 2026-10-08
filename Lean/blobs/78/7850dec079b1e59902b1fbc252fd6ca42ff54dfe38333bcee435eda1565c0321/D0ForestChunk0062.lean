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
def state_952271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 53)))
def hex_952271 : String := "4443400809084340060A40424105440843060541060842410A44080A410A44080A"
theorem cover_952271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_952271)
  decide +kernel
#print axioms cover_952271

def state_952304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 53)))
def hex_952304 : String := "44430908434042414408064408060609404241080841080842414408430A400808440843090841440843090809"
theorem cover_952304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952304 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 45) (hex := hex_952304)
  decide +kernel
#print axioms cover_952304

def state_952349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 17 else 26)))
def hex_952349 : String := "440943400609404106424408060641424409430640060A094244094309404106080909"
theorem cover_952349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952349 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 35) (hex := hex_952349)
  decide +kernel
#print axioms cover_952349

def state_952386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 52)))
def hex_952386 : String := "4305400808"
theorem cover_952386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952386 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_952386)
  decide +kernel
#print axioms cover_952386

def state_952392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 53)))
def hex_952392 : String := "4041424405430540064241060505050541424405430540420505050505"
theorem cover_952392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 29) (hex := hex_952392)
  decide +kernel
#print axioms cover_952392

def state_952422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 53)))
def hex_952422 : String := "414244084340420806424108084108084008420808440843400641060808420A4408430808"
theorem cover_952422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952422 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_952422)
  decide +kernel
#print axioms cover_952422

def state_952462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 106)))
def hex_952462 : String := "4340080508"
theorem cover_952462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952462 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_952462)
  decide +kernel
#print axioms cover_952462

def state_952468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 107)))
def hex_952468 : String := "4042414408434008420808084408C7414408430908084241440943404241090505054042410808084207094405C709"
theorem cover_952468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_952468 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_952468)
  decide +kernel
#print axioms cover_952468
end Mub6.Numerical.CircleFullD0.Forest
