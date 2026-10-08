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
def state_1532616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 104) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 33)))
def hex_1532616 : String := "4344404241080841054305440805080544404209410943444042080A084042090A090909404209410943050909"
theorem cover_1532616 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532616 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1532616)
  decide +kernel
#print axioms cover_1532616

def state_1532661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 105) else (if j.val < 3 then 103 else (if j.val < 4 then 38 else 33)))
def hex_1532661 : String := "434408404208410508084440424108084143080A08084042414308090841434440420841050808050A4308444042070A0840424108070A0842084143080908"
theorem cover_1532661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532661 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_1532661)
  decide +kernel
#print axioms cover_1532661

def state_1532724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 39 else 16)))
def hex_1532724 : String := "44400542054109054042410907410A434407400742070A054209410943444042050A094042090A0909"
theorem cover_1532724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532724 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_1532724)
  decide +kernel
#print axioms cover_1532724

def state_1532765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 53) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
def hex_1532765 : String := "43444042054143080505084042414308070741434409400908440740074207070742084108064405400742054143440540074205410A050505"
theorem cover_1532765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532765 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1532765)
  decide +kernel
#print axioms cover_1532765

def state_1532822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
def hex_1532822 : String := "4241090841434440420841080608404208410908080943084405404205414308050508"
theorem cover_1532822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1532822 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_1532822)
  decide +kernel
#print axioms cover_1532822
end Mub6.Numerical.CircleFullD0.Forest
