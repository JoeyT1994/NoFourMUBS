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
def state_1027135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 50)))
def hex_1027135 : String := "424140440707064044434241074007444307050707420A0A4307420A0744434241060606424106400A0606434241060606424106400A06064106400706"
theorem cover_1027135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027135 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1027135)
  decide +kernel
#print axioms cover_1027135

def state_1027196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 50)))
def hex_1027196 : String := "424140440A074443060606400A4443420A060A43420806084106400A06"
theorem cover_1027196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1027196)
  decide +kernel
#print axioms cover_1027196

def state_1027225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 51)))
def hex_1027225 : String := "43424107404407074443424106060642080643070807424108400A084106400706"
theorem cover_1027225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1027225)
  decide +kernel
#print axioms cover_1027225

def state_1027259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1027259 : String := "4443420A050A4342414007440A070A050A"
theorem cover_1027259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1027259)
  decide +kernel
#print axioms cover_1027259

def state_1027281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 50)))
def hex_1027281 : String := "44434241400544050A05050A4342414007440A070A050A"
theorem cover_1027281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1027281)
  decide +kernel
#print axioms cover_1027281

def state_1027305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 100)))
def hex_1027305 : String := "43424140440943090909094106054241400A090905"
theorem cover_1027305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027305 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1027305)
  decide +kernel
#print axioms cover_1027305

def state_1027327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 62) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 101)))
def hex_1027327 : String := "4241404443424106400A06060A43424106400706060A44060640444342090505434241400A4406060A050A440943424106090642410609064106400506"
theorem cover_1027327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1027327)
  decide +kernel
#print axioms cover_1027327
end Mub6.Numerical.CircleFullD0.Forest
