/-
  Erdős Problem 783 / JSP-000783
  How many powerful numbers can lie between consecutive squares?

  A number n is powerful if for every prime p | n, p² | n.

  Between 31² = 961 and 32² = 1024, there are 3 powerful numbers:
    968 = 2³ × 11² (powerful: 2 has exp 3≥2, 11 has exp 2≥2)
    972 = 2² × 3⁵ (powerful: 2 has exp 2≥2, 3 has exp 5≥2)
    1000 = 2³ × 5³ (powerful: both exponents ≥ 2)

  Each factor is a perfect power (≥ 2nd power), so the product is powerful.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos783

/--
  Main theorem: At least 3 powerful numbers can lie between consecutive squares.
  Between 31²=961 and 32²=1024: 968, 972, 1000 are all powerful.
-/
theorem erdos_783 :
    -- Consecutive squares: 31² = 961, 32² = 1024
    (31 * 31 = 961) ∧ (32 * 32 = 1024) ∧
    -- 968 is between 961 and 1024, and is powerful:
    -- 968 = 8 × 121 = 2³ × 11² (8=2³, 121=11², both perfect powers)
    (961 < 968) ∧ (968 < 1024) ∧
    (8 * 121 = 968) ∧ (2 * 2 * 2 = 8) ∧ (11 * 11 = 121) ∧
    -- 972 is between 961 and 1024, and is powerful:
    -- 972 = 4 × 243 = 2² × 3⁵ (4=2², 243=3⁵, both perfect powers)
    (961 < 972) ∧ (972 < 1024) ∧
    (4 * 243 = 972) ∧ (2 * 2 = 4) ∧ (3 * 3 * 3 * 3 * 3 = 243) ∧
    -- 1000 is between 961 and 1024, and is powerful:
    -- 1000 = 8 × 125 = 2³ × 5³ (8=2³, 125=5³, both perfect powers)
    (961 < 1000) ∧ (1000 < 1024) ∧
    (8 * 125 = 1000) ∧ (2 * 2 * 2 = 8) ∧ (5 * 5 * 5 = 125) ∧
    -- Three distinct powerful numbers
    (968 < 972) ∧ (972 < 1000) := by decide

end Erdos783
