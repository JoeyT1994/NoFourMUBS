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
def state_1578368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 206)))
def hex_1578368 : String := "4041D04244094340410942440943050909084041094244094309090941084244080508440943080841084244080808"
theorem cover_1578368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1578368)
  decide +kernel
#print axioms cover_1578368

def state_1578416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 208 else 207)))
def hex_1578416 : String := "4041D04244434041D005054041D04205440505054305054443080843080808"
theorem cover_1578416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578416 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 31) (hex := hex_1578416)
  decide +kernel
#print axioms cover_1578416

def state_1578448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 154 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
def hex_1578448 : String := "41D04244434041D04244050544430508430505084041D0424443050A43050544430806064108420508434041D0420544050505400641080544430808430806"
theorem cover_1578448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1578448)
  decide +kernel
#print axioms cover_1578448

def state_1578511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 155 else 65) else (if j.val < 3 then 193 else (if j.val < 4 then 209 else 207)))
def hex_1578511 : String := "41084244080508"
theorem cover_1578511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578511 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1578511)
  decide +kernel
#print axioms cover_1578511

def state_1578519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 32) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
def hex_1578519 : String := "41420A0642440A4340060A064443400641D04244090A090606"
theorem cover_1578519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1578519)
  decide +kernel
#print axioms cover_1578519

def state_1578545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 64) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
def hex_1578545 : String := "42440A0A44430808430806"
theorem cover_1578545 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578545 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1578545)
  decide +kernel
#print axioms cover_1578545

def state_1578556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 65) else (if j.val < 3 then 96 else (if j.val < 4 then 105 else 103)))
def hex_1578556 : String := "424443400A0A0A43400A0A0A44434041D042440943400A0A0A0941084244080808400A0A4340410642444340060A0606064108424408080840060A"
theorem cover_1578556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1578556)
  decide +kernel
#print axioms cover_1578556
end Mub6.Numerical.CircleFullD0.Forest
