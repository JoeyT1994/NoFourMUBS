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
def state_2258646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
def hex_2258646 : String := "42444043054107440742090505404309090944054043050705"
theorem cover_2258646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258646 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 25) (hex := hex_2258646)
  decide +kernel
#print axioms cover_2258646

def state_2258671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 26)))
def hex_2258671 : String := "424440430A0A0A40430A414206440A0606430909444043054244050A05054043420A054241440740430A07070A410744080A430507"
theorem cover_2258671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258671 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_2258671)
  decide +kernel
#print axioms cover_2258671

def state_2258728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 44 else 27)))
def hex_2258728 : String := "404443410807410842070A0844430841080908"
theorem cover_2258728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258728 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2258728)
  decide +kernel
#print axioms cover_2258728

def state_2258748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 44 else 27)))
def hex_2258748 : String := "44434105420A0541424044050805054240440707440A0A4044054305420705054341084207440505410842074440074305420805400708"
theorem cover_2258748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 55) (hex := hex_2258748)
  decide +kernel
#print axioms cover_2258748

def state_2258803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 44 else 27)))
def hex_2258803 : String := "444305410542404405080505434105420805410842084044050808"
theorem cover_2258803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258803 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_2258803)
  decide +kernel
#print axioms cover_2258803

def state_2258830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 21 else (if j.val < 4 then 44 else 27)))
def hex_2258830 : String := "424007440A074044430742070A0744430A420A41400A050A43420741400705074241400708074140440A07440A080A"
theorem cover_2258830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258830 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 47) (hex := hex_2258830)
  decide +kernel
#print axioms cover_2258830
end Mub6.Numerical.CircleFullD0.Forest
