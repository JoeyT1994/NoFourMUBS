import FourierPilotCircleTree000799
import FourierPilotCircleTree000800
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000798
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![2, 2, 2, 3, 3]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨0, by decide⟩ FourierPilotCircleTree000799.state FourierPilotCircleTree000800.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000799.covered FourierPilotCircleTree000800.covered
#print axioms covered
end FourierPilotCircleTree000798
