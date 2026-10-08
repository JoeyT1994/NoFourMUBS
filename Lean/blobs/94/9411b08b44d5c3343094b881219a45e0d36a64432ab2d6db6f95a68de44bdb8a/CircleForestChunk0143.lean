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
def state_55625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 36 else (if j.val < 4 then 97 else 55)))
def hex_55625 : String := "404144420843060608084144424341400606404442050606050A4306060644424305080908"
theorem cover_55625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55625 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 37) (hex := hex_55625)
  decide +kernel
#print axioms cover_55625

def state_55662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 27)))
def hex_55662 : String := "4443094041424407430906070709430940410608410609"
theorem cover_55662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55662 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_55662)
  decide +kernel
#print axioms cover_55662

def state_55686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 27)))
def hex_55686 : String := "414244434005410507050844050542440708440708"
theorem cover_55686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55686 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_55686)
  decide +kernel
#print axioms cover_55686

def state_55707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 19) else (if j.val < 3 then 18 else (if j.val < 4 then 49 else 27)))
def hex_55707 : String := "4142440A4341064006064106400606444341054005420A05050642444340070A074340084144420A06060808440743400841064208064007410607"
theorem cover_55707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55707 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 59) (hex := hex_55707)
  decide +kernel
#print axioms cover_55707

def state_55766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 27)))
def hex_55766 : String := "43404105424409060541424406060509404105424405050541064244070606"
theorem cover_55766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55766 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 31) (hex := hex_55766)
  decide +kernel
#print axioms cover_55766

def state_55797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
def hex_55797 : String := "444041050741420A050740410542070541424340054105420905050542434041420905074142094405054207070743400541050707"
theorem cover_55797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55797 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 53) (hex := hex_55797)
  decide +kernel
#print axioms cover_55797

def state_55850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
def hex_55850 : String := "444007410A07404105074142094305054209434407400541050707"
theorem cover_55850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_55850 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 27) (hex := hex_55850)
  decide +kernel
#print axioms cover_55850
end Mub6.Numerical.CircleFullPrototype.Forest
