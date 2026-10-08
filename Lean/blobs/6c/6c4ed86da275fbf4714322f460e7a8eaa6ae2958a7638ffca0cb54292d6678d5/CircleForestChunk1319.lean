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
def state_1617144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
def hex_1617144 : String := "444042434441400505094140420905090909434405060542090A4042434144404209060940060944404208060940060906064209430A09"
theorem cover_1617144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1617144)
  decide +kernel
#print axioms cover_1617144

def state_1617199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
def hex_1617199 : String := "4440420906094042090609"
theorem cover_1617199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617199 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1617199)
  decide +kernel
#print axioms cover_1617199

def state_1617210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 31 else 24)))
def hex_1617210 : String := "4144400609400609440909"
theorem cover_1617210 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617210 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_1617210)
  decide +kernel
#print axioms cover_1617210

def state_1617221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 24)))
def hex_1617221 : String := "43414440050A40060A44400642090640064243410A440909060606"
theorem cover_1617221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617221 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_1617221)
  decide +kernel
#print axioms cover_1617221

def state_1617249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 25)))
def hex_1617249 : String := "4341404442434144400609074440060907060607444209430A0642054307064044420906074442090905414006440906400609"
theorem cover_1617249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 51) (hex := hex_1617249)
  decide +kernel
#print axioms cover_1617249

def state_1617300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 29 else (if j.val < 4 then 15 else 25)))
def hex_1617300 : String := "434140060A4006444243410840060806060706"
theorem cover_1617300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_1617300)
  decide +kernel
#print axioms cover_1617300

def state_1617319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
def hex_1617319 : String := "41440A42430A4041080A0808444209430A40410A090742434041440905050909430A4041064406060A"
theorem cover_1617319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1617319)
  decide +kernel
#print axioms cover_1617319

def state_1617360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
def hex_1617360 : String := "4340410A4443084241084440060840060806070A40060A"
theorem cover_1617360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 23) (hex := hex_1617360)
  decide +kernel
#print axioms cover_1617360
end Mub6.Numerical.CircleFullD0.Forest
