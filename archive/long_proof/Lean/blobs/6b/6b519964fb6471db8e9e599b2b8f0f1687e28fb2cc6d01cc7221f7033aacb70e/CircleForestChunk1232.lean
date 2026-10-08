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
def state_1596151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 31 else 49)))
def hex_1596151 : String := "42410743074407074143074407084344070744404207070740424107074107430744070707"
theorem cover_1596151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_1596151)
  decide +kernel
#print axioms cover_1596151

def state_1596189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 18) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 25)))
def hex_1596189 : String := "43404244410843074207080508084042440A0A4408064244080508"
theorem cover_1596189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_1596189)
  decide +kernel
#print axioms cover_1596189

def state_1596219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 25)))
def hex_1596219 : String := "4441434205440705420544400A07054305420544400A050505"
theorem cover_1596219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 25) (hex := hex_1596219)
  decide +kernel
#print axioms cover_1596219

def state_1596245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 50)))
def hex_1596245 : String := "4143080843444042410743074407050808404205080544404241434407080A43444207070A0A410843084440420A06080842410707084042410A050808"
theorem cover_1596245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596245 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1596245)
  decide +kernel
#print axioms cover_1596245

def state_1596306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 30 else 51)))
def hex_1596306 : String := "410843054042050605"
theorem cover_1596306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596306 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1596306)
  decide +kernel
#print axioms cover_1596306

def state_1596315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 25)))
def hex_1596315 : String := "4205440805"
theorem cover_1596315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596315 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1596315)
  decide +kernel
#print axioms cover_1596315

def state_1596322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 50 else (if j.val < 4 then 31 else 25)))
def hex_1596322 : String := "44410A0A05"
theorem cover_1596322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1596322)
  decide +kernel
#print axioms cover_1596322

def state_1596327 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 19) else (if j.val < 3 then 51 else (if j.val < 4 then 31 else 25)))
def hex_1596327 : String := "4441434440090808444006420A0606434440420A41060642410A0A4108430844080840420A06420508444006420A4106064006420A0641064340060506"
theorem cover_1596327 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596327 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1596327)
  decide +kernel
#print axioms cover_1596327
end Mub6.Numerical.CircleFullD0.Forest
