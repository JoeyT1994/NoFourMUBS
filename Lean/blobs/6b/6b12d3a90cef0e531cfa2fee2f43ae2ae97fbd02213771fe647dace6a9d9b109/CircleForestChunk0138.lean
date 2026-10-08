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
def state_970574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
def hex_970574 : String := "414244064340410842080806064443090643404108420808084041420808420644060806424406434041420644050842060906064409430940414206060606"
theorem cover_970574 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970574 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_970574)
  decide +kernel
#print axioms cover_970574

def state_970639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
def hex_970639 : String := "424344400708084440410542090741084208080807"
theorem cover_970639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_970639)
  decide +kernel
#print axioms cover_970639

def state_970662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 29)))
def hex_970662 : String := "4441400742444308080807400742444341400708400705414007084007420606430741084007080707"
theorem cover_970662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_970662)
  decide +kernel
#print axioms cover_970662

def state_970703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 52 else (if j.val < 4 then 37 else 29)))
def hex_970703 : String := "444140420907424344410808080943074406074007424344064108400706064307440607414007084007420807"
theorem cover_970703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970703 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_970703)
  decide +kernel
#print axioms cover_970703

def state_970748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 47) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 29)))
def hex_970748 : String := "07"
theorem cover_970748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_970748)
  decide +kernel
#print axioms cover_970748

def state_970749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 29)))
def hex_970749 : String := "41420808424344404108424443050608444305080808084440414206084206434406060606084344400708084440414208074243440607060741080608"
theorem cover_970749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_970749 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_970749)
  decide +kernel
#print axioms cover_970749
end Mub6.Numerical.CircleFullD0.Forest
