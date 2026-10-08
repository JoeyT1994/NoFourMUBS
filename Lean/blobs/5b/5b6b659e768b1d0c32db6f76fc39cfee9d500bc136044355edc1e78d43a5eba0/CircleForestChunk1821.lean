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
def state_2310208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 56 else 45)))
def hex_2310208 : String := "4240444105054143050943420A44050A420A440A0A440541050A40440541054307424405070705"
theorem cover_2310208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310208 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2310208)
  decide +kernel
#print axioms cover_2310208

def state_2310247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 52) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 45)))
def hex_2310247 : String := "4240444105430A06410943420A440A0808440541050A40444105430506410643424406080606440509"
theorem cover_2310247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2310247)
  decide +kernel
#print axioms cover_2310247

def state_2310290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 36 else (if j.val < 4 then 56 else 45)))
def hex_2310290 : String := "4044410A0A410A0A0A"
theorem cover_2310290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_2310290)
  decide +kernel
#print axioms cover_2310290

def state_2310300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 45)))
def hex_2310300 : String := "44414305424044050A050543420A4044050A05420A40440A0A0A414342440A0A44050742440A40080A44404108080540080743420A440A0A420A4440080A08"
theorem cover_2310300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310300 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2310300)
  decide +kernel
#print axioms cover_2310300

def state_2310363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 37 else (if j.val < 4 then 56 else 45)))
def hex_2310363 : String := "4441050A410A0A"
theorem cover_2310363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_2310363)
  decide +kernel
#print axioms cover_2310363

def state_2310370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 18 else (if j.val < 4 then 57 else 45)))
def hex_2310370 : String := "424044410A0A410A080A404441434240440A080A40440506054240060A0643420A4044410808080A42080841434208080843080844410A0A41430A0A0A"
theorem cover_2310370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310370 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2310370)
  decide +kernel
#print axioms cover_2310370

def state_2310432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 29 else 22)))
def hex_2310432 : String := "4441064207064106420808"
theorem cover_2310432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2310432 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_2310432)
  decide +kernel
#print axioms cover_2310432
end Mub6.Numerical.CircleFullD0.Forest
