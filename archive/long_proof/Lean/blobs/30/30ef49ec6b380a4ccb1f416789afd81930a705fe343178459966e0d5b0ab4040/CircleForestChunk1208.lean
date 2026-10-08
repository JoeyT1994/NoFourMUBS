import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1590335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 27 else 27)))
def hex_1590335 : String := "4142414006430506400605410606424140070505410707"
theorem cover_1590335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590335 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1590335)
  decide +kernel
#print axioms cover_1590335

def state_1590358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 13)))
def hex_1590358 : String := "434441420508050544414240444108050505084205404441080505054142050805"
theorem cover_1590358 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590358 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1590358)
  decide +kernel
#print axioms cover_1590358

def state_1590392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 6)))
def hex_1590392 : String := "440A410A0A"
theorem cover_1590392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1590392)
  decide +kernel
#print axioms cover_1590392

def state_1590398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 12)))
def hex_1590398 : String := "4144080844404243090909424308410809084042430A414409084442410940090909424140070840070A0A0A424308410844080808"
theorem cover_1590398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590398 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1590398)
  decide +kernel
#print axioms cover_1590398

def state_1590451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 13 else 13)))
def hex_1590451 : String := "4140424308060608404243440A0744414244080808424441400708070707410607430A440A064243440A0A444108404244080808084108400A050A"
theorem cover_1590451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1590451)
  decide +kernel
#print axioms cover_1590451

def state_1590511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
def hex_1590511 : String := "4344064140420505050544414042440643050708084042064406430541080606414042430505080540420543050505"
theorem cover_1590511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1590511)
  decide +kernel
#print axioms cover_1590511

def state_1590558 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 6)))
def hex_1590558 : String := "4344080A4441084044080808410840424308080808"
theorem cover_1590558 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590558 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1590558)
  decide +kernel
#print axioms cover_1590558
end Mub6.Numerical.CircleFullD0.Forest
