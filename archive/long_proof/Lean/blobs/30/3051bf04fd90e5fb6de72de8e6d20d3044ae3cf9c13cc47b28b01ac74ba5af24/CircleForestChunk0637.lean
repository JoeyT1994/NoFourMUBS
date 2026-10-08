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
def state_391791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 48)))
def hex_391791 : String := "42414344400A420A4143B50A0A400A420A41434440420A0806060843060A0A0A414344404241080A0505400842410843060805084344400A0540074207050A"
theorem cover_391791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391791 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_391791)
  decide +kernel
#print axioms cover_391791

def state_391854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 48)))
def hex_391854 : String := "4241434442404143060A0A050542064041430608060544420A05420940090543060A414344054005050505"
theorem cover_391854 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391854 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 43) (hex := hex_391854)
  decide +kernel
#print axioms cover_391854

def state_391897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 49)))
def hex_391897 : String := "40424143444007420941080607090A4108430708424143060906410843064440420A050506"
theorem cover_391897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 37) (hex := hex_391897)
  decide +kernel
#print axioms cover_391897

def state_391934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
def hex_391934 : String := "41434042444108060608060843064042070742064441060606"
theorem cover_391934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391934 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_391934)
  decide +kernel
#print axioms cover_391934

def state_391959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
def hex_391959 : String := "40420A4441060A084209444143440808084344400A420A05404209084209080A09"
theorem cover_391959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391959 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_391959)
  decide +kernel
#print axioms cover_391959

def state_391992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
def hex_391992 : String := "4340420A07424443060A06444341440606064144400A420A054007060A07400A420A440A0A"
theorem cover_391992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_391992 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_391992)
  decide +kernel
#print axioms cover_391992
end Mub6.Numerical.CircleFullPrototype.Forest
