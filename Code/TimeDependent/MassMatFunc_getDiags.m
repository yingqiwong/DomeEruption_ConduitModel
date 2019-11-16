function [Diags, k] = MassMatFunc_getDiags(y,m,chibreak,coefs)
%MASSMATFUNC

%    This function was generated by the Symbolic Math Toolbox version 8.0.
%    13-Dec-2017 10:31:35

is    = m.blk.is;
p     = y(is.p:m.Nv:end);
v     = y(is.v:m.Nv:end);
phi_g = y(is.phi_g:m.Nv:end);
if m.Nv == 3, mh = m.mw_ch;
else,         mh = y(is.mw:m.Nv:end); end

t2 = mh.*p.*1.0e-6;
t3 = sqrt(t2);
t4 = mh-1.0;
t5 = 1.0./m.T;
t6 = t3.*4.133e-1;
t7 = mh.*p.*t3.*2.041e-9;
t8 = t6+t7;
t9 = p.*t4.*t8.*1.0e-12;
t10 = mh.*p.*5.599e-5;
t11 = t10-5.668e3;
t12 = mh.*p.*9.623e-6;
t13 = t3.*3.5494e2;
t21 = mh.*p.*t3.*1.5223e-6;
t14 = t12+t13-t21;
t15 = t5.*t14.*(1.0./1.0e2);
t16 = mh.*p.*1.362e-11;
t17 = t3.*1.084e-4;
t18 = t16+t17;
t19 = p.*t4.*t18.*1.0e-8;
t20 = mh.*p.*t3.*1.2439e-11;
t22 = p.*t4.*t5.*t11.*1.0e-12;
t23 = -t9+t15+t19+t20+t22-1.0;
t24 = 1.0./t23;
t25 = 1.0./m.rho_cd;
t26 = 1.0./m.rho_hd;
t27 = t15+t19+t20;
t30 = p.*1.0e-6;
t28 = chibreak-t30;
t29 = t28.^2;
t31 = t9-t22;
t32 = m.rho_l.*t24.*t25.*t31;
t35 = m.rho_l.*t24.*t26.*t27;
t33 = t32-t35+1.0;
t34 = 1.0./t33;
t36 = m.rho_l.*t24.*t34;
t37 = m.rho_s+t36;
t38 = coefs(:,2).*t29;
t43 = coefs(:,3).*t28;
t44 = coefs(:,1).*t28.*t29;
t39 = coefs(:,4)+t38-t43-t44;
t47 = t37.*t39;
t40 = m.rho_s-t47;
t41 = 1.0./t40;
t42 = phi_g-1.0;
t45 = 1.0./sqrt(t2);
t46 = mh.^2;
t48 = t4.*t18.*1.0e-8;
t49 = mh.*t3.*1.2439e-11;
t50 = mh.*9.623e-6;
t51 = mh.*t45.*1.7747e-4;
t66 = mh.*t3.*1.5223e-6;
t67 = p.*t45.*t46.*7.6115e-13;
t52 = t50+t51-t66-t67;
t53 = t5.*t52.*(1.0./1.0e2);
t54 = p.*t45.*t46.*6.2195e-18;
t55 = mh.*1.362e-11;
t56 = mh.*t45.*5.42e-11;
t57 = t55+t56;
t58 = p.*t4.*t57.*1.0e-8;
t59 = t4.*t5.*t11.*1.0e-12;
t60 = mh.*t45.*2.0665e-7;
t61 = mh.*t3.*2.041e-9;
t62 = p.*t45.*t46.*1.0205e-15;
t63 = t60+t61+t62;
t64 = mh.*p.*t4.*t5.*5.599e-17;
t65 = 1.0./t23.^2;
t69 = t4.*t8.*1.0e-12;
t70 = p.*t4.*t63.*1.0e-12;
t68 = t48+t49+t53+t54+t58+t59+t64-t69-t70;
t71 = coefs(:,3).*1.0e-6;
t72 = chibreak.*2.0e-6;
t73 = p.*2.0e-12;
t74 = t72-t73;
t75 = coefs(:,1).*t29.*3.0e-6;
t84 = coefs(:,2).*t74;
t76 = t71+t75-t84;
t77 = 1.0./t33.^2;
t78 = t48+t49+t53+t54+t58;
t79 = m.rho_l.*t24.*t26.*t78;
t80 = m.rho_l.*t24.*t25.*(t59+t64-t69-t70);
t81 = m.rho_l.*t25.*t31.*t65.*t68;
t83 = m.rho_l.*t26.*t27.*t65.*t68;
t82 = t79+t80+t81-t83;
t85 = 1.0./t40.^2;
t86 = m.rho_l.*t34.*t65.*t68;
t126 = m.rho_l.*t24.*t77.*t82;
t87 = t86-t126;
t88 = t37.*t76;
t127 = t39.*t87;
t89 = t88-t127;
t90 = p.^2;
t91 = p.*t5.*t11.*1.0e-12;
t92 = t4.*t5.*t90.*5.599e-17;
t93 = p.*t45.*2.0665e-7;
t94 = p.*t3.*2.041e-9;
t95 = mh.*t45.*t90.*1.0205e-15;
t96 = t93+t94+t95;
t97 = p.*t3.*1.2439e-11;
t98 = p.*9.623e-6;
t99 = p.*t45.*1.7747e-4;
t108 = p.*t3.*1.5223e-6;
t109 = mh.*t45.*t90.*7.6115e-13;
t100 = t98+t99-t108-t109;
t101 = t5.*t100.*(1.0./1.0e2);
t102 = p.*t18.*1.0e-8;
t103 = mh.*t45.*t90.*6.2195e-18;
t104 = p.*1.362e-11;
t105 = p.*t45.*5.42e-11;
t106 = t104+t105;
t107 = p.*t4.*t106.*1.0e-8;
t111 = p.*t8.*1.0e-12;
t112 = p.*t4.*t96.*1.0e-12;
t110 = t91+t92+t97+t101+t102+t103+t107-t111-t112;
t113 = t91+t92-t111-t112;
t114 = m.rho_l.*t24.*t25.*t113;
t115 = t97+t101+t102+t103+t107;
t116 = m.rho_l.*t24.*t26.*t115;
t117 = m.rho_l.*t25.*t31.*t65.*t110;
t121 = m.rho_l.*t26.*t27.*t65.*t110;
t118 = t114+t116+t117-t121;
t119 = m.rho_l.*t24.*t34.*t39.*t41.*t42;
t120 = phi_g+t119-1.0;
t122 = m.rho_l.*t34.*t65.*t110;
t142 = m.rho_l.*t24.*t77.*t118;
t123 = t122-t142;
t124 = t39.^2;
t125 = m.rho_l.*t24.*t34.*t41.*t42.*t76;
t128 = m.rho_l.*t24.*t34.*t39.*t42.*t85.*t89;
t129 = m.rho_l.*t24.*t39.*t41.*t42.*t77.*t82;
t145 = m.rho_l.*t34.*t39.*t41.*t42.*t65.*t68;
t130 = t125+t128+t129-t145;
t131 = 1.0./m.Rc;
t132 = 1.0./m.Rw;
t133 = 1.0./m.B;
t134 = 1.0./mh;
t135 = t4.*t133.*t134;
t136 = t135-1.0;
t137 = 1.0./t136;
t138 = m.rho_l.*t24.*t34.*t39.*t41;
t139 = t138+1.0;
t140 = mh.*p.*t5.*t132;
t141 = m.rho_l.*t34.*t39.*t41.*t42.*t65.*t110;
t143 = m.rho_l.*t24.*t34.*t42.*t85.*t123.*t124;
t148 = m.rho_l.*t24.*t39.*t41.*t42.*t77.*t118;
t144 = t141+t143-t148;
t146 = mh.*t5.*t132;
t147 = t146-t4.*t5.*t131;
t149 = p.*t5.*t131;
t150 = t149-p.*t5.*t132;
t151 = 1.0./mh.^2;
t153 = p.*t4.*t5.*t131;
t152 = t140-t153;
t154 = t133.*t134;
t155 = t154-t4.*t133.*t151;
t156 = 1.0./t136.^2;

