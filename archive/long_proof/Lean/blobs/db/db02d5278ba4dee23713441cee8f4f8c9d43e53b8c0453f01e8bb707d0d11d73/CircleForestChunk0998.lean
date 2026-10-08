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
def state_1539881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 38 else 43)))
def hex_1539881 : String := "414042440A070A42444305050505400A4244080A0A"
theorem cover_1539881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539881 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 21) (hex := hex_1539881)
  decide +kernel
#print axioms cover_1539881

def state_1539903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
def hex_1539903 : String := "404206444341050A06064244434105404206440A05420805410640060943070644430541054006424405050507"
theorem cover_1539903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1539903)
  decide +kernel
#print axioms cover_1539903

def state_1539949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 50 else (if j.val < 4 then 39 else 43)))
def hex_1539949 : String := "424443410A0A4106400642440506440A0A4341060A0644430A41400642060A0A430A41060A"
theorem cover_1539949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539949 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_1539949)
  decide +kernel
#print axioms cover_1539949

def state_1539988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 100 else (if j.val < 4 then 39 else 86)))
def hex_1539988 : String := "4341404244080A0A0808414042440606444308060642084408430808404244084308054408430841060508"
theorem cover_1539988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539988 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1539988)
  decide +kernel
#print axioms cover_1539988

def state_1540031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 100 else (if j.val < 4 then 39 else 87)))
def hex_1540031 : String := "43414042440A060A4244080707400A4244080A0A414006094042444341060A060644430A06430A0642440909444308094341070A09"
theorem cover_1540031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540031 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 53) (hex := hex_1540031)
  decide +kernel
#print axioms cover_1540031

def state_1540085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 99 else 59) else (if j.val < 3 then 101 else (if j.val < 4 then 39 else 86)))
def hex_1540085 : String := "4341400A080A41404244430A41060A430A06440A0A424408430841060844084305410508404244080A0A420808"
theorem cover_1540085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540085 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 45) (hex := hex_1540085)
  decide +kernel
#print axioms cover_1540085
end Mub6.Numerical.CircleFullD0.Forest
