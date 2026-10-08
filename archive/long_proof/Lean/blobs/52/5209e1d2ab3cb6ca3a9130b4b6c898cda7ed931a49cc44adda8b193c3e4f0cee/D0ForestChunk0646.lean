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
def state_1343937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 40 else 49)))
def hex_1343937 : String := "4044410542080541050844414207430A05424308074340444208410508084442064109064208410A0840054442070542070541420A0A420843084005440A05"
theorem cover_1343937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1343937 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 63) (hex := hex_1343937)
  decide +kernel
#print axioms cover_1343937

def state_1344000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 41 else 49)))
def hex_1344000 : String := "05"
theorem cover_1344000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344000 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1344000)
  decide +kernel
#print axioms cover_1344000

def state_1344001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 51) else (if j.val < 3 then 45 else (if j.val < 4 then 20 else 49)))
def hex_1344001 : String := "43400544424143400509054340050905410509424105434005444241094308050942410508410507050505"
theorem cover_1344001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344001 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 43) (hex := hex_1344001)
  decide +kernel
#print axioms cover_1344001

def state_1344044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 21 else 24)))
def hex_1344044 : String := "05"
theorem cover_1344044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344044 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1344044)
  decide +kernel
#print axioms cover_1344044

def state_1344045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 10 else 25)))
def hex_1344045 : String := "434005414244430A050505424443400544410A08080543080544434005424441054340054442080505050505050505"
theorem cover_1344045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344045 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 15) (count := 47) (hex := hex_1344045)
  decide +kernel
#print axioms cover_1344045

def state_1344092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 12)))
def hex_1344092 : String := "05"
theorem cover_1344092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344092 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1344092)
  decide +kernel
#print axioms cover_1344092

def state_1344093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 13)))
def hex_1344093 : String := "05"
theorem cover_1344093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344093 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1344093)
  decide +kernel
#print axioms cover_1344093

def state_1344094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 6)))
def hex_1344094 : String := "05"
theorem cover_1344094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344094 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1344094)
  decide +kernel
#print axioms cover_1344094

def state_1344096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
def hex_1344096 : String := "434440084441420843400844414206430640080606084008444107084107080841420843080808084440084344410708084407410708400543084142060508"
theorem cover_1344096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344096 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 14) (count := 63) (hex := hex_1344096)
  decide +kernel
#print axioms cover_1344096

def state_1344162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 12)))
def hex_1344162 : String := "4244410508084441050505"
theorem cover_1344162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344162 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 11) (hex := hex_1344162)
  decide +kernel
#print axioms cover_1344162

def state_1344178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 20 else 24)))
def hex_1344178 : String := "4442414308050841050A4208410508"
theorem cover_1344178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1344178 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 15) (hex := hex_1344178)
  decide +kernel
#print axioms cover_1344178
end Mub6.Numerical.CircleFullD0.Forest
