import FourierCompleteEndpoint
import FourierCriticalPilotBinding

-- Diagnostic only: no mathematical declaration is made.
#eval (do
  let err ← IO.getStderr
  err.putStrLn "FOURIER_COMPLETE_CRITICAL_IMPORTS_LOADED"
  err.flush : IO Unit)