dMsldp    = m.slv.sy(1)*(-m.rho_l.*t34.*t130-m.rho_l.*t77.*t82.*t120+m.rho_l.*m.rho_s.*t24.*t34.*t41.*t42.*t76-m.rho_l.*m.rho_s.*t34.*t39.*t41.*t42.*t65.*t68+m.rho_l.*m.rho_s.*t24.*t39.*t41.*t42.*t77.*t82+m.rho_l.*m.rho_s.*t24.*t34.*t39.*t42.*t85.*t89);
dMsldv    = m.slv.sy(2)*zeros(size(p));
dMsldphig = m.slv.sy(3)*(-m.rho_l.*t34.*t139+m.rho_l.*m.rho_s.*t24.*t34.*t39.*t41);
dMsldmh   = m.slv.sy(4)*(m.rho_l.*t34.*t144-m.rho_l.*t77.*t118.*t120+m.rho_l.*m.rho_s.*t24.*t39.*t41.*t42.*t77.*(t114+t116+t117-t121)-m.rho_l.*m.rho_s.*t34.*t39.*t41.*t42.*t65.*t110-m.rho_l.*m.rho_s.*t24.*t34.*t42.*t85.*t123.*t124);

dMhdp     = m.slv.sy(1)*(-phi_g.*t137.*t147+m.rho_l.*t24.*t27.*t34.*t130+m.rho_l.*t24.*t34.*t78.*t120-m.rho_l.*t27.*t34.*t65.*t68.*t120+m.rho_l.*t24.*t27.*t77.*t82.*t120);
dMhdv     = m.slv.sy(2)*zeros(size(p));
dMhdphig  = m.slv.sy(3)*(-t137.*t152+m.rho_l.*t24.*t27.*t34.*t139);
dMhdmh    = m.slv.sy(4)*(phi_g.*t137.*t150+phi_g.*t152.*t155.*t156-m.rho_l.*t24.*t27.*t34.*t144+m.rho_l.*t24.*t34.*t115.*t120-m.rho_l.*t27.*t34.*t65.*t110.*t120+m.rho_l.*t24.*t27.*t77.*t120.*(t114+t116+t117-t121));

