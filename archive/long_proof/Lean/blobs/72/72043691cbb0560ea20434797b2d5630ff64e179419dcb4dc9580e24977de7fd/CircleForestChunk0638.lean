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
def state_392029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
def hex_392029 : String := "414340424405050742064441080606094307400509"
theorem cover_392029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392029 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_392029)
  decide +kernel
#print axioms cover_392029

def state_392054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_392054 : String := "444241434044420808074442080808084340074442070707400744424108070807410843400709084241080708"
theorem cover_392054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392054 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_392054)
  decide +kernel
#print axioms cover_392054

def state_392099 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
def hex_392099 : String := "44424143440A0808434440424309414405080909064042070706444042410843050505050841084344050805420808"
theorem cover_392099 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392099 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_392099)
  decide +kernel
#print axioms cover_392099

def state_392146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
def hex_392146 : String := "400808"
theorem cover_392146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392146 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_392146)
  decide +kernel
#print axioms cover_392146

def state_392149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
def hex_392149 : String := "434044420707074442434144090606414405400742430505054405074309054207074044420A41080707444241434405400805080A054241080708"
theorem cover_392149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392149 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_392149)
  decide +kernel
#print axioms cover_392149

def state_392208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
def hex_392208 : String := "410807"
theorem cover_392208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_392208)
  decide +kernel
#print axioms cover_392208

def state_392216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 12)))
def hex_392216 : String := "4440414342444006060644400606064209444009070943064209444041430609060606414306420707064041090606"
theorem cover_392216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_392216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_392216)
  decide +kernel
#print axioms cover_392216
end Mub6.Numerical.CircleFullPrototype.Forest
