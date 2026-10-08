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
def state_68912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 4)))
def hex_68912 : String := "444041090941090940414306090641430809430509"
theorem cover_68912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68912 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 21) (hex := hex_68912)
  decide +kernel
#print axioms cover_68912

def state_68934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 8)))
def hex_68934 : String := "4041430709430A094107430509"
theorem cover_68934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 13) (hex := hex_68934)
  decide +kernel
#print axioms cover_68934

def state_68950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 9)))
def hex_68950 : String := "42444006090644074041434206074206070641074342060A42064407400641074305420505"
theorem cover_68950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68950 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_68950)
  decide +kernel
#print axioms cover_68950

def state_68987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 9)))
def hex_68987 : String := "42440940060944400907404143420644074006070943420644090609414342090709434209440740414306060641070909"
theorem cover_68987 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68987 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_68987)
  decide +kernel
#print axioms cover_68987

def state_69036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 9)))
def hex_69036 : String := "434206440A400641430542060A0542440906444009094006434142064409400643050642060A09"
theorem cover_69036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69036 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_69036)
  decide +kernel
#print axioms cover_69036

def state_69076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 9)))
def hex_69076 : String := "4342440708440741074043054208070542440941090944074107434042094407410743050742080709"
theorem cover_69076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69076 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_69076)
  decide +kernel
#print axioms cover_69076

def state_69117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 9)))
def hex_69117 : String := "43420544050542440909440943404142094405050505400909"
theorem cover_69117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69117 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_69117)
  decide +kernel
#print axioms cover_69117
end Mub6.Numerical.CircleFullPrototype.Forest
