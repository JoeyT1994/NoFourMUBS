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
def state_2334324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
def hex_2334324 : String := "44414240430A4441090A0943084441050A0840430544050805420A404344060606430844060841420A080A"
theorem cover_2334324 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334324 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2334324)
  decide +kernel
#print axioms cover_2334324

def state_2334372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 4)))
def hex_2334372 : String := "4441094209434006060909"
theorem cover_2334372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334372 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2334372)
  decide +kernel
#print axioms cover_2334372

def state_2334385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 8)))
def hex_2334385 : String := "4209430509"
theorem cover_2334385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334385 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2334385)
  decide +kernel
#print axioms cover_2334385

def state_2334390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 8)))
def hex_2334390 : String := "42430A0943404441050A090A404441094209430609094441420905420A4305404441094209430509094441420905420A4305400944990941090A41090A"
theorem cover_2334390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334390 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 15) (count := 61) (hex := hex_2334390)
  decide +kernel
#print axioms cover_2334390

def state_2334451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 9)))
def hex_2334451 : String := "41090A"
theorem cover_2334451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334451 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2334451)
  decide +kernel
#print axioms cover_2334451

def state_2334454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
def hex_2334454 : String := "4009444341094209400944430909090909"
theorem cover_2334454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_2334454)
  decide +kernel
#print axioms cover_2334454

def state_2334472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 4)))
def hex_2334472 : String := "404442414305074306060507444241054305404442410506054241050705440542080505420805"
theorem cover_2334472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 39) (hex := hex_2334472)
  decide +kernel
#print axioms cover_2334472

def state_2334511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
def hex_2334511 : String := "40074442434107400744424341074007444243410540444209070744994209070943050707070707070707"
theorem cover_2334511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 19) (count := 43) (hex := hex_2334511)
  decide +kernel
#print axioms cover_2334511

def state_2334556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 4)))
def hex_2334556 : String := "404441420A430606060A4441420A430A404441420A06060A0A0A0A"
theorem cover_2334556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 27) (hex := hex_2334556)
  decide +kernel
#print axioms cover_2334556
end Mub6.Numerical.CircleFullD0.Forest
