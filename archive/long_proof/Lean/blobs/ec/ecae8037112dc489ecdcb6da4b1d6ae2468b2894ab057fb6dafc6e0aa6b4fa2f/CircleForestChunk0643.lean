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
def state_1343236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 38 else 48)))
def hex_1343236 : String := "4044424109070742414307400709070744094241090707"
theorem cover_1343236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343236 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1343236)
  decide +kernel
#print axioms cover_1343236

def state_1343259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 39 else 48)))
def hex_1343259 : String := "4044424143090543090909424143400509054307400544094241050705410907440942410943090909"
theorem cover_1343259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343259 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1343259)
  decide +kernel
#print axioms cover_1343259

def state_1343301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 49)))
def hex_1343301 : String := "42434044410A42080A0A0A4044410A420A0A0A0A43404441064243074006090606444109094106420A064005444109420A094106420A06"
theorem cover_1343301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343301 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1343301)
  decide +kernel
#print axioms cover_1343301

def state_1343357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 19 else 49)))
def hex_1343357 : String := "4340084441420843050A0508404441420843084005444105080508084441420A430A0A4208430840084406084142080A08"
theorem cover_1343357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343357 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1343357)
  decide +kernel
#print axioms cover_1343357

def state_1343407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 38 else 49)))
def hex_1343407 : String := "4007444241430509070707"
theorem cover_1343407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1343407)
  decide +kernel
#print axioms cover_1343407

def state_1343419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 62 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 39 else 49)))
def hex_1343419 : String := "444241434005444241090707070543074005444208050541050742414307050707"
theorem cover_1343419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1343419)
  decide +kernel
#print axioms cover_1343419
end Mub6.Numerical.CircleFullD0.Forest
