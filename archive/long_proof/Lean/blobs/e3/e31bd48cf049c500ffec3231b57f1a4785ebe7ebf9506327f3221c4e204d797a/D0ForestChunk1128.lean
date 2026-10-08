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
def state_1571266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 26 else 51)))
def hex_1571266 : String := "434008414244080A4443400841420A44434005090AD042084408080A43400841D042084408080A420844080840080A"
theorem cover_1571266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571266 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 47) (hex := hex_1571266)
  decide +kernel
#print axioms cover_1571266

def state_1571313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 17) else (if j.val < 3 then 23 else (if j.val < 4 then 26 else 25)))
def hex_1571313 : String := "42084408430808"
theorem cover_1571313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571313 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1571313)
  decide +kernel
#print axioms cover_1571313

def state_1571322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 46 else (if j.val < 4 then 26 else 25)))
def hex_1571322 : String := "4443400A060A43400A050A"
theorem cover_1571322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571322 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1571322)
  decide +kernel
#print axioms cover_1571322

def state_1571334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 47 else (if j.val < 4 then 26 else 50)))
def hex_1571334 : String := "4340414244060A4443060743404142060906060A420644064306400A0606400A41074207440607"
theorem cover_1571334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 39) (hex := hex_1571334)
  decide +kernel
#print axioms cover_1571334

def state_1571377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 94 else (if j.val < 4 then 52 else 51)))
def hex_1571377 : String := "4443400A060A43400A050A"
theorem cover_1571377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571377 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1571377)
  decide +kernel
#print axioms cover_1571377

def state_1571389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 95 else (if j.val < 4 then 52 else 102)))
def hex_1571389 : String := "434041420A44434009060AD04244060A4443060A434041D006060A41420644060706400A0A"
theorem cover_1571389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571389 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1571389)
  decide +kernel
#print axioms cover_1571389

def state_1571426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 32) else (if j.val < 3 then 95 else (if j.val < 4 then 52 else 103)))
def hex_1571426 : String := "434041D042440A43090844434041D00841D0420544064305050A434041D00841D005400A0A41D042440505444306400A05430505400A0A"
theorem cover_1571426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1571426 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 55) (hex := hex_1571426)
  decide +kernel
#print axioms cover_1571426
end Mub6.Numerical.CircleFullD0.Forest
