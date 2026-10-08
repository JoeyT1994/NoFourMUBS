import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_60726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_60726 : String := "424443400941094208090943924009410942084408434009410944080A09444340090A094340410A429206410A42920A0A"
theorem cover_60726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60726 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 49) (hex := hex_60726)
  decide +kernel
#print axioms cover_60726

def state_60776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 54 else (if j.val < 4 then 48 else 17)))
def hex_60776 : String := "4408434041920841924208440843400841440509050808"
theorem cover_60776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60776 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 23) (hex := hex_60776)
  decide +kernel
#print axioms cover_60776

def state_60800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 55 else (if j.val < 4 then 48 else 34)))
def hex_60800 : String := "4340410906414244054305080A054009410908"
theorem cover_60800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60800 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_60800)
  decide +kernel
#print axioms cover_60800

def state_60819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 55 else (if j.val < 4 then 48 else 35)))
def hex_60819 : String := "4340414292060641429244060642440543064006414208050506404142090742080741424408434007410A420807090A4208440807"
theorem cover_60819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60819 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_60819)
  decide +kernel
#print axioms cover_60819

def state_60873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_60873 : String := "424443414042070907404208440543410A0509420505410608434140920640924206440A0A41064042060A060A"
theorem cover_60873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60873 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_60873)
  decide +kernel
#print axioms cover_60873

def state_60918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
def hex_60918 : String := "424443400805084340419242080541424405060505400841060844430540410A050543404142920A420505414205050540410A42080A410A420505"
theorem cover_60918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_60918 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_60918)
  decide +kernel
#print axioms cover_60918
end Mub6.Numerical.CircleFullPrototype.Forest
