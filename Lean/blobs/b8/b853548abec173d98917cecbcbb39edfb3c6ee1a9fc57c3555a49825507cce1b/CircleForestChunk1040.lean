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
def state_1549906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 21 else 22)))
def hex_1549906 : String := "41400642064443410605050605"
theorem cover_1549906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549906 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_1549906)
  decide +kernel
#print axioms cover_1549906

def state_1549919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 23)))
def hex_1549919 : String := "434140064442430806430808084005444205430A0505410605"
theorem cover_1549919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549919 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1549919)
  decide +kernel
#print axioms cover_1549919

def state_1549945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 24 else (if j.val < 4 then 10 else 11)))
def hex_1549945 : String := "4443414209404443410942054005090909094240050940054409090909"
theorem cover_1549945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549945 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 29) (hex := hex_1549945)
  decide +kernel
#print axioms cover_1549945

def state_1549982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 44)))
def hex_1549982 : String := "404244090944434140420944434107400A07090909404244050544430805430A05420944060909434109404209444307090709094209440909"
theorem cover_1549982 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549982 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1549982)
  decide +kernel
#print axioms cover_1549982

def state_1550039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 50 else (if j.val < 4 then 40 else 44)))
def hex_1550039 : String := "40420544434140050605054341400542054405070505424408094406430609"
theorem cover_1550039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550039 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1550039)
  decide +kernel
#print axioms cover_1550039

def state_1550070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 41 else 44)))
def hex_1550070 : String := "4109400509"
theorem cover_1550070 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550070 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1550070)
  decide +kernel
#print axioms cover_1550070

def state_1550075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 50 else (if j.val < 4 then 20 else 45)))
def hex_1550075 : String := "43414042094409070940424405054443414005070505430705420944090709"
theorem cover_1550075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550075 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 31) (hex := hex_1550075)
  decide +kernel
#print axioms cover_1550075

def state_1550113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 80 else 88)))
def hex_1550113 : String := "414042444307410740420A0707070707404244430641400A08054307410705440A074244060706"
theorem cover_1550113 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550113 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1550113)
  decide +kernel
#print axioms cover_1550113

def state_1550153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 88)))
def hex_1550153 : String := "4042094443410740424409070A4207070943070909"
theorem cover_1550153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_1550153)
  decide +kernel
#print axioms cover_1550153
end Mub6.Numerical.CircleFullD0.Forest
