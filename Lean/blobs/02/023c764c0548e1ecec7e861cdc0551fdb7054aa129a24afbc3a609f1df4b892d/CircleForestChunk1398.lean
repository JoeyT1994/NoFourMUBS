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
def state_1636204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 18)))
def hex_1636204 : String := "44400808404108430706410843424408400743070807420808"
theorem cover_1636204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1636204)
  decide +kernel
#print axioms cover_1636204

def state_1636229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 18)))
def hex_1636229 : String := "42440808440508"
theorem cover_1636229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1636229)
  decide +kernel
#print axioms cover_1636229

def state_1636239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 36)))
def hex_1636239 : String := "4043414240060806060643414209440840080942090909"
theorem cover_1636239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1636239)
  decide +kernel
#print axioms cover_1636239

def state_1636263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 50 else 37)))
def hex_1636263 : String := "43414244400643410842080608400A434144070744070741080A440640064307064244064006430A0606414244060A0606"
theorem cover_1636263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636263 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_1636263)
  decide +kernel
#print axioms cover_1636263

def state_1636314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 102) else (if j.val < 3 then 56 else (if j.val < 4 then 100 else 37)))
def hex_1636314 : String := "4244404341084205440705080940434144080505410844420808420505054440430708094043074108424406400605064305410905"
theorem cover_1636314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636314 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_1636314)
  decide +kernel
#print axioms cover_1636314

def state_1636367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 103) else (if j.val < 3 then 56 else (if j.val < 4 then 100 else 37)))
def hex_1636367 : String := "4244404305090505444006054043050605"
theorem cover_1636367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636367 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1636367)
  decide +kernel
#print axioms cover_1636367

def state_1636384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 41 else 51) else (if j.val < 3 then 56 else (if j.val < 4 then 101 else 37)))
def hex_1636384 : String := "414244094008094408400809424409404341090506094406400609"
theorem cover_1636384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636384 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1636384)
  decide +kernel
#print axioms cover_1636384

def state_1636411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 57 else (if j.val < 4 then 50 else 18)))
def hex_1636411 : String := "4440064341424406400607060606400643414244400607400743074107070742440640060506414244064006090606"
theorem cover_1636411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_1636411)
  decide +kernel
#print axioms cover_1636411
end Mub6.Numerical.CircleFullD0.Forest
