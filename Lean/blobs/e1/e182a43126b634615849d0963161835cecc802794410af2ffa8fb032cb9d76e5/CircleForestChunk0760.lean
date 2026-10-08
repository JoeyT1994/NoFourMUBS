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
def state_1483291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 52)))
def hex_1483291 : String := "4442054140430505080542054140434442050842094109404308440505084405420541404344070907430907054344080944050905"
theorem cover_1483291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483291 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 53) (hex := hex_1483291)
  decide +kernel
#print axioms cover_1483291

def state_1483344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 35) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
def hex_1483344 : String := "05"
theorem cover_1483344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483344 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1483344)
  decide +kernel
#print axioms cover_1483344

def state_1483345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 39 else (if j.val < 4 then 51 else 52)))
def hex_1483345 : String := "4140430644064241400643440607070607430844074241404307070840430807080740064306440642414005050506"
theorem cover_1483345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1483345)
  decide +kernel
#print axioms cover_1483345

def state_1483395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 53)))
def hex_1483395 : String := "43444241094043070509410A400A430A44420506090A44424140084309080541400A430A4442080A0840430A0843444205410A050A44050842080A"
theorem cover_1483395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 59) (hex := hex_1483395)
  decide +kernel
#print axioms cover_1483395

def state_1483454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 53)))
def hex_1483454 : String := "430944420941404309444209414043090A09404309440509090909404344420541090509440542054109050909"
theorem cover_1483454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1483454 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 45) (hex := hex_1483454)
  decide +kernel
#print axioms cover_1483454
end Mub6.Numerical.CircleFullD0.Forest
