$TTL	604800	
;$ORIGIN joran-trompet.sb.uclllabs.be
@	IN	SOA	joran-trompet.sb.uclllabs.be. root.joran-trompet.sb.uclllabs.be. (
			     79		; Serial
			      1		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL

       IN	  NS          ns.joran-trompet.sb.uclllabs.be.
       IN	  NS          ns1.uclllabs.be.
       IN	  NS          ns2.uclllabs.be.
       IN         CAA         0 issue "letsencrypt.org"
       IN         CAA         0 iodef "mailto:joran.trompet@student.ucll.be"


_acme-challenge.joran-trompet.sb.uclllabs.be.	IN TXT "gXG2tw6Jan7Vkx79M6bWSeAmqt2xZy3R0kg5NR4A5Nk"
_acme-challenge.supersecure.joran-trompet.sb.uclllabs.be.	IN TXT "bVwgkDCFsDCzHTiywdJJj43wr_57n_GS1ivniArlICU"


ns		IN	A	193.191.177.158
@		IN	A	193.191.177.158
www		IN	A	193.191.177.158
www1		IN	CNAME	www
www2		IN	A	193.191.177.158
test		IN	A	193.191.177.254
secure		IN	A	193.191.177.158
supersecure	IN	A	193.191.177.158

mx		IN	A	193.191.177.158
@		IN	MX	10 mx.joran-trompet.sb.uclllabs.be.
