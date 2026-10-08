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
def state_2241509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
def hex_2241509 : String := "414209430A44060A0A"
theorem cover_2241509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2241509)
  decide +kernel
#print axioms cover_2241509

def state_2241518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 9)))
def hex_2241518 : String := "40050A"
theorem cover_2241518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241518 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2241518)
  decide +kernel
#print axioms cover_2241518

def state_2241521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 4)))
def hex_2241521 : String := "4440054142054306060505"
theorem cover_2241521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241521 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2241521)
  decide +kernel
#print axioms cover_2241521

def state_2241547 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 88) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 32)))
def hex_2241547 : String := "4344E74041420707420544E705414207074244E70544E7430807444041420707420543E705414207074243E70543E7440607404107054107420507"
theorem cover_2241547 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241547 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 59) (hex := hex_2241547)
  decide +kernel
#print axioms cover_2241547

def state_2241606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 88) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 32)))
def hex_2241606 : String := "434442E740084105084240410708410708084442400A410743E7090A42400707400707"
theorem cover_2241606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241606 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 35) (hex := hex_2241606)
  decide +kernel
#print axioms cover_2241606

def state_2241641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 89) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 32)))
def hex_2241641 : String := "42434441E740050A414005420544E7050544414005420543E70505054344094142400808080944094142400543440905050909"
theorem cover_2241641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241641 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_2241641)
  decide +kernel
#print axioms cover_2241641

def state_2241694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 88) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 32)))
def hex_2241694 : String := "434440E741060A404109420944E70A09444041420606420606064041074207074107420606"
theorem cover_2241694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241694 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_2241694)
  decide +kernel
#print axioms cover_2241694

def state_2241731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 89 else 88) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 32)))
def hex_2241731 : String := "43444042E7050540424107080842410508054440424106064105060640420707420707"
theorem cover_2241731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241731 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 35) (hex := hex_2241731)
  decide +kernel
#print axioms cover_2241731
end Mub6.Numerical.CircleFullD0.Forest
