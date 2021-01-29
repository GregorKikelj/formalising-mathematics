import week_3.kb_solutions.Part_A_limits_solutions

import topology.instances.real

open filter

open_locale topological_space

namespace xena

lemma is_limit_iff_tendsto (a : ℕ → ℝ) (l : ℝ) :
  is_limit a l ↔ tendsto a at_top (𝓝 l) :=
begin
  rw metric.tendsto_at_top,
  congr',
end

example (a b : ℕ → ℝ) (l m : ℝ) : is_limit a l → is_limit b m → is_limit (λ n, a n + b n) (l + m) :=
begin
  simp only [is_limit_iff_tendsto],
  exact tendsto.add,
end

example (a b : ℕ → ℝ) (l m : ℝ) : is_limit a l → is_limit b m → is_limit (λ n, a n * b n) (l * m) :=
begin
  simp only [is_limit_iff_tendsto],
  exact tendsto.mul,
end

end xena
