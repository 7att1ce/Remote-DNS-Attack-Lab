;
; 攻击主机的区域文件
;
$TTL 3D
@    IN    SOA    ns.example.com. admin.example.com. (
        2008111001
        8H
        2H
        4W
        1D)

@    IN    NS    ns.dnslabattacker.net.
@    IN    MX    10 mail.example.com.

www    IN    A    1.2.3.4
mail    IN    A    1.2.3.2
*.example.com.    IN    A 1.2.3.100
;
; 区域配置，位于/etc/bind/named.conf.option
;
; zone “example.com” {
;     type master;
;     file “/etc/bind/example.com.db”;
; };
;
