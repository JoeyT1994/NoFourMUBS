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
def state_944468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 52)))
def hex_944468 : String := "4244084143400842080808434008080844084143080808"
theorem cover_944468 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944468 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_944468)
  decide +kernel
#print axioms cover_944468

def state_944491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 52)))
def hex_944491 : String := "42444107074143404207440707070743404207080707444108084143404208080A400807434042080809400807"
theorem cover_944491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944491 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_944491)
  decide +kernel
#print axioms cover_944491

def state_944536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 52)))
def hex_944536 : String := "4042440841050808424407074407410708"
theorem cover_944536 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944536 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_944536)
  decide +kernel
#print axioms cover_944536

def state_944554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 53)))
def hex_944554 : String := "43404205050A05"
theorem cover_944554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944554 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_944554)
  decide +kernel
#print axioms cover_944554

def state_944564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
def hex_944564 : String := "4441434005424405050605434006424441430608434006080841060644410608064042054405054244410507054408054105430605"
theorem cover_944564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944564 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_944564)
  decide +kernel
#print axioms cover_944564

def state_944617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
def hex_944617 : String := "444106430640064244080644080606"
theorem cover_944617 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944617 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 15) (hex := hex_944617)
  decide +kernel
#print axioms cover_944617

def state_944633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 41) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
def hex_944633 : String := "4441430A05434042440741070744410A43400607070A42070A404207440741050707410A430A404205050A"
theorem cover_944633 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944633 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_944633)
  decide +kernel
#print axioms cover_944633

def state_944676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
def hex_944676 : String := "44410A43404244410A43060806060A4042444107074105430A0744080A42070A0A"
theorem cover_944676 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944676 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_944676)
  decide +kernel
#print axioms cover_944676
end Mub6.Numerical.CircleFullD0.Forest