dMcdp     = m.slv.sy(1)*(m.rho_l.*t24.*t34.*t120.*(t59+t64-t69-t70)-m.rho_l.*t24.*t31.*t34.*t130+phi_g.*t4.*t133.*t134.*t137.*t147+m.rho_l.*t31.*t34.*t65.*t68.*t120-m.rho_l.*t24.*t31.*t77.*t82.*t120);
dMcdv     = m.slv.sy(2)*zeros(size(p));
dMcdphig  = m.slv.sy(3)*(-m.rho_l.*t24.*t31.*t34.*t139+t4.*t133.*t134.*t137.*t152);
dMcdmh    = m.slv.sy(4)*(m.rho_l.*t24.*t34.*t120.*(t91+t92-t111-t112)+phi_g.*t133.*t134.*t137.*t152+m.rho_l.*t24.*t31.*t34.*t144-phi_g.*t4.*t133.*t134.*t137.*t150-phi_g.*t4.*t133.*t137.*t151.*t152+m.rho_l.*t31.*t34.*t65.*t110.*t120-m.rho_l.*t24.*t31.*t77.*t118.*t120-phi_g.*t4.*t133.*t134.*t152.*t155.*t156);


if m.Nv == 3
    
    MainDiag = zeros(m.Nv*m.Nz,1);
    MainDiag(1:m.Nv:end) = dMsldp;
    MainDiag(3:m.Nv:end) = dMhdphig;
    
    Pos2Diag = zeros(m.Nv*m.Nz,1);
    Pos2Diag(3:m.Nv:end) = dMsldphig;
    
    Neg2Diag = zeros(m.Nv*m.Nz,1);
    Neg2Diag(1:m.Nv:end) = dMhdp;
    
    Diags = [Neg2Diag, MainDiag, Pos2Diag];
    k     = [-2,        0,          2];
    
elseif m.Nv ==4
    
    
    MainDiag = zeros(m.Nv*m.Nz,1);
    MainDiag(1:m.Nv:end) = dMsldp;
    MainDiag(3:m.Nv:end) = dMhdphig;
    MainDiag(4:m.Nv:end) = dMcdmh;
    
    Pos1Diag = zeros(m.Nv*m.Nz,1);
    Pos1Diag(4:m.Nv:end) = dMhdmh;
    
    Pos2Diag = zeros(m.Nv*m.Nz,1);
    Pos2Diag(3:m.Nv:end) = dMsldphig;
    
    Pos3Diag = zeros(m.Nv*m.Nz,1);
    Pos3Diag(4:m.Nv:end) = dMsldmh;
    
    Neg1Diag = zeros(m.Nv*m.Nz,1);
    Neg1Diag(3:m.Nv:end) = dMcdphig;
    
    Neg2Diag = zeros(m.Nv*m.Nz,1);
    Neg2Diag(1:m.Nv:end) = dMhdp;
    
    Neg3Diag = zeros(m.Nv*m.Nz,1);
    Neg3Diag(1:m.Nv:end) = dMcdp;
    
    Diags = [Neg3Diag, Neg2Diag, Neg1Diag, MainDiag, ...
             Pos1Diag, Pos2Diag, Pos3Diag];
    k = -3:3;
    
end
end