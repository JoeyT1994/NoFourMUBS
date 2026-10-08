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
def state_2291019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 91)))
def hex_2291019 : String := "41400A43080A404342440A0A0A0A4308424441400608400A08410A400A43080A4441060A0A"
theorem cover_2291019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291019 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2291019)
  decide +kernel
#print axioms cover_2291019

def state_2291056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 45)))
def hex_2291056 : String := "43084208440841084043084208440841084043080A0808"
theorem cover_2291056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_2291056)
  decide +kernel
#print axioms cover_2291056

def state_2291081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 22)))
def hex_2291081 : String := "444043420606064308420606404342410644074006430806410644060606430842410644400643080640064308064106440606"
theorem cover_2291081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2291081)
  decide +kernel
#print axioms cover_2291081

def state_2291133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 44)))
def hex_2291133 : String := "400743420741080707"
theorem cover_2291133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2291133)
  decide +kernel
#print axioms cover_2291133

def state_2291143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 45)))
def hex_2291143 : String := "43420744074140064342074407410607060707"
theorem cover_2291143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_2291143)
  decide +kernel
#print axioms cover_2291143

def state_2291163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 54 else 45)))
def hex_2291163 : String := "4244410807414043070708074441404308070840070841404308420744410607410640064307060840430707430842074407410807"
theorem cover_2291163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2291163 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2291163)
  decide +kernel
#print axioms cover_2291163
end Mub6.Numerical.CircleFullD0.Forest
