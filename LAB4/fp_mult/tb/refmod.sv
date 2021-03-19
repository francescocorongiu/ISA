class refmod extends uvm_component;
    `uvm_component_utils(refmod)
    
    packet_in tr_in;
    packet_out tr_out;
    uvm_get_port #(packet_in) in;
    uvm_put_port #(packet_out) out;

    shortreal A_r, B_r, Out;

    function new(string name = "refmod", uvm_component parent);
        super.new(name, parent);
        in = new("in", this);
        out = new("out", this);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tr_out = packet_out::type_id::create("tr_out", this);
    endfunction: build_phase
    
    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        
        forever begin
            in.get(tr_in);
	    A_r = $bitstoshortreal(tr_in.A);
	    B_r = $bitstoshortreal(tr_in.B);
            Out = A_r * B_r;
	    tr_out.data = $shortrealtobits(Out);
            $display("refmod: input A = %0.9f, input B = %0.9f, output OUT = %0.9f", A_r, B_r, Out);
	    $display("refmod: input A = %b, input B = %b, output OUT = %b",tr_in.A, tr_in.B, tr_out.data);
            out.put(tr_out);
        end
    endtask: run_phase
endclass: refmod
