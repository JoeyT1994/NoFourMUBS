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
def state_972983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 13)))
def hex_972983 : String := "4344420808424042410505414305054344080505074042410843440840060A084108434406060842074107430A074407420707"
theorem cover_972983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 51) (hex := hex_972983)
  decide +kernel
#print axioms cover_972983

def state_973036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 26)))
def hex_973036 : String := "4240410808074008410707"
theorem cover_973036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973036 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_973036)
  decide +kernel
#print axioms cover_973036

def state_973050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
def hex_973050 : String := "42434440080705054344084041054205434408050541054205430A05440805"
theorem cover_973050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973050 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 31) (hex := hex_973050)
  decide +kernel
#print axioms cover_973050

def state_973082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 56 else (if j.val < 4 then 20 else 27)))
def hex_973082 : String := "43444041080841080605440605"
theorem cover_973082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973082 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_973082)
  decide +kernel
#print axioms cover_973082

def state_973096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 57 else (if j.val < 4 then 40 else 27)))
def hex_973096 : String := "444008410808404142054344080505424344080505434408074408054142430505434408400505440805424344400808050543440840414205090909440805"
theorem cover_973096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_973096)
  decide +kernel
#print axioms cover_973096

def state_973159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 57 else (if j.val < 4 then 41 else 27)))
def hex_973159 : String := "44084005410505"
theorem cover_973159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973159 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_973159)
  decide +kernel
#print axioms cover_973159

def state_973167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 42) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
def hex_973167 : String := "420743440740410542050A0707"
theorem cover_973167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973167 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_973167)
  decide +kernel
#print axioms cover_973167

def state_973180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 27)))
def hex_973180 : String := "42434406404105060606434440410706064041424344070505430A0742434406400506054309440605410742060944064041050506"
theorem cover_973180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_973180 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 53) (hex := hex_973180)
  decide +kernel
#print axioms cover_973180
end Mub6.Numerical.CircleFullD0.Forest
