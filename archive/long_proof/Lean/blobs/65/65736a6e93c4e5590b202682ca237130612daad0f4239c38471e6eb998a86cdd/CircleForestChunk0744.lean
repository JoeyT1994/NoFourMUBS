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
def state_1479472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 46 else 59)))
def hex_1479472 : String := "4341070707"
theorem cover_1479472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479472 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1479472)
  decide +kernel
#print axioms cover_1479472

def state_1479477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 34 else (if j.val < 4 then 46 else 59)))
def hex_1479477 : String := "4341444240074306064043410705074341094442400706400508054107074206400506444240070A404305074341440A050A0A42064005430505410707"
theorem cover_1479477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479477 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1479477)
  decide +kernel
#print axioms cover_1479477

def state_1479539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 46 else 59)))
def hex_1479539 : String := "43410505410707"
theorem cover_1479539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479539 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1479539)
  decide +kernel
#print axioms cover_1479539

def state_1479547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 92 else 59)))
def hex_1479547 : String := "41444240430541050543414442090505054144420740050805444240050705054005430541050505444240054305414442070505050505"
theorem cover_1479547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1479547)
  decide +kernel
#print axioms cover_1479547

def state_1479602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 44) else (if j.val < 3 then 35 else (if j.val < 4 then 93 else 59)))
def hex_1479602 : String := "41444240070740074341444207050544420505050742070544420740074341050507420705"
theorem cover_1479602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479602 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1479602)
  decide +kernel
#print axioms cover_1479602

def state_1479639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 46 else 29)))
def hex_1479639 : String := "44420A40094309094240094341440A420A05090740094341440905054144090509"
theorem cover_1479639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479639 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1479639)
  decide +kernel
#print axioms cover_1479639

def state_1479672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 47 else 29)))
def hex_1479672 : String := "41444207400743410707074207400707440707"
theorem cover_1479672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479672 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1479672)
  decide +kernel
#print axioms cover_1479672
end Mub6.Numerical.CircleFullD0.Forest
