module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  // Toggle between nAandnB and nAornB based on equation
  output nAandnB     // Single bit output, (~A)*(~B)
  // output nAornB   // Single bit output, ~A+~B
);

  wire nA;
  wire nB;
  not Ainv(nA, A);      // Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  // Toggle between and & or gate based on equation
  and andgate(nAandnB, nA, nB);     // AND gate produces nAandnB from nA and nB
  // or orgate(nAornB, nA, nB);      // OR gate produces nAornB from nA and nB

endmodule
