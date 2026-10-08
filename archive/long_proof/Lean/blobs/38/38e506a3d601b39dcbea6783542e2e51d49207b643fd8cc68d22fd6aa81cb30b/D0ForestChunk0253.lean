import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_998147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
def hex_998147 : String := "40434405C644074207414044054305050705430707"
theorem cover_998147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998147 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 21) (hex := hex_998147)
  decide +kernel
#print axioms cover_998147

def state_998168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 86)))
def hex_998168 : String := "41404306444105050606400543054405420705"
theorem cover_998168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998168 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 19) (hex := hex_998168)
  decide +kernel
#print axioms cover_998168

def state_998189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
def hex_998189 : String := "404443C6410642080643060806"
theorem cover_998189 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998189 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 13) (hex := hex_998189)
  decide +kernel
#print axioms cover_998189

def state_998204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 174)))
def hex_998204 : String := "43C64241404443C60843C6084407080741404443C6424108050543C6420841060544430642070606404405430542070507"
theorem cover_998204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998204 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_998204)
  decide +kernel
#print axioms cover_998204

def state_998254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 210 else 175)))
def hex_998254 : String := "C6"
theorem cover_998254 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998254 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_998254)
  decide +kernel
#print axioms cover_998254

def state_998256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 144 else (if j.val < 4 then 211 else 175)))
def hex_998256 : String := "4108404443C6420741080743C608440708"
theorem cover_998256 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998256 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_998256)
  decide +kernel
#print axioms cover_998256

def state_998273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 145 else (if j.val < 4 then 211 else 175)))
def hex_998273 : String := "4140444306080606404443C6424140440808080741050543C642410840440A0808410640054405064443C642074106054306420806"
theorem cover_998273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998273 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 53) (hex := hex_998273)
  decide +kernel
#print axioms cover_998273

def state_998326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 185 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
def hex_998326 : String := "4443424106070642074106074306420806"
theorem cover_998326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998326 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 17) (hex := hex_998326)
  decide +kernel
#print axioms cover_998326

def state_998343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 105 else 87)))
def hex_998343 : String := "41064044430542414005060505430642410640440506060606"
theorem cover_998343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998343 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_998343)
  decide +kernel
#print axioms cover_998343

def state_998368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
def hex_998368 : String := "430644424106070606"
theorem cover_998368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_998368)
  decide +kernel
#print axioms cover_998368

def state_998379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 104 else 43)))
def hex_998379 : String := "44410505414240C643440741060744074142070607054240050705"
theorem cover_998379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998379 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_998379)
  decide +kernel
#print axioms cover_998379
end Mub6.Numerical.CircleFullD0.Forest
