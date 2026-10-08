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
def state_372521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 10 else 11)))
def hex_372521 : String := "444309094340094244090509404244094105430540094205090942444107430808410743064042064409050644090A"
theorem cover_372521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_372521)
  decide +kernel
#print axioms cover_372521

def state_372568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 10 else 11)))
def hex_372568 : String := "4443094009084340094241060609404241440843094009420809080942414408430608084144094309094408430909"
theorem cover_372568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 47) (hex := hex_372568)
  decide +kernel
#print axioms cover_372568

def state_372616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
def hex_372616 : String := "404241060506420841434406400607064308440505"
theorem cover_372616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_372616)
  decide +kernel
#print axioms cover_372616

def state_372638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
def hex_372638 : String := "424143440A0A0A0A4143440642400A44414309064309064143050A0A400644060906434409420A070A"
theorem cover_372638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372638 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_372638)
  decide +kernel
#print axioms cover_372638

def state_372680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 11)))
def hex_372680 : String := "4143440840420A444107084143050A0A42074407074407400A0743080A"
theorem cover_372680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372680 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_372680)
  decide +kernel
#print axioms cover_372680

def state_372712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 22)))
def hex_372712 : String := "40424143440640060706430806094207410743094406400607"
theorem cover_372712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_372712)
  decide +kernel
#print axioms cover_372712

def state_372740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 46)))
def hex_372740 : String := "414340424407410543050A09074042070607434009420809400A4208440641434006070608"
theorem cover_372740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372740 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_372740)
  decide +kernel
#print axioms cover_372740
end Mub6.Numerical.CircleFullPrototype.Forest
