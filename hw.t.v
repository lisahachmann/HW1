`include "hw1.v"

module demorgan_test ();

  // Instantiate device/module under test
  reg A, B;                // Primary test inputs
  // Toggle between test outputs (nAandnB or nAornB) based on equation
  wire nA, nB, nAandnB;    // Test outputs
  // wire nA, nB, nAornB

  demorgan dut(A, B, nA, nB, nAandnB);  // Module to be tested
  // demorgan dut(A, B, nA, nB, nAornB); // Module for OR gate combos

  // Run sequence of test stimuli
  initial begin
    $display("A B | ~A ~B | ~A~B ");            // Prints header for truth table of AND equations
    //     $display("A B | ~A ~B | ~A+~B ");            // Prints header for truth table of OR equations

    A=0;B=0; #1                                 // Set A and B, wait for update (#1)
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    // $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB); // OR gate output

    A=0;B=1; #1                                 // Set A and B, wait for new update
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    // $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB); // OR gate output

    A=1;B=0; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    // $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB); // OR gate output

    A=1;B=1; #1
    $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAandnB);
    // $display("%b %b |  %b  %b |    %b  ", A,B, nA, nB, nAornB); // OR gate output
    
  end
endmodule    // End demorgan_test
