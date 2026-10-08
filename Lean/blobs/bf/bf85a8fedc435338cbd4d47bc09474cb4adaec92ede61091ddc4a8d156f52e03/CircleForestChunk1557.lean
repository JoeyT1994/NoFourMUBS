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
def state_2247178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 75 else 103) else (if j.val < 3 then 77 else (if j.val < 4 then 191 else 97)))
def hex_2247178 : String := "44410942404344410505050543444109420508094441090505400843444107080944080909"
theorem cover_2247178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247178 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_2247178)
  decide +kernel
#print axioms cover_2247178

def state_2247216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 47 else 48)))
def hex_2247216 : String := "43440641064240064306060606"
theorem cover_2247216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247216 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2247216)
  decide +kernel
#print axioms cover_2247216

def state_2247231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 96)))
def hex_2247231 : String := "41054240440643410505064405430541050505"
theorem cover_2247231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247231 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2247231)
  decide +kernel
#print axioms cover_2247231

def state_2247251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 102) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 97)))
def hex_2247251 : String := "4240060706"
theorem cover_2247251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247251 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2247251)
  decide +kernel
#print axioms cover_2247251

def state_2247256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 103) else (if j.val < 3 then 39 else (if j.val < 4 then 94 else 97)))
def hex_2247256 : String := "424043444106420A0641420906420A400608444106084106424008430A080843440541070A4441074240430A08070741074240430A44410708090707400607"
theorem cover_2247256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_2247256)
  decide +kernel
#print axioms cover_2247256

def state_2247319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 39 else (if j.val < 4 then 95 else 48)))
def hex_2247319 : String := "444106424006CF0641074240434406410608440641060843444107424008070741074240434408090807074441060841074240080707400607"
theorem cover_2247319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_2247319)
  decide +kernel
#print axioms cover_2247319

def state_2247377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 47 else 49)))
def hex_2247377 : String := "09"
theorem cover_2247377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247377 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2247377)
  decide +kernel
#print axioms cover_2247377

def state_2247379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 38 else (if j.val < 4 then 47 else 49)))
def hex_2247379 : String := "40434441094205400743090909444109050509"
theorem cover_2247379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2247379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_2247379)
  decide +kernel
#print axioms cover_2247379
end Mub6.Numerical.CircleFullD0.Forest
