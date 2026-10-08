import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1489409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 14)))
def hex_1489409 : String := "40434144420540434407070709094442054043410707074341050505420740430707434109444205430905070741440507440507434109440509410905"
theorem cover_1489409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489409 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1489409)
  decide +kernel
#print axioms cover_1489409

def state_1489470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 15)))
def hex_1489470 : String := "40434109420644400706060706"
theorem cover_1489470 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489470 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1489470)
  decide +kernel
#print axioms cover_1489470

def state_1489489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 28)))
def hex_1489489 : String := "404344424109400605414006090642410740070941094006094442410505414007090542074109400743070709"
theorem cover_1489489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489489 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1489489)
  decide +kernel
#print axioms cover_1489489

def state_1489534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 29)))
def hex_1489534 : String := "40434209444109400A09094207444107070709"
theorem cover_1489534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489534 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1489534)
  decide +kernel
#print axioms cover_1489534

def state_1489555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 28)))
def hex_1489555 : String := "43424406410A0606424441060641400A094006430642440607064406410A06"
theorem cover_1489555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489555 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1489555)
  decide +kernel
#print axioms cover_1489555

def state_1489586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 28)))
def hex_1489586 : String := "43424441090809440841080842444109400605094441400608064109404306440642090609"
theorem cover_1489586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489586 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_1489586)
  decide +kernel
#print axioms cover_1489586

def state_1489623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 29)))
def hex_1489623 : String := "40430A42444109400A430942070A0A0A09"
theorem cover_1489623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489623 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 17) (hex := hex_1489623)
  decide +kernel
#print axioms cover_1489623
end Mub6.Numerical.CircleFullD0.Forest
