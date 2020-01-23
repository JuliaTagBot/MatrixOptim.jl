## Metsa-Oy Forest Products Supply Chain
## Edward J. Xu <edxu96@outlook.com>
## Jan 23rd, 2020

using JuMP, Gurobi, CSV, PrettyTables

include("func.jl")
include("optim_1.jl")
include("optim_2.jl")


function main()
  ##
  alpha_t, beta_t, a_i, b_i, e_i, c_i, r_saw, r_plywood, a_j, c_j,
    r_j, a_paper_t, b_paper_j, c_paper, r_paper, gamma_ik, delta_ik, gamma_jk,
    delta_jk, gamma_paper_k, delta_paper_k, p_fuel = get_para_1()

  optim_1(alpha_t, beta_t, a_i,
    b_i, e_i, c_i, r_saw, r_plywood, a_j, c_j, r_j, a_paper_t, b_paper_j,
    c_paper, r_paper, gamma_ik, delta_ik, gamma_jk, delta_jk, gamma_paper_k,
    delta_paper_k, p_fuel)

  ##
  # alpha_t, beta_t, a_i, b_i, e_i, c_i, r_saw, r_plywood, a_j, c_j,
  #   r_j, a_paper_t, b_paper_j, c_paper, r_paper, gamma_ik, delta_ik, gamma_jk,
  #   delta_jk, gamma_paper_k, delta_paper_k, p_fuel, sigma, omega_i, omega_j,
  #   omega_paper, nu_saw, nu_plywood, nu_j, nu_paper, o_saw, o_plywood, o_j,
  #   o_paper = get_para_2()
  #
  # optim_2(alpha_t, beta_t, a_i,
  #   b_i, e_i, c_i, r_saw, r_plywood, a_j, c_j, r_j, a_paper_t, b_paper_j,
  #   c_paper, r_paper, gamma_ik, delta_ik, gamma_jk, delta_jk, gamma_paper_k,
  #   delta_paper_k, p_fuel, sigma, omega_i, omega_j, omega_paper, nu_saw,
  #   nu_plywood, nu_j, nu_paper, o_saw, o_plywood, o_j, o_paper)

end


main()