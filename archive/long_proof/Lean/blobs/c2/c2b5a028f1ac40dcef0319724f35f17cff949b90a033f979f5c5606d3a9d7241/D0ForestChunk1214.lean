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
def state_1591738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 49)))
def hex_1591738 : String := "4143440942400A41070A094409420A09434442400806400941060642400A41060640410943090941430609430644060A44420A4005410509420A400A41090A"
theorem cover_1591738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591738 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1591738)
  decide +kernel
#print axioms cover_1591738

def state_1591801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 29 else 49)))
def hex_1591801 : String := "41434406420607440742074009074306444206404107060642400A06404143070A43060A07"
theorem cover_1591801 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591801 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1591801)
  decide +kernel
#print axioms cover_1591801

def state_1591839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 49)))
def hex_1591839 : String := "410943440942400941090909440542400541090905"
theorem cover_1591839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591839 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 21) (hex := hex_1591839)
  decide +kernel
#print axioms cover_1591839

def state_1591860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 49)))
def hex_1591860 : String := "4143090943444206094240410906064009084442400907094240410943094409420A094107430607400909"
theorem cover_1591860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591860 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1591860)
  decide +kernel
#print axioms cover_1591860

def state_1591909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 56 else 50)))
def hex_1591909 : String := "4140094244094308090940424409434109094109090942444309094341094009424406050941094009424409430509094409430909"
theorem cover_1591909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591909 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 53) (hex := hex_1591909)
  decide +kernel
#print axioms cover_1591909

def state_1591962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 57 else 50)))
def hex_1591962 : String := "41400909404244090A094244094341094009420A090A4409430909"
theorem cover_1591962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591962 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1591962)
  decide +kernel
#print axioms cover_1591962
end Mub6.Numerical.CircleFullD0.Forest
