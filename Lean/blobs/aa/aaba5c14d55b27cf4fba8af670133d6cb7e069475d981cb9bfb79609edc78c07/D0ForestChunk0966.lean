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
def state_1532379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 76 else 33)))
def hex_1532379 : String := "444042414309070709420841430844404208060640420809080840424143054440074207050509094241430544080508410509"
theorem cover_1532379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 51) (hex := hex_1532379)
  decide +kernel
#print axioms cover_1532379

def state_1532432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 66)))
def hex_1532432 : String := "420707"
theorem cover_1532432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532432 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1532432)
  decide +kernel
#print axioms cover_1532432

def state_1532436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 105) else (if j.val < 3 then 206 else (if j.val < 4 then 77 else 66)))
def hex_1532436 : String := "414344084007080707"
theorem cover_1532436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532436 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1532436)
  decide +kernel
#print axioms cover_1532436

def state_1532445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 105) else (if j.val < 3 then 207 else (if j.val < 4 then 77 else 66)))
def hex_1532445 : String := "41434440420741434406400706070742080640424143440740070807074143444007420806050A074241080841434406050A4306060A43440640070807"
theorem cover_1532445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532445 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_1532445)
  decide +kernel
#print axioms cover_1532445

def state_1532507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 77 else 67)))
def hex_1532507 : String := "42074143444007420709050707"
theorem cover_1532507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532507 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_1532507)
  decide +kernel
#print axioms cover_1532507

def state_1532521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 105) else (if j.val < 3 then 206 else (if j.val < 4 then 77 else 67)))
def hex_1532521 : String := "4143444042074143050707084042060542084105054407400642060A43440740070807"
theorem cover_1532521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532521 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1532521)
  decide +kernel
#print axioms cover_1532521

def state_1532556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 105) else (if j.val < 3 then 207 else (if j.val < 4 then 77 else 67)))
def hex_1532556 : String := "41434440424143050A074105430507424143050A08410543050A050A43444007420841080640420709420841050844074007420707"
theorem cover_1532556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532556 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 53) (hex := hex_1532556)
  decide +kernel
#print axioms cover_1532556

def state_1532610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 52) else (if j.val < 3 then 102 else (if j.val < 4 then 38 else 33)))
def hex_1532610 : String := "4143080908"
theorem cover_1532610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532610 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_1532610)
  decide +kernel
#print axioms cover_1532610
end Mub6.Numerical.CircleFullD0.Forest
