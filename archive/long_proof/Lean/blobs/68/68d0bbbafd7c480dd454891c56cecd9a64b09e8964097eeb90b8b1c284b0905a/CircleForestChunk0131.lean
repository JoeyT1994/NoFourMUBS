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
def state_52697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 43)))
def hex_52697 : String := "400741420A430807420707"
theorem cover_52697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52697 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_52697)
  decide +kernel
#print axioms cover_52697

def state_52708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 20 else (if j.val < 4 then 49 else 21)))
def hex_52708 : String := "444007410A42070707"
theorem cover_52708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52708 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_52708)
  decide +kernel
#print axioms cover_52708

def state_52719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
def hex_52719 : String := "41054342414005444342410508050805400A44080741050A4241400544060508410508"
theorem cover_52719 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52719 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_52719)
  decide +kernel
#print axioms cover_52719

def state_52755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 21 else (if j.val < 4 then 24 else 20)))
def hex_52755 : String := "06"
theorem cover_52755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52755 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_52755)
  decide +kernel
#print axioms cover_52755

def state_52760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 38) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 20)))
def hex_52760 : String := "444342404106080606064342400541054406050506"
theorem cover_52760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52760 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_52760)
  decide +kernel
#print axioms cover_52760

def state_52781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 39) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 20)))
def hex_52781 : String := "4408434240414408050741444342900808434290094207400506440807400A414406050A424007414408070808"
theorem cover_52781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_52781)
  decide +kernel
#print axioms cover_52781

def state_52827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 38) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 20)))
def hex_52827 : String := "06"
theorem cover_52827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52827 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_52827)
  decide +kernel
#print axioms cover_52827

def state_52829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 40)))
def hex_52829 : String := "434240080540080608"
theorem cover_52829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52829 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_52829)
  decide +kernel
#print axioms cover_52829

def state_52838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 39) else (if j.val < 3 then 42 else (if j.val < 4 then 48 else 41)))
def hex_52838 : String := "4342404144434290060643429006064408434240090909424007414405070508410644054309420506404106440809064240410608410644050606"
theorem cover_52838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52838 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 59) (hex := hex_52838)
  decide +kernel
#print axioms cover_52838

def state_52897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 43 else (if j.val < 4 then 48 else 20)))
def hex_52897 : String := "4041064408430A064106440606"
theorem cover_52897 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52897 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_52897)
  decide +kernel
#print axioms cover_52897

def state_52910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 21 else (if j.val < 4 then 49 else 20)))
def hex_52910 : String := "4240410608410644060606"
theorem cover_52910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_52910 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 11) (hex := hex_52910)
  decide +kernel
#print axioms cover_52910
end Mub6.Numerical.CircleFullPrototype.Forest
