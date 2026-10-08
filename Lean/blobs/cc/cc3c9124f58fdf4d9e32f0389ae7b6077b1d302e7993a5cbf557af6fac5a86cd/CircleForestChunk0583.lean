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
def state_1328763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 32) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 46)))
def hex_1328763 : String := "444043094208084342414440080640084306084406090942410A05410A440940080A4043080843424108444008060841080942410844080808"
theorem cover_1328763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328763 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 57) (hex := hex_1328763)
  decide +kernel
#print axioms cover_1328763

def state_1328820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 33) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 46)))
def hex_1328820 : String := "444009430642050940430905434241440540050605064205414409400843060805"
theorem cover_1328820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1328820)
  decide +kernel
#print axioms cover_1328820

def state_1328853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 57 else (if j.val < 4 then 44 else 46)))
def hex_1328853 : String := "4144094008430942080509"
theorem cover_1328853 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328853 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1328853)
  decide +kernel
#print axioms cover_1328853

def state_1328864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 45 else 46)))
def hex_1328864 : String := "42414440070A40080A05414440070A40080A4407400743424108070907"
theorem cover_1328864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328864 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_1328864)
  decide +kernel
#print axioms cover_1328864

def state_1328894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 44 else 46)))
def hex_1328894 : String := "4241444043060A06404342414406070606420A0A43060A440640430642414405400506050606414406404305420A050606"
theorem cover_1328894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328894 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1328894)
  decide +kernel
#print axioms cover_1328894

def state_1328943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 16) else (if j.val < 3 then 28 else (if j.val < 4 then 45 else 46)))
def hex_1328943 : String := "42410A440A43400A0A0A410A440A43400A060A"
theorem cover_1328943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328943 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1328943)
  decide +kernel
#print axioms cover_1328943

def state_1328965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 16) else (if j.val < 3 then 56 else (if j.val < 4 then 44 else 47)))
def hex_1328965 : String := "4144400843420808080844404309084342414440054306050805094205410805400843420808420508"
theorem cover_1328965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1328965 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1328965)
  decide +kernel
#print axioms cover_1328965
end Mub6.Numerical.CircleFullD0.Forest
