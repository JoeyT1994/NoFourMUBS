#eval do
  let mut s : Nat := 0
  for i in [0:1000000000] do
    s := s + i
  IO.println s
namespace RunnerReview
theorem expected : True := True.intro
end RunnerReview
