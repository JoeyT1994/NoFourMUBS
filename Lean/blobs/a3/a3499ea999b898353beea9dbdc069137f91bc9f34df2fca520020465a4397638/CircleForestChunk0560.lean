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
def state_373269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 23)))
def hex_373269 : String := "42434441060641400A420744064341070A060A0A4344064106424006440643410606060606"
theorem cover_373269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_373269)
  decide +kernel
#print axioms cover_373269

def state_373307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 23)))
def hex_373307 : String := "434407410740420944434107080943410709090709"
theorem cover_373307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373307 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_373307)
  decide +kernel
#print axioms cover_373307

def state_373330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 46)))
def hex_373330 : String := "410740064207430705"
theorem cover_373330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_373330)
  decide +kernel
#print axioms cover_373330

def state_373340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 44) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 47)))
def hex_373340 : String := "404244074341074042070607410606440643080607"
theorem cover_373340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373340 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_373340)
  decide +kernel
#print axioms cover_373340

def state_373363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 38 else (if j.val < 4 then 46 else 47)))
def hex_373363 : String := "444341400607400642070606434140424406439B060642074407439B41060640420A064244439B090944439B06439B4106400505414006094006420906"
theorem cover_373363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373363 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_373363)
  decide +kernel
#print axioms cover_373363

def state_373424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 47)))
def hex_373424 : String := "440643414006424406430806064006424406439B060606"
theorem cover_373424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_373424)
  decide +kernel
#print axioms cover_373424

def state_373448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 38 else (if j.val < 4 then 46 else 47)))
def hex_373448 : String := "44074341074207404407439B090709"
theorem cover_373448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373448 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_373448)
  decide +kernel
#print axioms cover_373448

def state_373463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 47)))
def hex_373463 : String := "44434107404205050741060543410A404244439B05439B4140060705440A0A4244070A0A41404207060740424405434105050505420505"
theorem cover_373463 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_373463 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_373463)
  decide +kernel
#print axioms cover_373463
end Mub6.Numerical.CircleFullPrototype.Forest
