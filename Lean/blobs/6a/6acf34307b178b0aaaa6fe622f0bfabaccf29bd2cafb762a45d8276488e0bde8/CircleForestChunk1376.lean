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
def state_1631030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
def hex_1631030 : String := "4243404144060A06414442074340064144080806064207430A0744060707434006414406434240410A060806420A060606"
theorem cover_1631030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631030 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1631030)
  decide +kernel
#print axioms cover_1631030

def state_1631079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 5)))
def hex_1631079 : String := "420A4344400941434209090A06090A"
theorem cover_1631079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631079 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1631079)
  decide +kernel
#print axioms cover_1631079

def state_1631094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_1631094 : String := "0A"
theorem cover_1631094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1631094)
  decide +kernel
#print axioms cover_1631094

def state_1631095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_1631095 : String := "4344064344400606090A44060A"
theorem cover_1631095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631095 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_1631095)
  decide +kernel
#print axioms cover_1631095

def state_1631115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
def hex_1631115 : String := "434441420643060742430607434044430609060640070741064206430640070607"
theorem cover_1631115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631115 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_1631115)
  decide +kernel
#print axioms cover_1631115

def state_1631151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
def hex_1631151 : String := "43404244410643060806444108430A08414340080608434042064407070A400842060842060A40420808420808"
theorem cover_1631151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1631151)
  decide +kernel
#print axioms cover_1631151

def state_1631200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 16)))
def hex_1631200 : String := "4341420640440A43064106090642404409430609064044430A0943410A42050541090909410909"
theorem cover_1631200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631200 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1631200)
  decide +kernel
#print axioms cover_1631200

def state_1631240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 17)))
def hex_1631240 : String := "4106420640444341060541420640440943054106050542054044090505430541060505"
theorem cover_1631240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 35) (hex := hex_1631240)
  decide +kernel
#print axioms cover_1631240
end Mub6.Numerical.CircleFullD0.Forest
