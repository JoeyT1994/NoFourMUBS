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
def state_994053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 208 else 86)))
def hex_994053 : String := "444142404344410A05C644410942404305090A05C6430A440A0A4043054405090A4240434405C64405C6434405C64407C605C6"
theorem cover_994053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994053 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 51) (hex := hex_994053)
  decide +kernel
#print axioms cover_994053

def state_994106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 216) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 172)))
def hex_994106 : String := "424043444109424006074005430505C6444109420609C64344410A07C644410807084043440509440909430A4441090AC6"
theorem cover_994106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994106 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_994106)
  decide +kernel
#print axioms cover_994106

def state_994155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 217) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 172)))
def hex_994155 : String := "4240434407C64406C643070740430505434405C64405C6"
theorem cover_994155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994155 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 23) (hex := hex_994155)
  decide +kernel
#print axioms cover_994155

def state_994178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 209 else 173)))
def hex_994178 : String := "C6"
theorem cover_994178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_994178)
  decide +kernel
#print axioms cover_994178

def state_994179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 109) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 86)))
def hex_994179 : String := "424006434407C64406C640434405C64406C6434442414005070505C644420705C6"
theorem cover_994179 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994179 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_994179)
  decide +kernel
#print axioms cover_994179

def state_994212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 87)))
def hex_994212 : String := "C6"
theorem cover_994212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994212 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_994212)
  decide +kernel
#print axioms cover_994212

def state_994216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 105 else 86)))
def hex_994216 : String := "400643444108060808"
theorem cover_994216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_994216)
  decide +kernel
#print axioms cover_994216

def state_994226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 108) else (if j.val < 3 then 71 else (if j.val < 4 then 105 else 86)))
def hex_994226 : String := "434441424006430906400909420606C64441420609064142060906"
theorem cover_994226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_994226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_994226)
  decide +kernel
#print axioms cover_994226
end Mub6.Numerical.CircleFullD0.Forest
