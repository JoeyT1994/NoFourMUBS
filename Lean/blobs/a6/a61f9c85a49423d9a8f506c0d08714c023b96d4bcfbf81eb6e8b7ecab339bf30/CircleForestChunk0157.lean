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
def state_59020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 94 else 34)))
def hex_59020 : String := "404142444306400607430640064142070642070606420A06414244074307404107070744430540060508420505"
theorem cover_59020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_59020)
  decide +kernel
#print axioms cover_59020

def state_59066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 95 else 34)))
def hex_59066 : String := "41424409434009410942070909094244094341400A420A060A4109084409430609"
theorem cover_59066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59066 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_59066)
  decide +kernel
#print axioms cover_59066

def state_59100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 76) else (if j.val < 3 then 54 else (if j.val < 4 then 95 else 34)))
def hex_59100 : String := "424407434041074207070740090744094340410842440943060906410842050509"
theorem cover_59100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59100 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_59100)
  decide +kernel
#print axioms cover_59100

def state_59133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 77) else (if j.val < 3 then 54 else (if j.val < 4 then 95 else 34)))
def hex_59133 : String := "424443050743404142074405070505404142070908074405434006054041094205054142050505"
theorem cover_59133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59133 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_59133)
  decide +kernel
#print axioms cover_59133

def state_59172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 54 else (if j.val < 4 then 47 else 35)))
def hex_59172 : String := "43404142444306404108064108420A060806420A064142444308404108420A084108420708080842444309400A41420505050944060892"
theorem cover_59172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59172 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_59172)
  decide +kernel
#print axioms cover_59172

def state_59227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 55 else (if j.val < 4 then 47 else 17)))
def hex_59227 : String := "4443064006410A4244054306400605064306404108064108429206"
theorem cover_59227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_59227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_59227)
  decide +kernel
#print axioms cover_59227
end Mub6.Numerical.CircleFullPrototype.Forest
