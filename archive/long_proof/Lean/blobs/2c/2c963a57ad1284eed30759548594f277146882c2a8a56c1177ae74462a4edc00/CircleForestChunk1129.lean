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
def state_1571481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 51)))
def hex_1571481 : String := "424443060A43050A4443404142064406430608060640410A08410A420606434041420844430808430808084142054406050540410A0841420A0A4205440A05"
theorem cover_1571481 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571481 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_1571481)
  decide +kernel
#print axioms cover_1571481

def state_1571544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 52 else 51)))
def hex_1571544 : String := "414207444306074340410705050742054406430505"
theorem cover_1571544 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571544 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1571544)
  decide +kernel
#print axioms cover_1571544

def state_1571565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 53 else 51)))
def hex_1571565 : String := "400A410A420A440A0A"
theorem cover_1571565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571565 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1571565)
  decide +kernel
#print axioms cover_1571565

def state_1571574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 25)))
def hex_1571574 : String := "424443060A43050A44430640410A08410606434041420844430608434008054008050841060540414208440A0A084142054443050A4305054205440505"
theorem cover_1571574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1571574)
  decide +kernel
#print axioms cover_1571574

def state_1571635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 23 else (if j.val < 4 then 27 else 25)))
def hex_1571635 : String := "400A410A420A440A0A"
theorem cover_1571635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571635 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1571635)
  decide +kernel
#print axioms cover_1571635

def state_1571644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 12)))
def hex_1571644 : String := "4244084308084443400806084340084142084443060843050808400841420844080A08"
theorem cover_1571644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571644 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1571644)
  decide +kernel
#print axioms cover_1571644

def state_1571680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
def hex_1571680 : String := "41424308084344400841420806080606420808"
theorem cover_1571680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1571680)
  decide +kernel
#print axioms cover_1571680

def state_1571701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
def hex_1571701 : String := "434440410908414205090509440A09"
theorem cover_1571701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571701 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 15) (hex := hex_1571701)
  decide +kernel
#print axioms cover_1571701
end Mub6.Numerical.CircleFullD0.Forest
