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
def state_293969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
def hex_293969 : String := "4440084142430808080840074142060706"
theorem cover_293969 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293969 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 17) (hex := hex_293969)
  decide +kernel
#print axioms cover_293969

def state_293986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_293986 : String := "44404142434408080A0A0A414243444142400643080A0808414206400743070907440A41090A0A4243060A0A40410907414244430609060707"
theorem cover_293986 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293986 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_293986)
  decide +kernel
#print axioms cover_293986

def state_294043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_294043 : String := "43440708440A07"
theorem cover_294043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_294043)
  decide +kernel
#print axioms cover_294043

def state_294050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
def hex_294050 : String := "42430744070608"
theorem cover_294050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294050 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_294050)
  decide +kernel
#print axioms cover_294050

def state_294062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_294062 : String := "424340440808094044414243084008440807080841420707074441420943074044060706094142070707434008440841050840444142080707074441060707"
theorem cover_294062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294062 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_294062)
  decide +kernel
#print axioms cover_294062

def state_294125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_294125 : String := "42430807430807"
theorem cover_294125 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294125 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_294125)
  decide +kernel
#print axioms cover_294125

def state_294132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_294132 : String := "4142434440070707074344400541050805074243440706074344084006430506440707"
theorem cover_294132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_294132)
  decide +kernel
#print axioms cover_294132

def state_294173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 8)))
def hex_294173 : String := "41424043440808440A410A054344414205430805054142054307050505400A43440A414243070A06070A42050A"
theorem cover_294173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_294173)
  decide +kernel
#print axioms cover_294173
end Mub6.Numerical.CircleFullPrototype.Forest
