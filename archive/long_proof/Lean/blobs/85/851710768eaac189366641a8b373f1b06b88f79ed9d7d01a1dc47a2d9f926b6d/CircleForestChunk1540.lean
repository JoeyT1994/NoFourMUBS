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
def state_2243142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2243142 : String := "4142430A440A0743444009410A420A090A44090A424344410A420909410A4205440A050A43440941440A0A4409400A42050A44090A"
theorem cover_2243142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243142 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2243142)
  decide +kernel
#print axioms cover_2243142

def state_2243196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
def hex_2243196 : String := "424344400A42070507074344404105420A050540440A0A444105420705074440090607"
theorem cover_2243196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243196 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 35) (hex := hex_2243196)
  decide +kernel
#print axioms cover_2243196

def state_2243235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_2243235 : String := "414243440A420A080A43440A0A0A42434409410808440941420A0909430909"
theorem cover_2243235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243235 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 31) (hex := hex_2243235)
  decide +kernel
#print axioms cover_2243235

def state_2243266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
def hex_2243266 : String := "4142434440420A05050707434405084406074243444041420808080808444041420909090640410742430807084107084308440908"
theorem cover_2243266 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243266 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 53) (hex := hex_2243266)
  decide +kernel
#print axioms cover_2243266

def state_2243319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
def hex_2243319 : String := "404142074443400A410708070742444306410705054443410808410A084306054107424443080707440843404107060707"
theorem cover_2243319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 49) (hex := hex_2243319)
  decide +kernel
#print axioms cover_2243319

def state_2243368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
def hex_2243368 : String := "4440410A420A0941074243440607074344064009060640410742050A07"
theorem cover_2243368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243368 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2243368)
  decide +kernel
#print axioms cover_2243368
end Mub6.Numerical.CircleFullD0.Forest
