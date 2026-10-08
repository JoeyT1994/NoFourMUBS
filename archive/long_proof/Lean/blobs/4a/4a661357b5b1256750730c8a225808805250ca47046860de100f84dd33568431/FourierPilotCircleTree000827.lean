import FourierPilotCircleTree000828
import FourierPilotCircleTree000857
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree000827
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, false, false]
def state : State := ![22, 23, 20, 26, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree000828.state FourierPilotCircleTree000857.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree000828.covered FourierPilotCircleTree000857.covered
#print axioms covered
end FourierPilotCircleTree000827
