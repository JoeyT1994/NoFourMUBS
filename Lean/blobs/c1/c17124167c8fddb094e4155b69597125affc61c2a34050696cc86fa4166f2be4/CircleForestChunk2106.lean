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
def state_2585947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 34) else (if j.val < 3 then 98 else (if j.val < 4 then 46 else 39)))
def hex_2585947 : String := "434044410808410A084441420A0A42434008090A430840080641420A4340080A0A424340084409070A430840080A400A440A0A"
theorem cover_2585947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585947 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2585947)
  decide +kernel
#print axioms cover_2585947

def state_2585998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 34) else (if j.val < 3 then 99 else (if j.val < 4 then 46 else 39)))
def hex_2585998 : String := "434008444106094142434008090A4308054243084007090840054406410543424005060505"
theorem cover_2585998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585998 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2585998)
  decide +kernel
#print axioms cover_2585998

def state_2586037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 92 else 39)))
def hex_2586037 : String := "4008444142430840080908084142430840084409074308084243080808"
theorem cover_2586037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586037 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2586037)
  decide +kernel
#print axioms cover_2586037

def state_2586066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 93 else 39)))
def hex_2586066 : String := "40444108084107074441424340080A0A43400806064243400809400844060A4308400806414243400707074340074409070742434007440907074340070907"
theorem cover_2586066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2586066)
  decide +kernel
#print axioms cover_2586066

def state_2586129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 99 else (if j.val < 4 then 46 else 39)))
def hex_2586129 : String := "4340084408094005444106094143424005090505430805"
theorem cover_2586129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586129 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_2586129)
  decide +kernel
#print axioms cover_2586129

def state_2586152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 19)))
def hex_2586152 : String := "40054441064342404405050606064143420A05054342400544410643420A060607054240050A05"
theorem cover_2586152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_2586152)
  decide +kernel
#print axioms cover_2586152
end Mub6.Numerical.CircleFullD0.Forest
