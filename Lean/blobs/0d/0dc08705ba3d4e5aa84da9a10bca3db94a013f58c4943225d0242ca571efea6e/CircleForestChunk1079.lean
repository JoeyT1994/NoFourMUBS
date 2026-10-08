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
def state_1559345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 44)))
def hex_1559345 : String := "43094140440908444243094140084408084008440942080809424341050908430508400944094243094140084409080909"
theorem cover_1559345 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559345 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1559345)
  decide +kernel
#print axioms cover_1559345

def state_1559395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 45)))
def hex_1559395 : String := "4341400807400A0A41400644420808084044080844424341080A410605430A41084008440808420808"
theorem cover_1559395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559395 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1559395)
  decide +kernel
#print axioms cover_1559395

def state_1559436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 45)))
def hex_1559436 : String := "4341070941400844420707074008444243090809420807"
theorem cover_1559436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1559436)
  decide +kernel
#print axioms cover_1559436

def state_1559459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
def hex_1559459 : String := "404409420A094442430941400544054205430905050942430A414044050544420543090542050A05430941400944090A09"
theorem cover_1559459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559459 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_1559459)
  decide +kernel
#print axioms cover_1559459

def state_1559510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
def hex_1559510 : String := "44420643080606"
theorem cover_1559510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559510 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1559510)
  decide +kernel
#print axioms cover_1559510

def state_1559519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 44)))
def hex_1559519 : String := "434140064442064341064006444206080606064044050544420543050542054341080505410605"
theorem cover_1559519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559519 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 39) (hex := hex_1559519)
  decide +kernel
#print axioms cover_1559519

def state_1559560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 60) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
def hex_1559560 : String := "40084442434108400844080806430808420808"
theorem cover_1559560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559560 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1559560)
  decide +kernel
#print axioms cover_1559560
end Mub6.Numerical.CircleFullD0.Forest
