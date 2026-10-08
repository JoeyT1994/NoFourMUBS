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
def state_1501094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 171) else (if j.val < 3 then 82 else (if j.val < 4 then 208 else 118)))
def hex_1501094 : String := "44420506424043410A064144050A064341444205060A440542050641440542050A0540064306410A06"
theorem cover_1501094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1501094)
  decide +kernel
#print axioms cover_1501094

def state_1501135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 209 else 118)))
def hex_1501135 : String := "414442054043064105054341070505424008434108440508050A44054240434105050505404306410A0543410A44054205064144050A05"
theorem cover_1501135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1501135)
  decide +kernel
#print axioms cover_1501135

def state_1501190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 118)))
def hex_1501190 : String := "400643410A06410A06"
theorem cover_1501190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501190 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1501190)
  decide +kernel
#print axioms cover_1501190

def state_1501201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 198 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
def hex_1501201 : String := "430A41084442080A08"
theorem cover_1501201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1501201)
  decide +kernel
#print axioms cover_1501201

def state_1501210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 199 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 119)))
def hex_1501210 : String := "43410A444240430A0A43410A4442400A090A0A410A4442050A0A0A0A414442080A0A444240084341080808400A430A410A4442050A0A42080A"
theorem cover_1501210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1501210)
  decide +kernel
#print axioms cover_1501210

def state_1501267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 119)))
def hex_1501267 : String := "0A"
theorem cover_1501267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501267 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1501267)
  decide +kernel
#print axioms cover_1501267

def state_1501269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 84) else (if j.val < 3 then 41 else (if j.val < 4 then 105 else 59)))
def hex_1501269 : String := "4442400843414442080A084442054008430A050808400A430A0A42080A"
theorem cover_1501269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 29) (hex := hex_1501269)
  decide +kernel
#print axioms cover_1501269

def state_1501300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 85) else (if j.val < 3 then 82 else (if j.val < 4 then 105 else 118)))
def hex_1501300 : String := "404341084405080843414405420540084341080505440542050505"
theorem cover_1501300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1501300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1501300)
  decide +kernel
#print axioms cover_1501300
end Mub6.Numerical.CircleFullD0.Forest
