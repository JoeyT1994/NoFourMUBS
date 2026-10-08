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
def state_275998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 9)))
def hex_275998 : String := "4442084041054344060506410843444208404105434406050641084344420840080808080808420809"
theorem cover_275998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 41) (hex := hex_275998)
  decide +kernel
#print axioms cover_275998

def state_276042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 16 else (if j.val < 4 then 28 else 18)))
def hex_276042 : String := "4140434406060643444207070744420641060606400607"
theorem cover_276042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_276042)
  decide +kernel
#print axioms cover_276042

def state_276067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
def hex_276067 : String := "434442074140050707074442064140054344060506400607420607"
theorem cover_276067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_276067)
  decide +kernel
#print axioms cover_276067

def state_276095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 56 else 18)))
def hex_276095 : String := "44424140070707414007070707"
theorem cover_276095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_276095)
  decide +kernel
#print axioms cover_276095

def state_276110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 34 else (if j.val < 4 then 57 else 36)))
def hex_276110 : String := "4140064344420641400607070744060640064307440506"
theorem cover_276110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_276110)
  decide +kernel
#print axioms cover_276110

def state_276135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
def hex_276135 : String := "434442410606414005070707444206410606420609"
theorem cover_276135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_276135)
  decide +kernel
#print axioms cover_276135

def state_276157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 114 else 36)))
def hex_276157 : String := "4442414007430744D907074140430744D907430744D9070707"
theorem cover_276157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_276157)
  decide +kernel
#print axioms cover_276157

def state_276182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 115 else 36)))
def hex_276182 : String := "44424140064344D942060706400643050541404344D9094406064344D942070744D94208094043070A43074442050A07424140060807410907"
theorem cover_276182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276182 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 57) (hex := hex_276182)
  decide +kernel
#print axioms cover_276182

def state_276239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 93) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
def hex_276239 : String := "404307440A0643074442070707"
theorem cover_276239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_276239)
  decide +kernel
#print axioms cover_276239
end Mub6.Numerical.CircleFullPrototype.Forest
