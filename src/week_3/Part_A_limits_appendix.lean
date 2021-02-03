import week_3.Part_A_limits

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

example (a b : ℕ → ℝ) (l m : ℝ) : is_limit a l → is_limit b m → is_limit (a + b) (l + m) :=
begin
  repeat {rw is_limit_iff_tendsto},
  exact tendsto.add,
end

example (a b : ℕ → ℝ) (l m : ℝ) : is_limit a l → is_limit b m → is_limit (a * b) (l * m) :=
begin
  repeat {rw is_limit_iff_tendsto},
  exact tendsto.mul,
end

end xena
