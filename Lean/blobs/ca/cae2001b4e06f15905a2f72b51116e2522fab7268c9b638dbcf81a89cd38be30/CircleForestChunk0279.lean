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
def state_1004338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 110) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 89)))
def hex_1004338 : String := "4240444341080A080808404443424140444306070606400A44430608430608410640440A06064241080A41080A4342410640070606420841060A4443060806"
theorem cover_1004338 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004338 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_1004338)
  decide +kernel
#print axioms cover_1004338

def state_1004402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 111) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 89)))
def hex_1004402 : String := "400A4443414207400908070A4341080908"
theorem cover_1004402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004402 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1004402)
  decide +kernel
#print axioms cover_1004402

def state_1004420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 111) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 89)))
def hex_1004420 : String := "444341420A400544050A0A0A43410A0A0A"
theorem cover_1004420 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004420 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1004420)
  decide +kernel
#print axioms cover_1004420

def state_1004437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 111) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 89)))
def hex_1004437 : String := "44434142404409430609060609414240080840440A0A0609434142404443060806060642094044090606414208060A"
theorem cover_1004437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004437 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_1004437)
  decide +kernel
#print axioms cover_1004437

def state_1004484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 107 else 89)))
def hex_1004484 : String := "414208400808420A400A444341080A0808"
theorem cover_1004484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004484 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1004484)
  decide +kernel
#print axioms cover_1004484

def state_1004501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 44)))
def hex_1004501 : String := "4443414240440708074044430607060607410807434142080642404407080740444341060741060743064106090608"
theorem cover_1004501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_1004501)
  decide +kernel
#print axioms cover_1004501

def state_1004549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 37 else (if j.val < 4 then 53 else 44)))
def hex_1004549 : String := "404443064241064044434241064044080606060843060806060606"
theorem cover_1004549 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004549 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 27) (hex := hex_1004549)
  decide +kernel
#print axioms cover_1004549

def state_1004579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 37 else (if j.val < 4 then 106 else 88)))
def hex_1004579 : String := "4241404443050543064241060505060505"
theorem cover_1004579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1004579 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_1004579)
  decide +kernel
#print axioms cover_1004579
end Mub6.Numerical.CircleFullD0.Forest
