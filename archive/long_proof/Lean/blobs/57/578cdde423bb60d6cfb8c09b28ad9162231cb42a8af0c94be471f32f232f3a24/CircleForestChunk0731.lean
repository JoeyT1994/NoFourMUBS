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
def state_1476325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 132 else (if j.val < 4 then 179 else 232)))
def hex_1476325 : String := "404341060607434144424006430606064240430A074309094006430A410908444240060806424043050743410805410707400543050841440707440707"
theorem cover_1476325 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476325 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1476325)
  decide +kernel
#print axioms cover_1476325

def state_1476386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 133 else (if j.val < 4 then 179 else 232)))
def hex_1476386 : String := "400643410606410606"
theorem cover_1476386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1476386)
  decide +kernel
#print axioms cover_1476386

def state_1476395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 233)))
def hex_1476395 : String := "424043050743410A054144070544070540054305410505"
theorem cover_1476395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 23) (hex := hex_1476395)
  decide +kernel
#print axioms cover_1476395

def state_1476418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 177) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 116)))
def hex_1476418 : String := "44424043410605074341440842400543050805440605414406070A400643084106064240054305414407050505"
theorem cover_1476418 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476418 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1476418)
  decide +kernel
#print axioms cover_1476418

def state_1476464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 88) else (if j.val < 3 then 66 else (if j.val < 4 then 178 else 116)))
def hex_1476464 : String := "41444240430841080808084240430A410A4442400508050543074109440809400A430708440842404305410505430708400508"
theorem cover_1476464 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476464 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1476464)
  decide +kernel
#print axioms cover_1476464

def state_1476517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 176) else (if j.val < 3 then 66 else (if j.val < 4 then 179 else 232)))
def hex_1476517 : String := "42404341440809440842404308080808414409094408424043410707074308074043080708430841090840430841440842400908080808"
theorem cover_1476517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1476517 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1476517)
  decide +kernel
#print axioms cover_1476517
end Mub6.Numerical.CircleFullD0.Forest
