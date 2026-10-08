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
def state_1467648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 21)))
def hex_1467648 : String := "44414340064205050643400A4244080A0A4042060A4244074106070A414340064206050643400A42440A0A0A400642444106430A064106430A06440A0A"
theorem cover_1467648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467648 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1467648)
  decide +kernel
#print axioms cover_1467648

def state_1467709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 21)))
def hex_1467709 : String := "40064244410607410643060644410643400642064406060606"
theorem cover_1467709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467709 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_1467709)
  decide +kernel
#print axioms cover_1467709

def state_1467736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
def hex_1467736 : String := "420744070A"
theorem cover_1467736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467736 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1467736)
  decide +kernel
#print axioms cover_1467736

def state_1467742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 21)))
def hex_1467742 : String := "4407414340420744070A420744074143400942830A4042070A420744070A4309070707"
theorem cover_1467742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467742 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_1467742)
  decide +kernel
#print axioms cover_1467742

def state_1467777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 21)))
def hex_1467777 : String := "444143400942070807074143400A4244090A0A400A42440741430A400642070A430A070A43094007420709"
theorem cover_1467777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467777 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 43) (hex := hex_1467777)
  decide +kernel
#print axioms cover_1467777

def state_1467820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 21)))
def hex_1467820 : String := "4007420744074143404206064207440741060A0707"
theorem cover_1467820 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467820 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 21) (hex := hex_1467820)
  decide +kernel
#print axioms cover_1467820

def state_1467842 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 20)))
def hex_1467842 : String := "4143400A42410A0A0A40424106070A424144430806064407430A07410A0A4309400742070A"
theorem cover_1467842 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467842 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1467842)
  decide +kernel
#print axioms cover_1467842
end Mub6.Numerical.CircleFullD0.Forest
