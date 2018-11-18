$TTL	604800	
;$ORIGIN joran-trompet.sb.uclllabs.be
@	IN	SOA	joran-trompet.sb.uclllabs.be. root.joran-trompet.sb.uclllabs.be. (
			     63		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL

       IN	  NS          ns.joran-trompet.sb.uclllabs.be.
       IN	  NS          ns1.uclllabs.be.
       IN	  NS          ns2.uclllabs.be.
       IN         CAA         0 issue "letsencrypt.org"
       IN         CAA         0 iodef "mailto:joran.trompet@student.ucll.be"

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
