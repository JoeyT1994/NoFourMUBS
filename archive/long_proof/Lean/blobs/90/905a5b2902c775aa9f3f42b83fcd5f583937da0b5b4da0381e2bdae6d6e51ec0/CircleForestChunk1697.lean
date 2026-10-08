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
def state_2280427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 61)))
def hex_2280427 : String := "414442084340080840080808444243070643400741440A07074041060641060642074307400606"
theorem cover_2280427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2280427)
  decide +kernel
#print axioms cover_2280427

def state_2280466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 88 else 61)))
def hex_2280466 : String := "4144420843400505400808084442430A0643400A0A404106064106064208434041080708400606"
theorem cover_2280466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280466 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2280466)
  decide +kernel
#print axioms cover_2280466

def state_2280505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 93 else (if j.val < 4 then 89 else 61)))
def hex_2280505 : String := "4041440606064144060606"
theorem cover_2280505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280505 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2280505)
  decide +kernel
#print axioms cover_2280505

def state_2280516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
def hex_2280516 : String := "4442430A0A43400A0A4041440A4206430A060A0A424340070A0643400741440A420A43070A0A40410605410606"
theorem cover_2280516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280516 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2280516)
  decide +kernel
#print axioms cover_2280516

def state_2280562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
def hex_2280562 : String := "4442094340414405090A094041074407420607074243090643404144420843050508444209430909420843400808400606094041060609"
theorem cover_2280562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280562 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_2280562)
  decide +kernel
#print axioms cover_2280562

def state_2280617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 30)))
def hex_2280617 : String := "444209430A0A4243090643400A094041060609"
theorem cover_2280617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2280617)
  decide +kernel
#print axioms cover_2280617

def state_2280636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 30)))
def hex_2280636 : String := "404144420643404106064106060606444206434006060606414442060706444206434006060606"
theorem cover_2280636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280636 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2280636)
  decide +kernel
#print axioms cover_2280636
end Mub6.Numerical.CircleFullD0.Forest
