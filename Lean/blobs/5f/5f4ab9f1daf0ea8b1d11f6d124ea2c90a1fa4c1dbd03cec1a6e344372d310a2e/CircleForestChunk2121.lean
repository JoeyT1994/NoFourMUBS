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
def state_2589674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 38)))
def hex_2589674 : String := "404441424340440505050606DC41424340444105054105050540440A07084340444106DC41420A06DC440641050540440641060706DC44064106420509"
theorem cover_2589674 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589674 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2589674)
  decide +kernel
#print axioms cover_2589674

def state_2589735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 38)))
def hex_2589735 : String := "434044094109090940444106094143424044064106090606064309424044064143090609060606"
theorem cover_2589735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589735 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_2589735)
  decide +kernel
#print axioms cover_2589735

def state_2589776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 39)))
def hex_2589776 : String := "4340444142050A4205430540440A0705074405054044410A420743400707070708"
theorem cover_2589776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2589776)
  decide +kernel
#print axioms cover_2589776

def state_2589811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 104 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
def hex_2589811 : String := "4441424340440A0A050A43404406410609060642434044090905404441060907440607430940440607064142070742074340070707"
theorem cover_2589811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589811 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_2589811)
  decide +kernel
#print axioms cover_2589811

def state_2589864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 105 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
def hex_2589864 : String := "4441060941424305064309064243050709"
theorem cover_2589864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2589864)
  decide +kernel
#print axioms cover_2589864

def state_2589881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 39)))
def hex_2589881 : String := "40444106434240440607060606074406410607"
theorem cover_2589881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2589881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2589881)
  decide +kernel
#print axioms cover_2589881
end Mub6.Numerical.CircleFullD0.Forest
