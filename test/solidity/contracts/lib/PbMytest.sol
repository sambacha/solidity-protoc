// Code generated by protoc-gen-sol. DO NOT EDIT.
// source: test.proto
pragma solidity >=0.5.0;
import "./Pb.sol";

library PbMytest {
    using Pb for Pb.Buffer;  // so we can call Pb funcs on Buffer obj

    enum EnumExample { Type0, Type1, Type2 }

    // EnumExample[] decode function
    function EnumExamples(uint[] memory arr) internal pure returns (EnumExample[] memory t) {
        t = new EnumExample[](arr.length);
        for (uint i = 0; i < t.length; i++) { t[i] = EnumExample(arr[i]); }
    }

    struct Msg1 {
        uint32 f1;   // tag: 1
        uint64 f2;   // tag: 2
        bool f3;   // tag: 3
        bytes f4;   // tag: 4
        string f5;   // tag: 5
        uint32[] f6;   // tag: 6
        uint64[] f7;   // tag: 7
        bool[] f8;   // tag: 8
        bytes[] f9;   // tag: 9
        string[] f10;   // tag: 10
    } // end struct Msg1

    function decMsg1(bytes memory raw) internal pure returns (Msg1 memory m) {
        Pb.Buffer memory buf = Pb.fromBytes(raw);

        uint[] memory cnts = buf.cntTags(10);
        m.f9 = new bytes[](cnts[9]);
        cnts[9] = 0;  // reset counter for later use
        m.f10 = new string[](cnts[10]);
        cnts[10] = 0;  // reset counter for later use
        
        uint tag;
        Pb.WireType wire;
        while (buf.hasMore()) {
            (tag, wire) = buf.decKey();
            if (false) {} // solidity has no switch/case
            else if (tag == 1) {
                m.f1 = uint32(buf.decVarint());
            }
            else if (tag == 2) {
                m.f2 = uint64(buf.decVarint());
            }
            else if (tag == 3) {
                m.f3 = Pb._bool(buf.decVarint());
            }
            else if (tag == 4) {
                m.f4 = bytes(buf.decBytes());
            }
            else if (tag == 5) {
                m.f5 = string(buf.decBytes());
            }
            else if (tag == 6) {
                m.f6 = Pb.uint32s(buf.decPacked());
            }
            else if (tag == 7) {
                m.f7 = Pb.uint64s(buf.decPacked());
            }
            else if (tag == 8) {
                m.f8 = Pb.bools(buf.decPacked());
            }
            else if (tag == 9) {
                m.f9[cnts[9]] = bytes(buf.decBytes());
                cnts[9]++;
            }
            else if (tag == 10) {
                m.f10[cnts[10]] = string(buf.decBytes());
                cnts[10]++;
            }
            else { buf.skipValue(wire); } // skip value of unknown tag
        }
    } // end decoder Msg1

    struct Msg2 {
        uint8 num;   // tag: 1
        address addr;   // tag: 2
        address payable addrPayable;   // tag: 3
        uint256 amt;   // tag: 4
        bytes32 hash;   // tag: 5
        uint8[] nums;   // tag: 6
        address[] addrs;   // tag: 7
        address payable[] addrPayables;   // tag: 8
        uint256[] amts;   // tag: 9
        bytes32[] hashes;   // tag: 10
        uint ts;   // tag: 11
        uint[] tss;   // tag: 12
    } // end struct Msg2

    function decMsg2(bytes memory raw) internal pure returns (Msg2 memory m) {
        Pb.Buffer memory buf = Pb.fromBytes(raw);

        uint[] memory cnts = buf.cntTags(12);
        m.addrs = new address[](cnts[7]);
        cnts[7] = 0;  // reset counter for later use
        m.addrPayables = new address payable[](cnts[8]);
        cnts[8] = 0;  // reset counter for later use
        m.amts = new uint256[](cnts[9]);
        cnts[9] = 0;  // reset counter for later use
        m.hashes = new bytes32[](cnts[10]);
        cnts[10] = 0;  // reset counter for later use
        
        uint tag;
        Pb.WireType wire;
        while (buf.hasMore()) {
            (tag, wire) = buf.decKey();
            if (false) {} // solidity has no switch/case
            else if (tag == 1) {
                m.num = uint8(buf.decVarint());
            }
            else if (tag == 2) {
                m.addr = Pb._address(buf.decBytes());
            }
            else if (tag == 3) {
                m.addrPayable = Pb._addressPayable(buf.decBytes());
            }
            else if (tag == 4) {
                m.amt = Pb._uint256(buf.decBytes());
            }
            else if (tag == 5) {
                m.hash = Pb._bytes32(buf.decBytes());
            }
            else if (tag == 6) {
                m.nums = Pb.uint8s(buf.decPacked());
            }
            else if (tag == 7) {
                m.addrs[cnts[7]] = Pb._address(buf.decBytes());
                cnts[7]++;
            }
            else if (tag == 8) {
                m.addrPayables[cnts[8]] = Pb._addressPayable(buf.decBytes());
                cnts[8]++;
            }
            else if (tag == 9) {
                m.amts[cnts[9]] = Pb._uint256(buf.decBytes());
                cnts[9]++;
            }
            else if (tag == 10) {
                m.hashes[cnts[10]] = Pb._bytes32(buf.decBytes());
                cnts[10]++;
            }
            else if (tag == 11) {
                m.ts = uint(buf.decVarint());
            }
            else if (tag == 12) {
                m.tss = buf.decPacked();
            }
            else { buf.skipValue(wire); } // skip value of unknown tag
        }
    } // end decoder Msg2

    struct Msg3 {
        Msg1 m1;   // tag: 1
        Msg2 m2;   // tag: 2
        Msg1[] m1s;   // tag: 3
        Msg2[] m2s;   // tag: 4
    } // end struct Msg3

    function decMsg3(bytes memory raw) internal pure returns (Msg3 memory m) {
        Pb.Buffer memory buf = Pb.fromBytes(raw);

        uint[] memory cnts = buf.cntTags(4);
        m.m1s = new Msg1[](cnts[3]);
        cnts[3] = 0;  // reset counter for later use
        m.m2s = new Msg2[](cnts[4]);
        cnts[4] = 0;  // reset counter for later use
        
        uint tag;
        Pb.WireType wire;
        while (buf.hasMore()) {
            (tag, wire) = buf.decKey();
            if (false) {} // solidity has no switch/case
            else if (tag == 1) {
                m.m1 = decMsg1(buf.decBytes());
            }
            else if (tag == 2) {
                m.m2 = decMsg2(buf.decBytes());
            }
            else if (tag == 3) {
                m.m1s[cnts[3]] = decMsg1(buf.decBytes());
                cnts[3]++;
            }
            else if (tag == 4) {
                m.m2s[cnts[4]] = decMsg2(buf.decBytes());
                cnts[4]++;
            }
            else { buf.skipValue(wire); } // skip value of unknown tag
        }
    } // end decoder Msg3

    struct Msg4 {
        EnumExample enum1;   // tag: 1
        EnumExample enum2;   // tag: 2
        EnumExample[] enums;   // tag: 3
    } // end struct Msg4

    function decMsg4(bytes memory raw) internal pure returns (Msg4 memory m) {
        Pb.Buffer memory buf = Pb.fromBytes(raw);

        uint tag;
        Pb.WireType wire;
        while (buf.hasMore()) {
            (tag, wire) = buf.decKey();
            if (false) {} // solidity has no switch/case
            else if (tag == 1) {
                m.enum1 = EnumExample(buf.decVarint());
            }
            else if (tag == 2) {
                m.enum2 = EnumExample(buf.decVarint());
            }
            else if (tag == 3) {
                m.enums = EnumExamples(buf.decPacked());
            }
            else { buf.skipValue(wire); } // skip value of unknown tag
        }
    } // end decoder Msg4

}
