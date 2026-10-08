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
def state_2270908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 28)))
def hex_2270908 : String := "444043424106064144400A07064440434206090606064206410A0643424106064107440706420607400606"
theorem cover_2270908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270908 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_2270908)
  decide +kernel
#print axioms cover_2270908

def state_2270951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 28)))
def hex_2270951 : String := "444043420541440606050543420641440606060606"
theorem cover_2270951 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270951 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2270951)
  decide +kernel
#print axioms cover_2270951

def state_2270973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 52) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 28)))
def hex_2270973 : String := "44404342410A4440090740090A4107094241074407060707404342410A060A0A43420A0707"
theorem cover_2270973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2270973 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2270973)
  decide +kernel
#print axioms cover_2270973

def state_2271010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 53) else (if j.val < 3 then 45 else (if j.val < 4 then 46 else 28)))
def hex_2271010 : String := "444043424144090609094241440605050943424144404309070740060644400606064144070709424144060606410708404342060906434206414409060906"
theorem cover_2271010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271010 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2271010)
  decide +kernel
#print axioms cover_2271010

def state_2271073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 47 else 28)))
def hex_2271073 : String := "42414440060605054144070A44404342050805434206070506"
theorem cover_2271073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271073 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_2271073)
  decide +kernel
#print axioms cover_2271073

def state_2271098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 29)))
def hex_2271098 : String := "4342064140060A40060606"
theorem cover_2271098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2271098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_2271098)
  decide +kernel
#print axioms cover_2271098
end Mub6.Numerical.CircleFullD0.Forest
