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
def state_950360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
def hex_950360 : String := "40424441070741074340420744070707074441434042070A070743404244070744074107070707410A434042444107070A0A0A40420744070A07420744070A"
theorem cover_950360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_950360)
  decide +kernel
#print axioms cover_950360

def state_950423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 27)))
def hex_950423 : String := "430A4042410A44430A07080A0A"
theorem cover_950423 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950423 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_950423)
  decide +kernel
#print axioms cover_950423

def state_950438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 26)))
def hex_950438 : String := "4042414405430540424107074144070A05420741070505414405430540424144050A05410A0542410A050505424144050705410905"
theorem cover_950438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950438 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_950438)
  decide +kernel
#print axioms cover_950438

def state_950493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 17 else 26)))
def hex_950493 : String := "4144064340420741070707074406434042064107050606"
theorem cover_950493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950493 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_950493)
  decide +kernel
#print axioms cover_950493

def state_950518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 52)))
def hex_950518 : String := "434042440607090606"
theorem cover_950518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_950518)
  decide +kernel
#print axioms cover_950518

def state_950528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
def hex_950528 : String := "4042414407430A07440743404207410705070741444309070A44430540420705054340420505054042410707410A44050A074207410A440507"
theorem cover_950528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950528 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 57) (hex := hex_950528)
  decide +kernel
#print axioms cover_950528

def state_950585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 53)))
def hex_950585 : String := "40424107074144070744064340420707070707"
theorem cover_950585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_950585 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_950585)
  decide +kernel
#print axioms cover_950585
end Mub6.Numerical.CircleFullD0.Forest
