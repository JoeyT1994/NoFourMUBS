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
def state_1538509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 19 else 21)))
def hex_1538509 : String := "400642444106434209400608060644410643404206444105430506054244080505400609410643400642090506"
theorem cover_1538509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538509 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_1538509)
  decide +kernel
#print axioms cover_1538509

def state_1538556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 18 else 21)))
def hex_1538556 : String := "424441430A4042060A424408410643080644080A430A40070841430A40064244410643060606440A06430A400A4244430A410A05430A4106050A440A0A"
theorem cover_1538556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538556 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_1538556)
  decide +kernel
#print axioms cover_1538556

def state_1538619 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 42)))
def hex_1538619 : String := "08"
theorem cover_1538619 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538619 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1538619)
  decide +kernel
#print axioms cover_1538619

def state_1538621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 58) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 43)))
def hex_1538621 : String := "43424044080A08400A074240444143080608410643424006080A06084044414308060841074307420A0A440807"
theorem cover_1538621 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538621 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_1538621)
  decide +kernel
#print axioms cover_1538621

def state_1538666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 48 else (if j.val < 4 then 18 else 43)))
def hex_1538666 : String := "430842404408434142400A080A0841424044060608400A0842400508400A0808404408430A410A0A08"
theorem cover_1538666 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538666 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 41) (hex := hex_1538666)
  decide +kernel
#print axioms cover_1538666

def state_1538707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 18 else 21)))
def hex_1538707 : String := "44084143074042440A070A4244080705430A400A08"
theorem cover_1538707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_1538707)
  decide +kernel
#print axioms cover_1538707
end Mub6.Numerical.CircleFullD0.Forest
