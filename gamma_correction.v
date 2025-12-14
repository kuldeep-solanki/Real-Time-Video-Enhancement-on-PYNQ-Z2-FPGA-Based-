`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2025 23:39:06
// Design Name: 
// Module Name: gamma_correction
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module gamma_correction (
    input [7:0] pixel_in,
    output reg [7:0] pixel_out
);

    always @(*) begin
        case (pixel_in)
8'd0:   pixel_out = 8'd0;
8'd1:   pixel_out = 8'd0;
8'd2:   pixel_out = 8'd0;
8'd3:   pixel_out = 8'd0;
8'd4:   pixel_out = 8'd0;
8'd5:   pixel_out = 8'd0;
8'd6:   pixel_out = 8'd0;
8'd7:   pixel_out = 8'd0;
8'd8:   pixel_out = 8'd1;
8'd9:   pixel_out = 8'd1;
8'd10:   pixel_out = 8'd1;
8'd11:   pixel_out = 8'd1;
8'd12:   pixel_out = 8'd1;
8'd13:   pixel_out = 8'd1;
8'd14:   pixel_out = 8'd1;
8'd15:   pixel_out = 8'd2;
8'd16:   pixel_out = 8'd2;
8'd17:   pixel_out = 8'd2;
8'd18:   pixel_out = 8'd2;
8'd19:   pixel_out = 8'd2;
8'd20:   pixel_out = 8'd3;
8'd21:   pixel_out = 8'd3;
8'd22:   pixel_out = 8'd3;
8'd23:   pixel_out = 8'd3;
8'd24:   pixel_out = 8'd4;
8'd25:   pixel_out = 8'd4;
8'd26:   pixel_out = 8'd4;
8'd27:   pixel_out = 8'd4;
8'd28:   pixel_out = 8'd5;
8'd29:   pixel_out = 8'd5;
8'd30:   pixel_out = 8'd5;
8'd31:   pixel_out = 8'd6;
8'd32:   pixel_out = 8'd6;
8'd33:   pixel_out = 8'd6;
8'd34:   pixel_out = 8'd7;
8'd35:   pixel_out = 8'd7;
8'd36:   pixel_out = 8'd8;
8'd37:   pixel_out = 8'd8;
8'd38:   pixel_out = 8'd8;
8'd39:   pixel_out = 8'd9;
8'd40:   pixel_out = 8'd9;
8'd41:   pixel_out = 8'd10;
8'd42:   pixel_out = 8'd10;
8'd43:   pixel_out = 8'd10;
8'd44:   pixel_out = 8'd11;
8'd45:   pixel_out = 8'd11;
8'd46:   pixel_out = 8'd12;
8'd47:   pixel_out = 8'd12;
8'd48:   pixel_out = 8'd13;
8'd49:   pixel_out = 8'd13;
8'd50:   pixel_out = 8'd14;
8'd51:   pixel_out = 8'd14;
8'd52:   pixel_out = 8'd15;
8'd53:   pixel_out = 8'd15;
8'd54:   pixel_out = 8'd16;
8'd55:   pixel_out = 8'd16;
8'd56:   pixel_out = 8'd17;
8'd57:   pixel_out = 8'd17;
8'd58:   pixel_out = 8'd18;
8'd59:   pixel_out = 8'd18;
8'd60:   pixel_out = 8'd19;
8'd61:   pixel_out = 8'd19;
8'd62:   pixel_out = 8'd20;
8'd63:   pixel_out = 8'd21;
8'd64:   pixel_out = 8'd21;
8'd65:   pixel_out = 8'd22;
8'd66:   pixel_out = 8'd22;
8'd67:   pixel_out = 8'd23;
8'd68:   pixel_out = 8'd24;
8'd69:   pixel_out = 8'd24;
8'd70:   pixel_out = 8'd25;
8'd71:   pixel_out = 8'd26;
8'd72:   pixel_out = 8'd26;
8'd73:   pixel_out = 8'd27;
8'd74:   pixel_out = 8'd28;
8'd75:   pixel_out = 8'd28;
8'd76:   pixel_out = 8'd29;
8'd77:   pixel_out = 8'd30;
8'd78:   pixel_out = 8'd30;
8'd79:   pixel_out = 8'd31;
8'd80:   pixel_out = 8'd32;
8'd81:   pixel_out = 8'd32;
8'd82:   pixel_out = 8'd33;
8'd83:   pixel_out = 8'd34;
8'd84:   pixel_out = 8'd35;
8'd85:   pixel_out = 8'd35;
8'd86:   pixel_out = 8'd36;
8'd87:   pixel_out = 8'd37;
8'd88:   pixel_out = 8'd38;
8'd89:   pixel_out = 8'd38;
8'd90:   pixel_out = 8'd39;
8'd91:   pixel_out = 8'd40;
8'd92:   pixel_out = 8'd41;
8'd93:   pixel_out = 8'd41;
8'd94:   pixel_out = 8'd42;
8'd95:   pixel_out = 8'd43;
8'd96:   pixel_out = 8'd44;
8'd97:   pixel_out = 8'd45;
8'd98:   pixel_out = 8'd46;
8'd99:   pixel_out = 8'd46;
8'd100:   pixel_out = 8'd47;
8'd101:   pixel_out = 8'd48;
8'd102:   pixel_out = 8'd49;
8'd103:   pixel_out = 8'd50;
8'd104:   pixel_out = 8'd51;
8'd105:   pixel_out = 8'd52;
8'd106:   pixel_out = 8'd53;
8'd107:   pixel_out = 8'd53;
8'd108:   pixel_out = 8'd54;
8'd109:   pixel_out = 8'd55;
8'd110:   pixel_out = 8'd56;
8'd111:   pixel_out = 8'd57;
8'd112:   pixel_out = 8'd58;
8'd113:   pixel_out = 8'd59;
8'd114:   pixel_out = 8'd60;
8'd115:   pixel_out = 8'd61;
8'd116:   pixel_out = 8'd62;
8'd117:   pixel_out = 8'd63;
8'd118:   pixel_out = 8'd64;
8'd119:   pixel_out = 8'd65;
8'd120:   pixel_out = 8'd66;
8'd121:   pixel_out = 8'd67;
8'd122:   pixel_out = 8'd68;
8'd123:   pixel_out = 8'd69;
8'd124:   pixel_out = 8'd70;
8'd125:   pixel_out = 8'd71;
8'd126:   pixel_out = 8'd72;
8'd127:   pixel_out = 8'd73;
8'd128:   pixel_out = 8'd74;
8'd129:   pixel_out = 8'd75;
8'd130:   pixel_out = 8'd76;
8'd131:   pixel_out = 8'd77;
8'd132:   pixel_out = 8'd78;
8'd133:   pixel_out = 8'd79;
8'd134:   pixel_out = 8'd80;
8'd135:   pixel_out = 8'd81;
8'd136:   pixel_out = 8'd82;
8'd137:   pixel_out = 8'd83;
8'd138:   pixel_out = 8'd84;
8'd139:   pixel_out = 8'd86;
8'd140:   pixel_out = 8'd87;
8'd141:   pixel_out = 8'd88;
8'd142:   pixel_out = 8'd89;
8'd143:   pixel_out = 8'd90;
8'd144:   pixel_out = 8'd91;
8'd145:   pixel_out = 8'd92;
8'd146:   pixel_out = 8'd93;
8'd147:   pixel_out = 8'd95;
8'd148:   pixel_out = 8'd96;
8'd149:   pixel_out = 8'd97;
8'd150:   pixel_out = 8'd98;
8'd151:   pixel_out = 8'd99;
8'd152:   pixel_out = 8'd100;
8'd153:   pixel_out = 8'd102;
8'd154:   pixel_out = 8'd103;
8'd155:   pixel_out = 8'd104;
8'd156:   pixel_out = 8'd105;
8'd157:   pixel_out = 8'd107;
8'd158:   pixel_out = 8'd108;
8'd159:   pixel_out = 8'd109;
8'd160:   pixel_out = 8'd110;
8'd161:   pixel_out = 8'd111;
8'd162:   pixel_out = 8'd113;
8'd163:   pixel_out = 8'd114;
8'd164:   pixel_out = 8'd115;
8'd165:   pixel_out = 8'd116;
8'd166:   pixel_out = 8'd118;
8'd167:   pixel_out = 8'd119;
8'd168:   pixel_out = 8'd120;
8'd169:   pixel_out = 8'd122;
8'd170:   pixel_out = 8'd123;
8'd171:   pixel_out = 8'd124;
8'd172:   pixel_out = 8'd126;
8'd173:   pixel_out = 8'd127;
8'd174:   pixel_out = 8'd128;
8'd175:   pixel_out = 8'd129;
8'd176:   pixel_out = 8'd131;
8'd177:   pixel_out = 8'd132;
8'd178:   pixel_out = 8'd134;
8'd179:   pixel_out = 8'd135;
8'd180:   pixel_out = 8'd136;
8'd181:   pixel_out = 8'd138;
8'd182:   pixel_out = 8'd139;
8'd183:   pixel_out = 8'd140;
8'd184:   pixel_out = 8'd142;
8'd185:   pixel_out = 8'd143;
8'd186:   pixel_out = 8'd145;
8'd187:   pixel_out = 8'd146;
8'd188:   pixel_out = 8'd147;
8'd189:   pixel_out = 8'd149;
8'd190:   pixel_out = 8'd150;
8'd191:   pixel_out = 8'd152;
8'd192:   pixel_out = 8'd153;
8'd193:   pixel_out = 8'd154;
8'd194:   pixel_out = 8'd156;
8'd195:   pixel_out = 8'd157;
8'd196:   pixel_out = 8'd159;
8'd197:   pixel_out = 8'd160;
8'd198:   pixel_out = 8'd162;
8'd199:   pixel_out = 8'd163;
8'd200:   pixel_out = 8'd165;
8'd201:   pixel_out = 8'd166;
8'd202:   pixel_out = 8'd168;
8'd203:   pixel_out = 8'd169;
8'd204:   pixel_out = 8'd171;
8'd205:   pixel_out = 8'd172;
8'd206:   pixel_out = 8'd174;
8'd207:   pixel_out = 8'd175;
8'd208:   pixel_out = 8'd177;
8'd209:   pixel_out = 8'd178;
8'd210:   pixel_out = 8'd180;
8'd211:   pixel_out = 8'd181;
8'd212:   pixel_out = 8'd183;
8'd213:   pixel_out = 8'd184;
8'd214:   pixel_out = 8'd186;
8'd215:   pixel_out = 8'd188;
8'd216:   pixel_out = 8'd189;
8'd217:   pixel_out = 8'd191;
8'd218:   pixel_out = 8'd192;
8'd219:   pixel_out = 8'd194;
8'd220:   pixel_out = 8'd195;
8'd221:   pixel_out = 8'd197;
8'd222:   pixel_out = 8'd199;
8'd223:   pixel_out = 8'd200;
8'd224:   pixel_out = 8'd202;
8'd225:   pixel_out = 8'd204;
8'd226:   pixel_out = 8'd205;
8'd227:   pixel_out = 8'd207;
8'd228:   pixel_out = 8'd208;
8'd229:   pixel_out = 8'd210;
8'd230:   pixel_out = 8'd212;
8'd231:   pixel_out = 8'd213;
8'd232:   pixel_out = 8'd215;
8'd233:   pixel_out = 8'd217;
8'd234:   pixel_out = 8'd218;
8'd235:   pixel_out = 8'd220;
8'd236:   pixel_out = 8'd222;
8'd237:   pixel_out = 8'd224;
8'd238:   pixel_out = 8'd225;
8'd239:   pixel_out = 8'd227;
8'd240:   pixel_out = 8'd229;
8'd241:   pixel_out = 8'd230;
8'd242:   pixel_out = 8'd232;
8'd243:   pixel_out = 8'd234;
8'd244:   pixel_out = 8'd236;
8'd245:   pixel_out = 8'd237;
8'd246:   pixel_out = 8'd239;
8'd247:   pixel_out = 8'd241;
8'd248:   pixel_out = 8'd243;
8'd249:   pixel_out = 8'd244;
8'd250:   pixel_out = 8'd246;
8'd251:   pixel_out = 8'd248;
8'd252:   pixel_out = 8'd250;
8'd253:   pixel_out = 8'd251;
8'd254:   pixel_out = 8'd253;
8'd255:   pixel_out = 8'd255;
            default: pixel_out = pixel_in; // Pass-through for other values
        endcase
    end

endmodule

