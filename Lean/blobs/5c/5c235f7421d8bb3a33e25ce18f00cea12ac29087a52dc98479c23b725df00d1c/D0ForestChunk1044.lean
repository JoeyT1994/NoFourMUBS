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
def state_1550888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
def hex_1550888 : String := "424406430609440643064144060906"
theorem cover_1550888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550888 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 15) (hex := hex_1550888)
  decide +kernel
#print axioms cover_1550888

def state_1550903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 22)))
def hex_1550903 : String := "414042094443410940050909090940054205440509"
theorem cover_1550903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550903 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 21) (hex := hex_1550903)
  decide +kernel
#print axioms cover_1550903

def state_1550924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 23)))
def hex_1550924 : String := "4341444042094307410744090709404209070744404243050543414440420507070744050541444005090505420943060940420543070542090709"
theorem cover_1550924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550924 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 59) (hex := hex_1550924)
  decide +kernel
#print axioms cover_1550924

def state_1550983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 5)))
def hex_1550983 : String := "4441404206434407060609054106400509"
theorem cover_1550983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550983 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1550983)
  decide +kernel
#print axioms cover_1550983

def state_1551009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 20)))
def hex_1551009 : String := "42414344400642060505064344400942414309070709400642410643090609440706414305084309440908"
theorem cover_1551009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551009 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 43) (hex := hex_1551009)
  decide +kernel
#print axioms cover_1551009

def state_1551054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 56) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 20)))
def hex_1551054 : String := "4344404241054305440505050505444042064105444305060542410A440A0A4105440A0506"
theorem cover_1551054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551054 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1551054)
  decide +kernel
#print axioms cover_1551054

def state_1551094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 57) else (if j.val < 3 then 52 else (if j.val < 4 then 40 else 40)))
def hex_1551094 : String := "42414344090544074006054309440740070741430544090509"
theorem cover_1551094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551094 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 6) (count := 25) (hex := hex_1551094)
  decide +kernel
#print axioms cover_1551094
end Mub6.Numerical.CircleFullD0.Forest
