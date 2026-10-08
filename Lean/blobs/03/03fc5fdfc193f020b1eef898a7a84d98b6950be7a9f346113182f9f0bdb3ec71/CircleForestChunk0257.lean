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
def state_137085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
def hex_137085 : String := "4243444009410709074440410606414206444307060642444309060644434006410609060640064106064307444042060642410744430706060807"
theorem cover_137085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_137085)
  decide +kernel
#print axioms cover_137085

def state_137144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 14)))
def hex_137144 : String := "4209434440094108090844404142060505414244430906060842090509"
theorem cover_137144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_137144)
  decide +kernel
#print axioms cover_137144

def state_137173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 15)))
def hex_137173 : String := "4009410709"
theorem cover_137173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137173 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_137173)
  decide +kernel
#print axioms cover_137173

def state_137180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_137180 : String := "414244084306060A42080A"
theorem cover_137180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137180 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_137180)
  decide +kernel
#print axioms cover_137180

def state_137192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
def hex_137192 : String := "4244084340414205064206440806410542054408430505400808440A43400A42410A440A43400642050A060A0A"
theorem cover_137192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_137192)
  decide +kernel
#print axioms cover_137192

def state_137238 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
def hex_137238 : String := "4408434008414208440843400608060808"
theorem cover_137238 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137238 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_137238)
  decide +kernel
#print axioms cover_137238

def state_137256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 12)))
def hex_137256 : String := "43400A410A0808"
theorem cover_137256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137256 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_137256)
  decide +kernel
#print axioms cover_137256

def state_137265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
def hex_137265 : String := "410A424408060A"
theorem cover_137265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137265 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_137265)
  decide +kernel
#print axioms cover_137265

def state_137273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 14 else 13)))
def hex_137273 : String := "424443400A410A0708434041060641420643440A060642434407060643444006410607060640064106060A"
theorem cover_137273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_137273 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_137273)
  decide +kernel
#print axioms cover_137273
end Mub6.Numerical.CircleFullPrototype.Forest
