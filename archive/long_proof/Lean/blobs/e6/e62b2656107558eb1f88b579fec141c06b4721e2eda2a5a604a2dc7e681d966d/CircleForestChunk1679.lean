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
def state_2276229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 30)))
def hex_2276229 : String := "434041084442434008084008084340410544054208050540410744074206070742084308084107444209074208430807404107444206070607"
theorem cover_2276229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_2276229)
  decide +kernel
#print axioms cover_2276229

def state_2276286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 30)))
def hex_2276286 : String := "4340410544424305070542434041054405080540410544424305060508074305070707"
theorem cover_2276286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_2276286)
  decide +kernel
#print axioms cover_2276286

def state_2276321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 27) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 31)))
def hex_2276321 : String := "42430808434041084442430808434005050A42080A410744420807084041074442430806070A07"
theorem cover_2276321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2276321)
  decide +kernel
#print axioms cover_2276321

def state_2276360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 23 else (if j.val < 4 then 23 else 15)))
def hex_2276360 : String := "40410A444243400606064340410A4409060740060642060A41074407420607"
theorem cover_2276360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_2276360)
  decide +kernel
#print axioms cover_2276360

def state_2276392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
def hex_2276392 : String := "4243090843440540050507"
theorem cover_2276392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276392 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2276392)
  decide +kernel
#print axioms cover_2276392

def state_2276404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
def hex_2276404 : String := "4344090909"
theorem cover_2276404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2276404)
  decide +kernel
#print axioms cover_2276404

def state_2276411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 14)))
def hex_2276411 : String := "4042414305054309094105430505420905"
theorem cover_2276411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_2276411)
  decide +kernel
#print axioms cover_2276411
end Mub6.Numerical.CircleFullD0.Forest
