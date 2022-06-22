contract C {
    event Ev();
    function f() external {}

    bytes4 constant functionSelector = this.f.selector;  // OK
    bytes32 constant eventSelector = Ev.selector;        // Error: Initial value for constant variable has to be compile-time constant.
}
// ----
// TypeError 8349: (159-170): Initial value for constant variable has to be compile-time constant.
