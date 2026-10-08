import FourierPilotCircleTree002888
import FourierPilotCircleTree002889
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002887
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, false, false, true]
def state : State := ![9, 14, 8, 22, 12]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002888.state FourierPilotCircleTree002889.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002888.covered FourierPilotCircleTree002889.covered
#print axioms covered
end FourierPilotCircleTree002887
