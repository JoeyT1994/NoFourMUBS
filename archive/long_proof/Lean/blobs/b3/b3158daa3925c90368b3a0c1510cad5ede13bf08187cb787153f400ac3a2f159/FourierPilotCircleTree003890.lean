import FourierPilotCircleTree003891
import FourierPilotCircleTree003914
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003890
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![27, 20, 16, 17, 15]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree003891.state FourierPilotCircleTree003914.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003891.covered FourierPilotCircleTree003914.covered
#print axioms covered
end FourierPilotCircleTree003890
