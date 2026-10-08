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
def state_2565070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 63 else (if j.val < 4 then 55 else 46)))
def hex_2565070 : String := "44410840430842440A410A0744414009080A41090A0841400908404308424441090A41094005090943060A"
theorem cover_2565070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565070 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_2565070)
  decide +kernel
#print axioms cover_2565070

def state_2565113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
def hex_2565113 : String := "4306424440070640414306070506444041430A07070A4041434206440606420A440A050606"
theorem cover_2565113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565113 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_2565113)
  decide +kernel
#print axioms cover_2565113

def state_2565150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 46)))
def hex_2565150 : String := "410806"
theorem cover_2565150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565150 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_2565150)
  decide +kernel
#print axioms cover_2565150

def state_2565153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 27 else 47)))
def hex_2565153 : String := "4041430842444140430809084043060506410906444109404308090909430642064440050605410806"
theorem cover_2565153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565153 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 41) (hex := hex_2565153)
  decide +kernel
#print axioms cover_2565153

def state_2565194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
def hex_2565194 : String := "4108444305420A0506"
theorem cover_2565194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565194 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_2565194)
  decide +kernel
#print axioms cover_2565194

def state_2565203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
def hex_2565203 : String := "4306444240070640414307070741050642064044414306420740070A060606"
theorem cover_2565203 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565203 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_2565203)
  decide +kernel
#print axioms cover_2565203

def state_2565235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
def hex_2565235 : String := "4007410507"
theorem cover_2565235 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565235 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2565235)
  decide +kernel
#print axioms cover_2565235

def state_2565243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 10)))
def hex_2565243 : String := "4207434140064405060706"
theorem cover_2565243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565243 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2565243)
  decide +kernel
#print axioms cover_2565243

def state_2565258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 22)))
def hex_2565258 : String := "400742430707434144074006434207410607060707"
theorem cover_2565258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565258 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 21) (hex := hex_2565258)
  decide +kernel
#print axioms cover_2565258

def state_2565280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 23)))
def hex_2565280 : String := "4207434144064305050706"
theorem cover_2565280 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565280 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 11) (hex := hex_2565280)
  decide +kernel
#print axioms cover_2565280

def state_2565295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 46)))
def hex_2565295 : String := "40074243070743414407400742074307070707"
theorem cover_2565295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565295 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 19) (hex := hex_2565295)
  decide +kernel
#print axioms cover_2565295

def state_2565315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 48) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 47)))
def hex_2565315 : String := "4207430707"
theorem cover_2565315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2565315 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_2565315)
  decide +kernel
#print axioms cover_2565315
end Mub6.Numerical.CircleFullD0.Forest
