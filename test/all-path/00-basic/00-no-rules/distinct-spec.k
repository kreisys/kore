module VERIFICATION
  imports PATH

endmodule

module DISTINCT-SPEC
  imports VERIFICATION
  imports PATH

  // should not be provable, as there is no axiom
  claim <k> a => b </k> [all-path]

endmodule
