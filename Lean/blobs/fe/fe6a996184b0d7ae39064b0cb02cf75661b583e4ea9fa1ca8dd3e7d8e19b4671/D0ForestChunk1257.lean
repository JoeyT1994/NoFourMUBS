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
def state_1602129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 29 else 49)))
def hex_1602129 : String := "43444208400841090842400841430608084041090741434409424007060744094208074344060808440842084008414344084207070808"
theorem cover_1602129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602129 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 55) (hex := hex_1602129)
  decide +kernel
#print axioms cover_1602129

def state_1602184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 29 else 49)))
def hex_1602184 : String := "43440940094109424309440907074405400541054243070705"
theorem cover_1602184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602184 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1602184)
  decide +kernel
#print axioms cover_1602184

def state_1602209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 49)))
def hex_1602209 : String := "420843444140084208090841400742430707074007420807440841400742080708"
theorem cover_1602209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602209 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 33) (hex := hex_1602209)
  decide +kernel
#print axioms cover_1602209

def state_1602245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 58 else 49)))
def hex_1602245 : String := "4406404206414306444042060906404206410906060606"
theorem cover_1602245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602245 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 23) (hex := hex_1602245)
  decide +kernel
#print axioms cover_1602245

def state_1602269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 59 else 98)))
def hex_1602269 : String := "404208414344054005420605050842064143064406404206050606"
theorem cover_1602269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602269 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 27) (hex := hex_1602269)
  decide +kernel
#print axioms cover_1602269

def state_1602298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 42) else (if j.val < 3 then 104 else (if j.val < 4 then 59 else 99)))
def hex_1602298 : String := "4143440642064008060808"
theorem cover_1602298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602298 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_1602298)
  decide +kernel
#print axioms cover_1602298

def state_1602311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 118 else 99)))
def hex_1602311 : String := "444042080542064109064042414308080841090742419F06410A43064440080640070A"
theorem cover_1602311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602311 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 35) (hex := hex_1602311)
  decide +kernel
#print axioms cover_1602311

def state_1602346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 119 else 99)))
def hex_1602346 : String := "444008420841050540420841050742419F084143440540050A440507434408400742070708"
theorem cover_1602346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602346 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1602346)
  decide +kernel
#print axioms cover_1602346
end Mub6.Numerical.CircleFullD0.Forest
