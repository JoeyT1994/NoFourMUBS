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
def state_1591527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 28 else 49)))
def hex_1591527 : String := "41434009440942410906094005440942410909094340440842080944064206410906400844420809424341400806060843410909410908"
theorem cover_1591527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591527 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_1591527)
  decide +kernel
#print axioms cover_1591527

def state_1591582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 28 else 49)))
def hex_1591582 : String := "410943400509400509"
theorem cover_1591582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591582 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1591582)
  decide +kernel
#print axioms cover_1591582

def state_1591591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 24)))
def hex_1591591 : String := "440542414340054405420A054005094340084442080542084109080805"
theorem cover_1591591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591591 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1591591)
  decide +kernel
#print axioms cover_1591591

def state_1591621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 24)))
def hex_1591621 : String := "4344424009060942404309094306070944094240410909410743070909"
theorem cover_1591621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1591621)
  decide +kernel
#print axioms cover_1591621

def state_1591651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 28 else 24)))
def hex_1591651 : String := "4442404106060640090642404143064409424041090606094306440642064043064106060606404109434406420609440942400909094143060806"
theorem cover_1591651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591651 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_1591651)
  decide +kernel
#print axioms cover_1591651

def state_1591711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 48)))
def hex_1591711 : String := "42404109434405420609440542080541070640054105430909"
theorem cover_1591711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591711 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1591711)
  decide +kernel
#print axioms cover_1591711
end Mub6.Numerical.CircleFullD0.Forest
