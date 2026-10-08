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
def state_2595942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 9)))
def hex_2595942 : String := "414442434044054105054441060A41060A40054405054340050605424340444105054105054441080A4108084005084340054441050541050505440A420A0A"
theorem cover_2595942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595942 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 63) (hex := hex_2595942)
  decide +kernel
#print axioms cover_2595942

def state_2596005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 10) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 9)))
def hex_2596005 : String := "4144424306060642084344064041060806064442430A0A430A0A424341080808430A414406080A"
theorem cover_2596005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596005 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 39) (hex := hex_2596005)
  decide +kernel
#print axioms cover_2596005

def state_2596044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 12 else 9)))
def hex_2596044 : String := "43404144430942400506054342400A090942400544090A05440A0A41090940414405050541440642060644094243090A09"
theorem cover_2596044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_2596044)
  decide +kernel
#print axioms cover_2596044

def state_2596093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
def hex_2596093 : String := "444240054106430605054240410505414344060805434442080508054005410505"
theorem cover_2596093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_2596093)
  decide +kernel
#print axioms cover_2596093

def state_2596126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
def hex_2596126 : String := "4344430905434041050509400541050505"
theorem cover_2596126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596126 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 17) (hex := hex_2596126)
  decide +kernel
#print axioms cover_2596126

def state_2596143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_2596143 : String := "42434441420A0A0A4142430A400A0A430A40050A0A4405414240050A05054344054143400509050505"
theorem cover_2596143 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2596143 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_2596143)
  decide +kernel
#print axioms cover_2596143
end Mub6.Numerical.CircleFullD0.Forest
