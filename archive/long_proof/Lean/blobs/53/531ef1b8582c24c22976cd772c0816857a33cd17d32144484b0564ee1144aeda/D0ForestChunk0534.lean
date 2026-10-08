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
def state_1316858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
def hex_1316858 : String := "434441420706060744414205444006430641420506054043060843410706414205444006430608080505414207400843070808"
theorem cover_1316858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316858 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 51) (hex := hex_1316858)
  decide +kernel
#print axioms cover_1316858

def state_1316910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 24 else 12)))
def hex_1316910 : String := "07"
theorem cover_1316910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316910 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1316910)
  decide +kernel
#print axioms cover_1316910

def state_1316914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 16 else (if j.val < 4 then 25 else 24)))
def hex_1316914 : String := "400507"
theorem cover_1316914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316914 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 2) (count := 3) (hex := hex_1316914)
  decide +kernel
#print axioms cover_1316914

def state_1316919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
def hex_1316919 : String := "434142074406400607064142054440090A40434142060606090A05"
theorem cover_1316919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316919 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 27) (hex := hex_1316919)
  decide +kernel
#print axioms cover_1316919

def state_1316946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 30) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 49)))
def hex_1316946 : String := "4307414207404443414207070741420509054307084443070A430741420740070742050742054005440505"
theorem cover_1316946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316946 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_1316946)
  decide +kernel
#print axioms cover_1316946

def state_1316989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
def hex_1316989 : String := "44434107070A430741420740440A43070A0A0A"
theorem cover_1316989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316989 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 19) (hex := hex_1316989)
  decide +kernel
#print axioms cover_1316989

def state_1317008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 31) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
def hex_1317008 : String := "42054005440505"
theorem cover_1317008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317008 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1317008)
  decide +kernel
#print axioms cover_1317008

def state_1317015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 25)))
def hex_1317015 : String := "414207404307444142070707070707"
theorem cover_1317015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317015 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1317015)
  decide +kernel
#print axioms cover_1317015

def state_1317031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
def hex_1317031 : String := "4344060A444241440640064306424144064006430608060606064241400A430A444208410A060840064306440608410A06"
theorem cover_1317031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1317031 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 13) (count := 49) (hex := hex_1317031)
  decide +kernel
#print axioms cover_1317031
end Mub6.Numerical.CircleFullD0.Forest
