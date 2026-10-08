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
def state_1023763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 150 else (if j.val < 4 then 206 else 204)))
def hex_1023763 : String := "4140440843060644430842414006090608434241050508424140060506414044080744430542050805814006440881"
theorem cover_1023763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1023763)
  decide +kernel
#print axioms cover_1023763

def state_1023810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 151 else (if j.val < 4 then 206 else 204)))
def hex_1023810 : String := "4140084408430842414007440707080708"
theorem cover_1023810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023810 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1023810)
  decide +kernel
#print axioms cover_1023810

def state_1023828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 150 else (if j.val < 4 then 207 else 204)))
def hex_1023828 : String := "41400A4443420641400A09090A43420641400A44434205090A43050A810A40064443060681"
theorem cover_1023828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023828 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 37) (hex := hex_1023828)
  decide +kernel
#print axioms cover_1023828

def state_1023865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 151 else (if j.val < 4 then 207 else 204)))
def hex_1023865 : String := "4140440A0A4443424140080908080A434241400A44434209070A430707814107080A400A4443080981"
theorem cover_1023865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023865 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 41) (hex := hex_1023865)
  decide +kernel
#print axioms cover_1023865

def state_1023907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 206 else 205)))
def hex_1023907 : String := "424140444306064306064443420541058142054140070581430542054105818141400744430742410781070781"
theorem cover_1023907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023907 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1023907)
  decide +kernel
#print axioms cover_1023907

def state_1023952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 126) else (if j.val < 3 then 75 else (if j.val < 4 then 207 else 205)))
def hex_1023952 : String := "4241400A4443420641400A4443050505810A434205414007058108814140440A0744434241400744070781070A4342410781070A81"
theorem cover_1023952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1023952 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_1023952)
  decide +kernel
#print axioms cover_1023952
end Mub6.Numerical.CircleFullD0.Forest
