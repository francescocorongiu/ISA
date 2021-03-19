class packet_in extends uvm_sequence_item;
    
    rand bit[31:0] A;
    rand bit[31:0] B;

    constraint A_exp { A inside{[1073741824:2139095040],[3221225472:4286578688]};}
    constraint B_exp { B inside{[1073741824:2139095040],[3221225472:4286578688]};}

    `uvm_object_utils_begin(packet_in)
        `uvm_field_int(A, UVM_ALL_ON|UVM_HEX)
        `uvm_field_int(B, UVM_ALL_ON|UVM_HEX)
    `uvm_object_utils_end

    function new(string name="packet_in");
        super.new(name);
    endfunction: new

 endclass: packet_in
