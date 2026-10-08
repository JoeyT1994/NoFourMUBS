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
def state_2299881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 74 else (if j.val < 4 then 108 else 91)))
def hex_2299881 : String := "44404105434209054209090540410743074244400807070707"
theorem cover_2299881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2299881)
  decide +kernel
#print axioms cover_2299881

def state_2299906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 74 else (if j.val < 4 then 109 else 91)))
def hex_2299906 : String := "44404142430A060A42434409080843080841424305070542434405404105080544400805084305440507404142430708070841074243070807"
theorem cover_2299906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_2299906)
  decide +kernel
#print axioms cover_2299906

def state_2299963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 105) else (if j.val < 3 then 75 else (if j.val < 4 then 54 else 91)))
def hex_2299963 : String := "430744400A0707"
theorem cover_2299963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299963 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2299963)
  decide +kernel
#print axioms cover_2299963

def state_2299970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 52) else (if j.val < 3 then 37 else (if j.val < 4 then 55 else 45)))
def hex_2299970 : String := "444006410642434440060540064106424344050806060643440606064006410642434440064106080806434440064106080806"
theorem cover_2299970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2299970 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_2299970)
  decide +kernel
#print axioms cover_2299970

def state_2300024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 90)))
def hex_2300024 : String := "404142070907414243090743090909"
theorem cover_2300024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300024 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2300024)
  decide +kernel
#print axioms cover_2300024

def state_2300040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
def hex_2300040 : String := "414243090743090809"
theorem cover_2300040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300040 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2300040)
  decide +kernel
#print axioms cover_2300040

def state_2300049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 54 else 91)))
def hex_2300049 : String := "41424344090644400709400841420643060806434440090640414306090606444009414209090940084142430608430808084209430609"
theorem cover_2300049 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300049 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2300049)
  decide +kernel
#print axioms cover_2300049

def state_2300104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 55 else 45)))
def hex_2300104 : String := "44400741434207440740070907074005414342440705080808"
theorem cover_2300104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2300104 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2300104)
  decide +kernel
#print axioms cover_2300104
end Mub6.Numerical.CircleFullD0.Forest
