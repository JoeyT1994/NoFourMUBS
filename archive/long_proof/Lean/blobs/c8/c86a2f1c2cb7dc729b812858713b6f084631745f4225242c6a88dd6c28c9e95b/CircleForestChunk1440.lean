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
def state_1646313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 42)))
def hex_1646313 : String := "43444207410740070742414007064043440606070641404344420741050709074344060607404344420741074007074241094009060907434407080707"
theorem cover_1646313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646313 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1646313)
  decide +kernel
#print axioms cover_1646313

def state_1646375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 58 else (if j.val < 4 then 53 else 43)))
def hex_1646375 : String := "414044430607430642064109444008060906404443420641400906400A064207410707430642064144400906090A4443060706"
theorem cover_1646375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 51) (hex := hex_1646375)
  decide +kernel
#print axioms cover_1646375

def state_1646427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 98) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 43)))
def hex_1646427 : String := "404443090509444342064109400906420741054005074309424106404406060641094009440708"
theorem cover_1646427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646427 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1646427)
  decide +kernel
#print axioms cover_1646427

def state_1646467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 43)))
def hex_1646467 : String := "444342410940094443090A09094241400A070A4140054405050A43094241090A09"
theorem cover_1646467 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646467 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_1646467)
  decide +kernel
#print axioms cover_1646467

def state_1646501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 53 else 86)))
def hex_1646501 : String := "4342410640440606064140094406064044430842070908084207414044050707404407430A0707"
theorem cover_1646501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1646501 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_1646501)
  decide +kernel
#print axioms cover_1646501
end Mub6.Numerical.CircleFullD0.Forest
