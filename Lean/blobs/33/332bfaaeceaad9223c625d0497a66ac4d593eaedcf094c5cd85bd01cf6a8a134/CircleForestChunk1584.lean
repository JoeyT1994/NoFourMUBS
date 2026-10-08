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
def state_2253450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 88 else (if j.val < 4 then 91 else 111)))
def hex_2253450 : String := "4043414208094207094142444043070808080942440707094341084208094142080A42444043084108070808440909"
theorem cover_2253450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253450 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2253450)
  decide +kernel
#print axioms cover_2253450

def state_2253497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 103) else (if j.val < 3 then 89 else (if j.val < 4 then 91 else 55)))
def hex_2253497 : String := "44094009430509"
theorem cover_2253497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253497 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2253497)
  decide +kernel
#print axioms cover_2253497

def state_2253504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 45 else 55)))
def hex_2253504 : String := "4341054244054008050541424405080542444043410542BE05410A42BE44050A4305410542BE05404341084208440505410842080A43080844054043050A05"
theorem cover_2253504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253504 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_2253504)
  decide +kernel
#print axioms cover_2253504

def state_2253567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 22 else 27)))
def hex_2253567 : String := "4305440505"
theorem cover_2253567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253567 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2253567)
  decide +kernel
#print axioms cover_2253567

def state_2253573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 26)))
def hex_2253573 : String := "06"
theorem cover_2253573 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253573 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2253573)
  decide +kernel
#print axioms cover_2253573

def state_2253577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 27)))
def hex_2253577 : String := "424406404341064244064043410A420A060A0A06410A4244060A0A43410A420A0A0A06"
theorem cover_2253577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253577 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_2253577)
  decide +kernel
#print axioms cover_2253577

def state_2253614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 54)))
def hex_2253614 : String := "404306084306410608"
theorem cover_2253614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253614 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2253614)
  decide +kernel
#print axioms cover_2253614

def state_2253625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 92 else 55)))
def hex_2253625 : String := "4142444043060943064106094043094109074341424409070909410A09094244090709"
theorem cover_2253625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2253625)
  decide +kernel
#print axioms cover_2253625

def state_2253660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 32 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 93 else 55)))
def hex_2253660 : String := "414244404341060841060543410642440505060A4043410A050543410A4205090A4406094244080508"
theorem cover_2253660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253660 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_2253660)
  decide +kernel
#print axioms cover_2253660
end Mub6.Numerical.CircleFullD0.Forest
