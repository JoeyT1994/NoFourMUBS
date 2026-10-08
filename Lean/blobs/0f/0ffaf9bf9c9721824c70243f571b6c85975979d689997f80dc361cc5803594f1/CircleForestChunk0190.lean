import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_66928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_66928 : String := "4142434440080606444043080A0A064344060644080642434408400506444041084308440805410A084005410543050543084440410809084041060506"
theorem cover_66928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66928 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_66928)
  decide +kernel
#print axioms cover_66928

def state_66989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
def hex_66989 : String := "4142064344420644060642060806424344410A0806444106434408060A064344080606"
theorem cover_66989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66989 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_66989)
  decide +kernel
#print axioms cover_66989

def state_67027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
def hex_67027 : String := "424344090A0643440640424306060606440606"
theorem cover_67027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67027 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_67027)
  decide +kernel
#print axioms cover_67027

def state_67047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
def hex_67047 : String := "43444041094342094409404105090905410943420909090A0A"
theorem cover_67047 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67047 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_67047)
  decide +kernel
#print axioms cover_67047

def state_67074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
def hex_67074 : String := "40410642434406404105434244050505054106430606050606"
theorem cover_67074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 25) (hex := hex_67074)
  decide +kernel
#print axioms cover_67074

def state_67101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_67101 : String := "424344400A060A0A06"
theorem cover_67101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_67101)
  decide +kernel
#print axioms cover_67101

def state_67110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_67110 : String := "42434440414342050505434244050544050505410A43420A060A40410543440505050A0A43444041054205050640410505410642430905064405400505"
theorem cover_67110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67110 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_67110)
  decide +kernel
#print axioms cover_67110

def state_67171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
def hex_67171 : String := "410642434441064306060A0A06"
theorem cover_67171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67171 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_67171)
  decide +kernel
#print axioms cover_67171

def state_67184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
def hex_67184 : String := "44060A"
theorem cover_67184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67184 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_67184)
  decide +kernel
#print axioms cover_67184
end Mub6.Numerical.CircleFullPrototype.Forest
