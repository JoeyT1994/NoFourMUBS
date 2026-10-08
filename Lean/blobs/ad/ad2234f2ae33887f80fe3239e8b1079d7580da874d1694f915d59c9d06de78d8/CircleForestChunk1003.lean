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
def state_1541093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 19 else 22)))
def hex_1541093 : String := "44434142094006094240444341060506090940444341064240054405050A06434106424005090A064443410942094044080708090909434106420940060706"
theorem cover_1541093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541093 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 63) (hex := hex_1541093)
  decide +kernel
#print axioms cover_1541093

def state_1541158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 38 else 44)))
def hex_1541158 : String := "41400607404244430A41064006424406060A430706440A07424443410742400A07074109420940440A0709074443074107400A0707"
theorem cover_1541158 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541158 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_1541158)
  decide +kernel
#print axioms cover_1541158

def state_1541211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 39 else 44)))
def hex_1541211 : String := "41064006420944434109404209440A07090909"
theorem cover_1541211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 19) (hex := hex_1541211)
  decide +kernel
#print axioms cover_1541211

def state_1541230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 19 else 45)))
def hex_1541230 : String := "430706"
theorem cover_1541230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1541230)
  decide +kernel
#print axioms cover_1541230

def state_1541233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 9 else 23)))
def hex_1541233 : String := "4108430708"
theorem cover_1541233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541233 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1541233)
  decide +kernel
#print axioms cover_1541233

def state_1541240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 22)))
def hex_1541240 : String := "4307400607"
theorem cover_1541240 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541240 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1541240)
  decide +kernel
#print axioms cover_1541240

def state_1541246 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 22)))
def hex_1541246 : String := "400A07"
theorem cover_1541246 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541246 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1541246)
  decide +kernel
#print axioms cover_1541246

def state_1541250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 22)))
def hex_1541250 : String := "4244430A060644430A41060A08"
theorem cover_1541250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541250 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_1541250)
  decide +kernel
#print axioms cover_1541250

def state_1541264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 50 else (if j.val < 4 then 19 else 22)))
def hex_1541264 : String := "44434107400A0741400607404244430A060644430A06064244434107400A07410640064209440907074443074107400A070743074106400607"
theorem cover_1541264 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541264 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_1541264)
  decide +kernel
#print axioms cover_1541264

def state_1541321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 22)))
def hex_1541321 : String := "444307410740420A070707"
theorem cover_1541321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541321 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1541321)
  decide +kernel
#print axioms cover_1541321

def state_1541332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 23)))
def hex_1541332 : String := "41074307400807"
theorem cover_1541332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1541332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1541332)
  decide +kernel
#print axioms cover_1541332
end Mub6.Numerical.CircleFullD0.Forest
